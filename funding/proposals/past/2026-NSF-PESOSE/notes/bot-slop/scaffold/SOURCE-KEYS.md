# Source keys

**You should not need this file.** As of the 2026-08-04 revision, `#src()` resolves each
key to the source's **full name** in the compiled PDF, and page 1 of the compiled document
carries a legend page listing every marker and every source. This file is the plain-text
mirror of that legend.

| Key in `.typ` | Renders in the PDF as | Status | Path (relative to `2026-NSF-PESOSE/`) |
|---|---|---|---|
| `SOL` | NSF 26-506 solicitation | Official — authoritative | `official-pdfs/NSF 26-506_....pdf` |
| `BUD` | PESOSE website update, 9 Mar 2026 — I-Corps + budget rules | Official — **web only, not in the PDF** | `notes/bot-slop/official-sources/update-2026-03-09-icorps-and-budget.md` |
| `DECK` | NSF PESOSE slide deck (Florence Rabanal, Jul 2026) | Official | `official-pdfs/downloaded/NSF_PESOSE_slide_deck_2026-07.pdf` |
| `DCL` | Dear Colleague Letter NSF 26-015 — AI agent protocol ecosystems | Official | `notes/bot-slop/official-sources/nsf26-015-dcl-ai-agent-ecosystems.md` |
| `W1` | Webinar 1 — "Introduction to NSF PESOSE", 8 Jul 2026 | ASR transcript + AI analysis | `.../2026-07-08-Introduction to NSF PESOSE program_outputs/` |
| `W2` | Webinar 2 — "NSF PESOSE Q&A Discussion", 24 Jul 2026 | ASR transcript + AI analysis | `.../2026-07-24-NSF PESOSE Q&A Discussion Webinar_outputs/` |
| `PAPPG` | NSF Proposal & Award Policies & Procedures Guide (NSF 24-1) | Official — authoritative | `official-pdfs/nsf24_1-pappg-proposal-and-award-policies.pdf` |
| `OSSF` | OpenSSF Best Practices criteria | Third-party, cited by the solicitation | `official-pdfs/downloaded/OpenSSF_best_practices_criteria.html` |

W1/W2 timestamps (e.g. `@ 00:36:29`) index the `_transcript_w_timestamps.md` file in that
folder, so any quote can be checked against the audio.

## Caveats

**The webinar transcripts are machine-generated.** The speech-to-text renders "PESOSE" as
PSOS, PESOS, and PISOS, and "Safe-OSE" as "SafeOSC" — visibly lossy. They are cited because
they carry material found in no written NSF source. Check anything load-bearing against the
audio. **Where a webinar and the solicitation disagree, the solicitation wins.**

**The 9 Mar 2026 budget page is not in the solicitation PDF.** Verified by string search:
`173.33`, `de minimis`, the 75th-percentile BLS rule, the $30,000 I-Corps cap, and the 3–5
person team requirement appear nowhere in the PDF. Budgeting from the PDF alone produces a
non-compliant budget.

Video sources:
- W1 — https://www.youtube.com/watch?v=HidXRi7Wa3g
- W2 — https://www.youtube.com/watch?v=wpuK5eV4t8k
