# PESOSE Track 1 — Project Description scaffold

**BOT-GENERATED. Citations only. No prose.**

The drafted-prose pass of 2026-08-04 was a one-time exception and has been reverted at
Jon's request. The standing no-prose rule is in force — see `../AGENT-INSTRUCTIONS.md`.

## What this is

Section architecture for the 7-page Track 1 Project Description, modeled on
`recent/2026-07-13-nsf-x-labs-sensors/proposal/`. Each section carries four kinds of
annotation and no narrative text:

| Marker | Colour | Content |
|---|---|---|
| `#req[]` | blue | the **verbatim NSF requirement** the section discharges, cited |
| `#src[]` | green | a **pointer into an official source** — what it says, where to find it |
| `#pitfall[]` | red | a **failure mode NSF stated explicitly**, usually from the webinars |
| `#supply[]` | amber | **what the author must produce** — spec, not narrative |

**Page 1 of the compiled PDF is a legend** explaining all four markers and listing every
source with its full name, status, and path. Green source boxes also name each source in
full — `#src("W2", ...)` renders as *"Webinar 2 — NSF PESOSE Q&A Discussion, 24 Jul 2026"*,
not as `W2`. The short keys exist only inside the `.typ` files so citations stay compact
while editing; `SOURCE-KEYS.md` is the plain-text mirror.

The legend page is draft-only and resets the page counter, so the footer's 7-page warning
counts real content pages only.

Flip `DRAFT_MODE` to `false` in `helpers/shared.typ` and every annotation disappears,
leaving bare headings to write into.

## What's new in this pass

The two webinar transcript folders Jon added are now folded in throughout. They carry
material that exists in **no written NSF source**, most importantly:

- **NSF's six dimensions of sustainability** — including *maintainer well-being* and
  *independence from the lead institution*, neither of which appears in the solicitation
  (§3)
- **The "don't go it alone" recommendation** — NSF names The Carpentries, NumFOCUS,
  Software Freedom Conservancy, and Open Source Collective, and says submissions are
  "much stronger" for engaging them (§3)
- **The four common pitfalls** the program director enumerates, now attached to the
  sections where each one bites (§1, §5, §6, §7)
- **The ecosystem maturity map** — where Track 1 ends and Track 2 begins (§1)
- **The proprietary-dependency rule** — non-open-source dependencies need a collaborator
  letter showing outreach, or the proposal can be rejected (§3)
- **The NIH framing warning** — biomedical/clinical framing reads as an NIH submission (§1)
- **Quantified growth targets** — NSF expects justified numbers, not directional claims
  (§2, §7)

## Compile

```bash
cd notes/bot-slop/scaffold
typst compile main.typ
```

**Not verified — no `typst` binary in the bot's sandbox**, same caveat the X-Labs
`CLAUDE.md` records. Compile locally; expect small syntax fixes. The footer turns red
past page 7.

## Page budget

| § | Section | Pages | Words |
|---|---|---|---|
| 1 | The Problem and the Open-Source Product | 1.4 | 840 |
| 2 | Ecosystem Discovery | 1.0 | 600 |
| 3 | Organization and Governance | 1.2 | 720 |
| 4 | Risk Analysis and Security Plan | 0.8 | 480 |
| 5 | Community Building | 0.7 | 420 |
| 6 | Sustainability | 0.5 | 300 |
| 7 | Milestones, Timeline, and Evaluation Plan | 0.8 | 480 |
| 8 | Broader Impacts | 0.4 | 240 |
| 9 | Team Qualifications | 0.2 | 120 |
| | **Total** | **7.0** | **4,200** |

Word-per-page assumes ~600 at 12pt with these paragraph settings — calibrate against a
real compile and adjust.

**No prose in the scaffold**, so the compiled page count reflects annotations only. The word budget below is the target for the author’s eventual text; `#req`/`#src`/`#pitfall`/`#supply` blocks are draft-only and cost zero pages in submission mode.
expand when filled with real evidence, and §8–§9 are thin because they are mostly facts
the bot will not invent. Expect to land near 7 once populated — and note the `#req[]`
annotation boxes are draft-only, so they cost zero pages in submission mode.

## Things to verify before trusting the structure

1. **Does References Cited count against the 7 pages?** Under PAPPG, References Cited is
   a separate proposal section from the Project Description, so it should not — but
   X-Labs worked the opposite way (references counted toward its 8 pages), so do not
   pattern-match. Confirm in PAPPG 24-1 Ch. II.D.2.
2. **Broader Impacts as a separate labeled section** — asserted in §8 from general PAPPG
   structure, not from a direct read. Confirm the exact requirement.
3. **Results from Prior NSF Support** — if any PI/co-PI has had NSF support in the last
   five years, PAPPG requires this *inside* the Project Description, and it consumes
   page budget. Not allocated for above. Check whether it applies.
4. **Typography** — 12pt/1in here follows the X-Labs setup. PAPPG rules are a floor
   (≥10pt, ≤6 lines/inch, ≥1in margins), so 12pt is safe but costs pages. Going to 11pt
   buys roughly a page if needed.
