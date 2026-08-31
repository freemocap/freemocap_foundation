#!/usr/bin/env bash
# =============================================================================
# build.sh — compile every proposal section and run compliance checks.
#
#   ./build.sh          compile every section into out/
#
# NSF uploads each section as its own separate PDF, so this produces one PDF
# per section rather than a single combined document.
#
# The checks are the point. A proposal can be returned without review for
# exceeding a page limit or violating font and margin rules (PAPPG IV.B.6), and
# nobody notices at 4pm on deadline day.
# =============================================================================

set -uo pipefail

OUT="out"
FAIL=0
WARN=0
START_TS=$(date +%s)

# --- colour, only when attached to a terminal -------------------------------
if [ -t 1 ]; then
  C_RST=$'\033[0m'; C_B=$'\033[1m'; C_DIM=$'\033[2m'
  C_RED=$'\033[31m'; C_GRN=$'\033[32m'; C_YEL=$'\033[33m'; C_CYA=$'\033[36m'
else
  C_RST=''; C_B=''; C_DIM=''; C_RED=''; C_GRN=''; C_YEL=''; C_CYA=''
fi

rule()  { printf '%s\n' "${C_DIM}------------------------------------------------------------------------${C_RST}"; }
head1() { echo; printf '%s\n' "${C_B}${C_CYA}== $* ${C_RST}"; rule; }
ok()    { printf '  %sOK  %s %s\n'   "$C_GRN" "$C_RST" "$*"; }
info()  { printf '  %s--  %s %s\n'   "$C_DIM" "$C_RST" "$*"; }
warn()  { printf '  %sWARN%s %s\n'   "$C_YEL" "$C_RST" "$*"; WARN=$((WARN+1)); }
bad()   { printf '  %sFAIL%s %s\n'   "$C_RED" "$C_RST" "$*"; FAIL=1; }

# =============================================================================
head1 "ENVIRONMENT"

# Find a Typst binary. Plain `typst` covers macOS/Linux/Windows shells; under
# WSL only the Windows install is visible, via interop. Override with
# TYPST=/path/to/typst ./build.sh if yours lives elsewhere.
if [ -n "${TYPST:-}" ] && command -v "$TYPST" >/dev/null 2>&1; then
  :
elif command -v typst >/dev/null 2>&1; then
  TYPST=typst
elif command -v typst.exe >/dev/null 2>&1; then
  TYPST=typst.exe
elif [ -x "/mnt/c/Users/$USER/.cargo/bin/typst.exe" ]; then
  TYPST="/mnt/c/Users/$USER/.cargo/bin/typst.exe"
else
  bad "typst not found — install it or set TYPST=/path/to/typst"
  exit 1
fi

info "date        $(date '+%Y-%m-%d %H:%M:%S %Z')"
info "working dir $(pwd)"
info "typst       $($TYPST --version 2>/dev/null || echo '?')  [$TYPST]"
info "output dir  $OUT/"
for tool in pdfinfo pdffonts pdftotext; do
  if command -v "$tool" >/dev/null 2>&1; then
    info "$(printf '%-11s' "$tool") present"
  else
    warn "$(printf '%-11s' "$tool") MISSING — some checks will be skipped (install poppler-utils)"
  fi
done

# --root . : typst otherwise sandboxes reads to the input file's parent
# directory, which breaks every `../template/` import. Run from repo root.
TYPST_ARGS=(--root .)

# =============================================================================
# DRAFT state. This is the single most dangerous setting in the package: a
# draft build puts a footer in the page margin, which PAPPG II.C.2.c forbids
# for proposer-supplied content, and renders internal #note[] annotations.
# =============================================================================
head1 "DRAFT FLAG"
DRAFT_LINE=$(grep -E '^#let DRAFT' template/nsf.typ 2>/dev/null || true)
info "template/nsf.typ: ${DRAFT_LINE:-<not found>}"
case "$DRAFT_LINE" in
  *"= false"*)
    ok "DRAFT = false — output is submission-clean" ;;
  *"= true"*)
    bad "DRAFT = true — PDFs will contain draft footers and #note[] text."
    echo "         Set '#let DRAFT = false' in template/nsf.typ before submitting." ;;
  *)
    warn "could not determine DRAFT state — inspect template/nsf.typ by hand" ;;
