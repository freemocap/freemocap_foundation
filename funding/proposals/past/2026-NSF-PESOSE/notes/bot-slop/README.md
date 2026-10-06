# bot-slop

Machine-generated scaffolding for the 2026 NSF PESOSE Track 1 proposal.
Everything here is unverified bot output. Nothing here is a work product.

Created 2026-08-04.

## Files

| File | What it is |
|---|---|
| `AGENT-INSTRUCTIONS.md` | Standing rules the bot operates under. Read this first. |
| `official-sources/` | Scraped copies of every official NSF source, with provenance headers. `official-sources/README.md` is the index. |
| `track1-compliance-checklist.md` | Every Track 1 requirement, traced to its source. |
| `pose-to-pesose-changes.md` | Partial diff of the old POSE attempt vs. this solicitation. |
| `open-questions.md` | What the bot could not determine and who has to answer it. |

## The three things that matter today

1. **Deadline is Tuesday, September 1, 2026, 5 p.m. local — 28 days out.**
   Next cycle after that is March 2, 2027.

2. **The solicitation PDF is not sufficient.** Critical budget rules (75th-percentile
   BLS salary caps, SOC codes, 173.33 hrs/month, 15% de minimis indirect, the $30k
   mandatory I-Corps line, the 3–5 person team) exist **only** on the PESOSE website
   update page dated 2026-03-09, captured in `official-sources/`. The bot verified by
   string search that these terms appear nowhere in the PDF.

3. **3–5 letters of collaboration are required**, from current users or contributors
   *not* related to the proposing team. These have the longest lead time of anything
   in the package.
