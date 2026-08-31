#!/usr/bin/env bash
# =============================================================================
# build.sh — compile every proposal section and run compliance checks.
#
#   ./build.sh          submission build (clean PDFs into out/)
#   ./build.sh draft    draft build (page counters, notes, budget markers)
#
# NSF uploads each section as its own separate PDF, so this produces one PDF
# per section rather than a single combined document.
#
# The checks are the point. A proposal can be returned without review for
# exceeding a page limit or violating font and margin rules (PAPPG IV.B.6), and
# nobody notices at 4pm on deadline day.
# =============================================================================

set -uo pipefail

MODE="${1:-final}"
OUT="out"
FAIL=0

# --root . : typst otherwise sandboxes reads to the input file's parent
# directory, which breaks every `../template/` import. Run from repo root.
# Draft mode is the template's default; the final build passes draft=false
# explicitly so a submission PDF can never contain draft artifacts.
if [ "$MODE" = "draft" ]; then
  TYPST_ARGS=(--root . --input draft=true)
  echo ">>> DRAFT build — do NOT submit these files"
else
  TYPST_ARGS=(--root . --input draft=false)
  echo ">>> SUBMISSION build"
fi

# Find a Typst binary. Plain `typst` covers macOS/Linux/Windows shells; under
# WSL only the Windows install is visible, via interop. Override with
# TYPST=/path/to/typst ./build.sh if yours lives elsewhere.
if command -v typst >/dev/null 2>&1; then
  TYPST=typst
elif command -v typst.exe >/dev/null 2>&1; then
  TYPST=typst.exe
elif [ -x "/mnt/c/Users/$USER/.cargo/bin/typst.exe" ]; then
  TYPST="/mnt/c/Users/$USER/.cargo/bin/typst.exe"
else
  echo ">>> typst not found — install it or set TYPST=/path/to/typst"
  exit 1
fi

mkdir -p "$OUT"

# -----------------------------------------------------------------------------
# Section table: source path | output name | page limit (0 = no limit)
#
# Output names follow the section names Research.gov uses, so the upload step
# is unambiguous. Add or remove rows as your package firms up. Rows for files
# that do not exist yet are skipped with a note, so a row doubles as a
# reminder of what is still missing from the package.
# -----------------------------------------------------------------------------
SECTIONS=(
  "submission-components/project-summary.typ|ProjectSummary|1"
  "02-project-description/main.typ|ProjectDescription|7"
  "03-references-cited/main.typ|ReferencesCited|0"
  "submission-components/budget-justification.typ|BudgetJustification|5"
  "submission-components/facilities-equipment-other-resources.typ|FacilitiesEquipmentOtherResources|0"
  "submission-components/personnel-collaborators-list.typ|ListOfProjectPersonnel|0"
)

# Per-person Synergistic Activities are copy-per-instance files (the unprefixed
# synergistic-activities.typ is the copy-me template, not a build target).
# Anything matching these globs gets built too.
for f in submission-components/synergistic-activities-*.typ; do
  [ -e "$f" ] || continue
  base=$(basename "$f" .typ)
  base="${base#synergistic-activities-}"
  SECTIONS+=("$f|SynergisticActivities-${base}|1")
done

for f in submission-components/letters/*.typ; do
  [ -e "$f" ] || continue
  case "$f" in *TEMPLATE*) continue ;; esac
  base=$(basename "$f" .typ)
  SECTIONS+=("$f|LetterOfCollaboration-${base}|2")
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

echo
for row in "${SECTIONS[@]}"; do
  IFS='|' read -r src name limit <<< "$row"

  if [ ! -f "$src" ]; then
    echo "  skip     $src (not present)"
    continue
  fi

  pdf="$OUT/${name}.pdf"
  if ! "$TYPST" compile "${TYPST_ARGS[@]}" "$src" "$pdf" 2>"$OUT/.err"; then
    echo "  FAIL     $src"
    sed 's/^/             /' "$OUT/.err"
    FAIL=1
    continue
  fi

  pages=$(page_count "$pdf")
  if [ -z "$pages" ]; then
    echo "  built    ${name}.pdf (install poppler-utils or qpdf to check page count)"
  elif [ "$limit" != "0" ] && [ "$pages" -gt "$limit" ]; then
    echo "  OVER     ${name}.pdf — ${pages} pages, limit ${limit}"
    FAIL=1
  else
    shown="$limit"; [ "$limit" = "0" ] && shown="no limit"
    echo "  built    ${name}.pdf — ${pages} pages (limit: ${shown})"
  fi
done
rm -f "$OUT/.err"

# -----------------------------------------------------------------------------
# CHECK: no URLs in the Project Description.
#
# PAPPG II.D.2.d(ii) bars them outright: reviewers are under no obligation to
# visit a site, sites can change between submission and review, and a URL can
# be used to circumvent the page limit. Typst comments (//) never render, so
# they are stripped before checking to avoid false positives.
# -----------------------------------------------------------------------------
echo
echo ">>> checking Project Description for URLs"
hits=$(find 02-project-description -name '*.typ' -print0 \
  | xargs -0 grep -nE 'https?://' 2>/dev/null \
  | grep -vE ':[[:space:]]*//' || true)
if [ -n "$hits" ]; then
  echo "  URLs found in the Project Description — PAPPG II.D.2.d(ii) forbids this."
  echo "  Move them to lib/refs.typ and cite with c(\"key\")."
  echo "$hits" | sed 's/^/    /'
  FAIL=1
else
  echo "  clean"
fi

# -----------------------------------------------------------------------------
# CHECK: fonts actually embedded and PAPPG-permitted.
#
# Typst substitutes silently for a missing font. If you switched BODY_FONT to
# Times New Roman and it is not installed, you will not be told — you will just
# ship the wrong font. This catches it.
# -----------------------------------------------------------------------------
if command -v pdffonts >/dev/null 2>&1 && [ -f "$OUT/ProjectDescription.pdf" ]; then
  echo
  echo ">>> fonts in ProjectDescription.pdf (must be Arial / Courier New /"
  echo "    Palatino Linotype / Times New Roman / Computer Modern family)"
  pdffonts "$OUT/ProjectDescription.pdf" | sed 's/^/    /'
fi

# -----------------------------------------------------------------------------
# CHECK: leftover TODOs. Informational, never fatal.
# -----------------------------------------------------------------------------
echo
todo=$(grep -rn 'TODO' --include='*.typ' . 2>/dev/null | wc -l | tr -d ' ')
echo ">>> ${todo} TODO markers remaining"

echo
if [ "$FAIL" -ne 0 ]; then
  echo ">>> BUILD HAS COMPLIANCE FAILURES — see above"
  exit 1
fi
if [ "$MODE" = "draft" ]; then
  echo ">>> draft build OK — rerun without 'draft' before submitting"
else
  echo ">>> submission build OK — PDFs in $OUT/"
fi