esac

mkdir -p "$OUT"

# -----------------------------------------------------------------------------
# Section table: source path | output name | page limit (0 = no limit)
#
# Output names follow the section names Research.gov uses, so the upload step
# is unambiguous. Add or remove rows as your package firms up. Rows for files
# that do not exist yet are reported as MISSING, so a row doubles as a
# reminder of what is still absent from the package.
# -----------------------------------------------------------------------------
SECTIONS=(
  "submission-components/project-summary.typ|ProjectSummary|1"
  "02-project-description/main.typ|ProjectDescription|7"
  "03-references-cited/main.typ|ReferencesCited|0"
  "submission-components/budget-justification.typ|BudgetJustification|5"
  "submission-components/facilities-equipment-other-resources.typ|FacilitiesEquipmentOtherResources|0"
  "submission-components/personnel-collaborators-list.typ|ListOfProjectPersonnel|0"
  "submission-components/data-management-sharing-plan.typ|DataManagementAndSharingPlan|2"
  "submission-components/other-personnel-biographical-information.typ|OtherPersonnelBiographicalInformation|0"
)

# Per-person Synergistic Activities are copy-per-instance files (the unprefixed
# synergistic-activities.typ is the copy-me template, not a build target).
for f in submission-components/synergistic-activities-*.typ; do
  [ -e "$f" ] || continue
  base=$(basename "$f" .typ); base="${base#synergistic-activities-}"
  SECTIONS+=("$f|SynergisticActivities-${base}|1")
done

LETTER_COUNT=0
for f in submission-components/letters/*.typ; do
  [ -e "$f" ] || continue
  case "$f" in *TEMPLATE*) continue ;; esac
  base=$(basename "$f" .typ)
  SECTIONS+=("$f|LetterOfCollaboration-${base}|2")
  LETTER_COUNT=$((LETTER_COUNT+1))
done

page_count() {
  if command -v pdfinfo >/dev/null 2>&1; then
    pdfinfo "$1" 2>/dev/null | awk '/^Pages:/ {print $2}'
  elif command -v qpdf >/dev/null 2>&1; then
    qpdf --show-npages "$1" 2>/dev/null
  else
    echo ""
  fi
}

# =============================================================================
head1 "COMPILE  (${#SECTIONS[@]} sections)"
BUILT=0; MISSING=0
for row in "${SECTIONS[@]}"; do
  IFS='|' read -r src name limit <<< "$row"
  pdf="$OUT/${name}.pdf"
  shown="$limit"; [ "$limit" = "0" ] && shown="no limit"

  if [ ! -f "$src" ]; then
    warn "MISSING  $name"
    echo "           expected source: $src"
    MISSING=$((MISSING+1))
    continue
  fi

  printf '  %s..  %s %s\n' "$C_DIM" "$C_RST" "$src  ->  $pdf"
  if ! "$TYPST" compile "${TYPST_ARGS[@]}" "$src" "$pdf" 2>"$OUT/.err"; then
    bad "COMPILE ERROR  $src"
    sed 's/^/           /' "$OUT/.err"
    continue
  fi

  pages=$(page_count "$pdf")
  bytes=$(wc -c < "$pdf" 2>/dev/null | tr -d ' ')
  kb=$(( (bytes + 512) / 1024 ))

  if [ -z "$pages" ]; then
    ok "$name — ${kb}KB (page count unavailable; limit ${shown})"
  elif [ "$limit" != "0" ] && [ "$pages" -gt "$limit" ]; then
    bad "$name — ${pages} pages, LIMIT ${limit}  (${kb}KB)"
  else
    ok "$name — ${pages} pages, limit ${shown}  (${kb}KB)"
  fi
  BUILT=$((BUILT+1))
done
rm -f "$OUT/.err"
info "built ${BUILT}, missing ${MISSING}"

# =============================================================================
# CHECK: did any draft artifact survive into a built PDF?
# =============================================================================
head1 "DRAFT ARTIFACTS IN OUTPUT"
if command -v pdftotext >/dev/null 2>&1; then
  dirty=0
  for pdf in "$OUT"/*.pdf; do
    [ -e "$pdf" ] || continue
    n=$(pdftotext "$pdf" - 2>/dev/null | grep -c 'DRAFT' || true)
    if [ "${n:-0}" -gt 0 ]; then
      bad "$(basename "$pdf") contains ${n} DRAFT marker(s) — do not submit"
      dirty=1
    fi
  done
  [ "$dirty" -eq 0 ] && ok "no DRAFT markers in any built PDF"
else
  warn "pdftotext missing — cannot scan output for draft artifacts"
fi

# =============================================================================
# CHECK: letters of collaboration. NSF 26-506 requires a MINIMUM OF THREE and
# a maximum of five, each no more than two pages.
# =============================================================================
head1 "LETTERS OF COLLABORATION"
info "found ${LETTER_COUNT} in submission-components/letters/"
if [ "$LETTER_COUNT" -lt 3 ]; then
  warn "NSF 26-506 requires a MINIMUM OF 3 (max 5). Short by $((3 - LETTER_COUNT))."
  echo "           These are required Other Supplementary Documents. A package"
  echo "           without them is not compliant."
elif [ "$LETTER_COUNT" -gt 5 ]; then
  bad "NSF 26-506 allows a MAXIMUM of 5; found ${LETTER_COUNT}."
else
  ok "${LETTER_COUNT} letters — within the required 3-5"
fi

# =============================================================================
# CHECK: no URLs in the Project Description.
#
# PAPPG II.D.2.d(ii) bars them outright: reviewers are under no obligation to
# visit a site, sites can change between submission and review, and a URL can
# be used to circumvent the page limit. Typst comments (//) never render, so
# they are stripped before checking to avoid false positives.
# =============================================================================
head1 "URLs IN PROJECT DESCRIPTION  (PAPPG II.D.2.d(ii))"
hits=$(find 02-project-description -name '*.typ' -print0 2>/dev/null \
  | xargs -0 grep -nE 'https?://' 2>/dev/null \
  | grep -vE ':[[:space:]]*//' || true)
