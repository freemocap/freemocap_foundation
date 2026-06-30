# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

NSF X-Labs Initiative grant proposal — Topic 2: Scientific Instrumentation for Sensing and Imaging. The proposal is written in [Typst](https://typst.app/), a modern typesetting language (LaTeX alternative). Lead org: FreeMoCap Foundation, Inc. PI: Jon Matthis (JSM). Written-proposal deadline: **July 13, 2026**.

The working thesis (see the strategic briefing in `notes/`): pitch FreeMoCap not as a better motion-capture tool but as a new class of scientific *instrument* — the "complete empirical capture of agent–environment interaction," a calibrated, synchronized, semantically-unified record across modalities (kinematics, gaze, neural, force, physiology) and across dimensional domains (species, scale, time, numerosity, complexity). The sharpest solicitation exclusion to avoid is "computational or software solutions without practical integration into an instrumentation system" — the proposal must read as a measurement instrument, not enterprise/middleware software.

## Claude's role here

Per project instructions, Claude is an **observer and advisor, not a writer**. Do NOT edit the core proposal documents or their prose (`proposal/**/*.typ`, the outline, the briefing). Claude structures, plans, and reviews the proposal from the granting agency's perspective. Meta/guidance files like this `CLAUDE.md` are fair game when the user asks.

## Writing workflow

The main document is `proposal/main.typ`. It pulls in sections from `proposal/sections/` via `#include`. Compile to PDF with:

```bash
typst compile proposal/main.typ
```

For live preview while editing:

```bash
typst watch proposal/main.typ
```

## Document structure

```
proposal/
  main.typ                        — page setup, title block, includes sections
  sections/
    0-mission.typ                 — Mission                              (renders as §1)
    1-technology-landscape.typ    — Technology Landscape                 (renders as §2)
    3-outcomes.typ                — Outcomes                             (renders as §3)
    2-personnel.typ               — Senior/Key Personnel Qualifications  (renders as §4)
    4-team-capabilities.typ       — Team Capabilities Statement          (renders as §5)
```

Each section file contains its own heading and content. The `#include` directive in Typst works like pasting the file's content inline — section files inherit page/text settings from `main.typ` and don't need their own `#set` rules.

Note the ordering quirk: heading numbers come from `#set heading(numbering: "1.")` and follow **include order in `main.typ`**, not the numeric filename prefix. `main.typ` includes them as 0, 1, **3, 2**, 4 — so `3-outcomes.typ` is included before `2-personnel.typ`, which is why Outcomes renders as §3 and Personnel as §4. The filename prefixes are out of sync with render order; don't trust them.

All five section files are currently **TODO stubs** — each holds the solicitation's prompt text plus a `// TODO` comment, no real content yet. The substantive material lives in the outline and briefing (below). No BibTeX file exists yet; per project plan, citations should be collected into a `.bib` file and cited through Typst's standard bibliography mechanism.

## Reference materials
NOTE - All PDFs have a markdown port alongside them
- `official-pdfs/NSF-OTASO-FY26-XLabsInitiative.pdf` — main X-Labs solicitation
- `official-pdfs/NSF-OTASO-FY26-XLabsInitiative-AttachmentA.pdf` — attachment A
- `official-pdfs/NSF-Topic2-FY26-XLabsSensingandImaging-1.pdf` — Topic 2 specifics (sensing & imaging instrumentation)
- `2026-nsf-xlabs-outline.md` — working outline / scratchpad. The quote-blocks (`> …`) at the top of sections are **voice transcriptions** capturing the intended vibe, not finished prose — treat them as raw intent, not text to lift.
- `notes/Empirical-Capture-XLabs-Strategic-Briefing.md` — the deep strategy/landscape briefing (Palantir/Anduril operational-semantic-layer analogy, MoBI precedent, the missing-middle argument, competitive terrain, the funding-structure case). This is the richest source of proposal substance.
- `README.md` — SAM.gov opportunity links

Solicitation requirements (page limits, formatting, required sections, evaluation criteria) are in the PDFs above. Always verify proposal content against the official solicitation documents — do not rely on memory or assumptions about NSF formatting rules. **Open item to verify against the PDFs:**