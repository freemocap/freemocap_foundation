#!/usr/bin/env bash
# Downloads official PESOSE source documents into official-pdfs/
#
# BOT-GENERATED 2026-08-04. The bot CANNOT download binaries itself — its web tool
# returns extracted text only, never bytes. So this is a script for Jon to run.
#
# Usage:
#   cd .../2026-NSF-PESOSE
#   bash notes/bot-slop/download-official-docs.sh
#
# Writes to official-pdfs/downloaded/ (a subfolder, so it can't clobber Jon's curated files).

set -uo pipefail
cd "$(dirname "$0")/../.." || exit 1
OUT="official-pdfs/downloaded"
mkdir -p "$OUT"

get () {  # get <url> <filename>
  if [ -f "$OUT/$2" ]; then echo "  skip (exists)  $2"; return; fi
  echo "  fetching       $2"
  curl -fsSL --retry 2 -o "$OUT/$2" "$1" \
    || echo "  !! FAILED     $2  <- $1"
}

echo "== Real PDFs (direct download) =="

# Official PESOSE slide deck, linked from the 2026-07-09 Resources update. VERIFIED to exist.
get "https://nsf-gov-resources.nsf.gov/files/NSF_PESOSE_PPT_508c.pdf" \
    "NSF_PESOSE_slide_deck_2026-07.pdf"

# PAPPG 24-1 full PDF. Jon already has this one; here for completeness/checksum.
get "https://nsf-gov-resources.nsf.gov/files/nsf24_1.pdf" \
    "nsf24_1_PAPPG.pdf"

# NSF Grant General Conditions (GC-1), May 2026 revision.
get "https://nsf-gov-resources.nsf.gov/files/gc1-may26.pdf" \
    "NSF_GC-1_grant_general_conditions_may2026.pdf"

# CISA/NSA ESF "Securing the Software Supply Chain: Developers".
# EXPLICITLY cited in NSF 26-506 Section V.A as recommended reading. UNVERIFIED URL
# (bot's fetch timed out) — if this 404s, search: ESF Securing the Software Supply Chain Developers
get "https://media.defense.gov/2022/Sep/01/2003068942/-1/-1/0/ESF_SECURING_THE_SOFTWARE_SUPPLY_CHAIN_DEVELOPERS.PDF" \
    "CISA-NSA_securing_software_supply_chain_developers.pdf"

echo
echo "== HTML-only sources (saved as .html; print-to-PDF in a browser if you want PDFs) =="
echo "   No PDF exists on nsf.gov for any of these — bot checked the usual"
echo "   /pubs/2026/nsf26015/nsf26015.pdf paths and they are empty."
echo

geth () { if [ -f "$OUT/$2" ]; then echo "  skip (exists)  $2"; return; fi
          echo "  fetching       $2"
          curl -fsSL --retry 2 -o "$OUT/$2" "$1" || echo "  !! FAILED     $2  <- $1"; }

# DCL NSF 26-015 — AI Agent Protocol Ecosystems. Web-only.
geth "https://www.nsf.gov/funding/opportunities/dcl-advancing-artificial-intelligence-ai-agent-ecosystems" \
     "NSF26-015_DCL_ai_agent_ecosystems.html"

# *** MOST IMPORTANT NON-PDF *** — the budget + I-Corps rules that are NOT in the
# solicitation PDF. 75th-percentile BLS caps, SOC codes, 173.33 hrs/mo, 15% de minimis,
# $30k I-Corps line, 3-5 person team. Build the budget wrong without this.
geth "https://www.nsf.gov/funding/opportunities/pesose-pathways-enable-secure-open-source-ecosystems/updates/120507" \
     "PESOSE_update_2026-03-09_icorps_and_budget.html"

geth "https://www.nsf.gov/funding/opportunities/pesose-pathways-enable-secure-open-source-ecosystems/updates/120812" \
     "PESOSE_update_2026-07-09_resources.html"

geth "https://www.nsf.gov/funding/opportunities/pesose-pathways-enable-secure-open-source-ecosystems/nsf26-506/solicitation" \
     "NSF26-506_solicitation.html"

# PAPPG 24-1 amendments. 24-1 is still the base (NSF deferred 26-1 after EO 14332),
# but these supplements take precedence over it.
geth "https://www.nsf.gov/policies/document/pappg24-1-supplement-1" \
     "PAPPG_24-1_supplement_1.html"
geth "https://www.nsf.gov/policies/document/pappg24-1-supplement-2" \
     "PAPPG_24-1_supplement_2.html"

# Predecessor solicitations — PESOSE is the merger of these two. Needed for a real diff.
geth "https://www.nsf.gov/funding/opportunities/pose-pathways-enable-open-source-ecosystems/505982/nsf24-606/solicitation" \
     "NSF24-606_POSE_solicitation_PREDECESSOR.html"
geth "https://www.nsf.gov/funding/opportunities/safe-ose-safety-security-privacy-open-source-ecosystems/506343/nsf24-608/solicitation" \
     "NSF24-608_SafeOSE_solicitation_PREDECESSOR.html"

# OpenSSF Best Practices criteria — cited in NSF 26-506 Section V.A.
geth "https://www.bestpractices.dev/en/criteria" \
     "OpenSSF_best_practices_criteria.html"

echo
echo "Done. Files in $OUT/"
echo
echo "NOT AUTOMATED — needs a human:"
echo "  * 2026-07-09 webinar recording: https://www.youtube.com/embed/HidXRi7Wa3g"
echo "  * 2026-08-11 Proposal Preparation Webinar (registration):"
echo "      https://www.nsf.gov/events/nsf-pesose/2026-08-11"
echo "  * I-Corps participation fee — not posted anywhere findable. Email PESOSE@nsf.gov."
echo "  * Prior awards under program element 211Y00:"
echo "      https://www.nsf.gov/awardsearch/search-results?ProgEleCode=211Y00&BooleanElement=Any&BooleanRef=Any&ActiveAwards=true"