if [ -n "$hits" ]; then
  bad "URLs found in the Project Description — PAPPG forbids this."
  echo "           Move them to template/refs.typ and cite with c(\"key\")."
  echo "$hits" | sed 's/^/             /'
else
  ok "clean — no URLs in narrative text"
fi

# =============================================================================
# CHECK: fonts actually embedded and PAPPG-permitted, on EVERY built PDF.
#
# Typst substitutes silently for a missing font. If you switched BODY_FONT to
# Times New Roman and it is not installed, you will not be told — you will just
# ship the wrong font.
# =============================================================================
head1 "EMBEDDED FONTS  (PAPPG II.C.2.a)"
echo "  Permitted: Arial, Courier New, Palatino Linotype, Times New Roman,"
echo "             Computer Modern family."
if command -v pdffonts >/dev/null 2>&1; then
  # Only sections WE build. Third-party PDFs dropped into out/ (letters of
  # collaboration, authored by external people in Word or Google Docs) are
  # exempt: NSF 26-506 states PESOSE letters "do not have to conform to the
  # standard format specified in the PAPPG."
  for pdf in "$OUT"/*.pdf; do
    [ -e "$pdf" ] || continue
    case "$(basename "$pdf")" in
      _*) printf '  %s--  %s %-40s %sskipped (third-party letter, exempt)%s\n' \
            "$C_DIM" "$C_RST" "$(basename "$pdf")" "$C_DIM" "$C_RST"; continue ;;
    esac
    fonts=$(pdffonts "$pdf" 2>/dev/null | awk 'NR>2 {print $1}' \
            | sed 's/^[A-Z]\{6\}+//' | sort -u)
    printf '  %s--  %s %s\n' "$C_DIM" "$C_RST" "$(basename "$pdf")"
    # Test each font on its own. Testing the joined list lets a permitted font
    # mask a non-permitted one sitting beside it.
    printf '%s\n' "$fonts" | while read -r fnt; do
      [ -z "$fnt" ] && continue
      case "$fnt" in
        NewCM*|CMU*|*Arial*|*Courier*New*|*Palatino*|*Times*New*Roman*)
          printf '           %sok%s   %s\n' "$C_GRN" "$C_RST" "$fnt" ;;
        *)
          printf '           %sBAD%s  %s  <- not a PAPPG-permitted font\n' "$C_RED" "$C_RST" "$fnt"
          echo "BADFONT" >> "$OUT/.fontflag" ;;
      esac
    done
  done
  if [ -f "$OUT/.fontflag" ]; then
    bad "non-permitted font(s) embedded — PAPPG II.C.2.a allows only Arial,"
    echo "           Courier New, Palatino Linotype, Times New Roman, or the"
    echo "           Computer Modern family. Find the element using it (a raw/code"
    echo "           block or a figure is the usual culprit) and restyle it."
    rm -f "$OUT/.fontflag"
  else
    ok "every embedded font is PAPPG-permitted"
  fi
else
  warn "pdffonts missing — cannot verify embedded fonts"
fi

# =============================================================================
# CHECK: stray PDFs outside out/ that shadow a build target. These are how the
# wrong file gets uploaded: an old Tinymist preview sitting next to its source.
# =============================================================================
head1 "STRAY PDFs OUTSIDE $OUT/"
strays=$(find . -name '*.pdf' -not -path "./$OUT/*" -not -path './.git/*' 2>/dev/null | sort || true)
if [ -n "$strays" ]; then
  warn "PDFs exist outside $OUT/. Upload only from $OUT/ — these are stale copies:"
  echo "$strays" | while read -r f; do
    [ -z "$f" ] && continue
    printf '             %s  %s\n' "$(date -r "$f" '+%Y-%m-%d %H:%M' 2>/dev/null || echo '?')" "$f"
  done
else
  ok "none — every PDF lives in $OUT/"
fi

# =============================================================================
# CHECK: output freshness. A PDF older than its source is stale.
# =============================================================================
head1 "FRESHNESS"
stale=0
for row in "${SECTIONS[@]}"; do
  IFS='|' read -r src name limit <<< "$row"
  pdf="$OUT/${name}.pdf"
  [ -f "$src" ] && [ -f "$pdf" ] || continue
  if [ "$src" -nt "$pdf" ] || [ template/nsf.typ -nt "$pdf" ] || [ template/refs.typ -nt "$pdf" ]; then
    warn "$name.pdf is older than its source or the template — rerun"
    stale=1
  fi
done
[ "$stale" -eq 0 ] && ok "every built PDF is newer than its inputs"

# =============================================================================
# CHECK: leftover TODOs. Informational, never fatal.
# =============================================================================
head1 "TODO MARKERS"
todos=$(grep -rn 'TODO' --include='*.typ' . 2>/dev/null || true)
if [ -n "$todos" ]; then
  n=$(printf '%s\n' "$todos" | wc -l | tr -d ' ')
  warn "${n} TODO marker(s) still in the source:"
  printf '%s\n' "$todos" | sed 's/^/             /'
else
  ok "no TODO markers"
fi

# =============================================================================
head1 "SUMMARY"
ELAPSED=$(( $(date +%s) - START_TS ))
info "sections built   ${BUILT}"
info "sections missing ${MISSING}"
info "letters found    ${LETTER_COUNT}  (need 3-5)"
info "warnings         ${WARN}"
info "elapsed          ${ELAPSED}s"
echo
if [ "$FAIL" -ne 0 ]; then
  printf '%s\n' "${C_B}${C_RED}>>> BUILD HAS COMPLIANCE FAILURES — see FAIL lines above${C_RST}"
  exit 1
fi
if [ "$WARN" -ne 0 ]; then
  printf '%s\n' "${C_B}${C_YEL}>>> built with ${WARN} warning(s) — PDFs in $OUT/${C_RST}"
  printf '%s\n' "    Review every WARN above before uploading."
  exit 0
fi
printf '%s\n' "${C_B}${C_GRN}>>> ALL CHECKS PASSED — PDFs in $OUT/${C_RST}"
