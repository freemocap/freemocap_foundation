# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

NSF X-Labs Initiative grant proposal — Topic 2: Scientific Instrumentation for Sensing and Imaging. The proposal is written in [Typst](https://typst.app/), a modern typesetting language (LaTeX alternative). Lead org: FreeMoCap Foundation, Inc. PI: Jon Matthis (JSM). Written-proposal deadline: **July 13, 2026**.

The working thesis (see the strategic briefing in `notes/`): pitch FreeMoCap not as a better motion-capture tool but as a new class of scientific *instrument* — the "complete empirical capture of agent–environment interaction," a calibrated, synchronized, semantically-unified record across modalities (kinematics, gaze, neural, force, physiology) and across dimensional domains (species, scale, time, numerosity, complexity). The sharpest solicitation exclusion to avoid is "computational or software solutions without practical integration into an instrumentation system" — the proposal must read as a measurement instrument, not enterprise/middleware software.

## Claude's role here

Per project instructions, Claude is an **observer and advisor, not a writer**. Do NOT edit the core proposal documents or their prose (`proposal/**/*.typ`, the outline, the briefing). Claude structures, plans, and reviews the proposal from the granting agency's perspective. Meta/guidance files like this `CLAUDE.md` are fair game when the user asks.

**Exception (approved 2026-07-13): structural markup only.** Claude may add non-prose markup directly into `proposal/**/*.typ` — Typst `<label>` anchors on headings/figures/tables/personnel entries, cross-reference helper calls (`#skp()`, `#collab()`, `@label`) that replace placeholder tags like `[Ref-Collab-MH/KB]`, and `#flag(kind: "redundant" | "verbose")[...]` review-mark wrappers (see `proposal/helpers/xref.typ`) paired with `// NOTE:` comments. None of this changes a word of prose — it wraps, labels, and annotates existing text. Actually rewriting/cutting/tightening prose (including inside a `#flag()` wrapper) is still off-limits; that's the user's call. `#flag()` is gated on `DRAFT_MODE` (now in `helpers/shared.typ`) so review marks disappear automatically in the submission-ready compile.

## Writing workflow

The main document is `proposal/main.typ`. It pulls in sections from `proposal/sections/` via `#include`.

**CRITICAL: Always invoke the Typst skill before writing or editing any `.typ` file.** This is a Typst project — the skill documents parameter ownership (`leading` is `par`, not `text`; `raw` doesn't take `size`), common mistakes, and the full API surface. You must have it loaded before touching Typst code. (Note: as of 2026-07-13 no such skill was installed in the working session — `typst-cheetsheet.typ`/`.pdf` at the repo root is the fallback reference, and there's no `typst` binary or network access in the sandbox to self-verify compiles either. Any session without the skill or a compiler should say so and ask the user to `typst compile` locally rather than assume correctness.)

Compile to PDF with:

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
    1-mission.typ                 — Mission                              (renders as §1)
    2-technology-landscape.typ    — Technology Landscape                 (renders as §2)
    3-outcomes.typ                — Outcomes                             (renders as §3)
    4-personnel.typ               — Senior/Key Personnel Qualifications  (renders as §4)
    5-team-capabilities.typ       — Team Capabilities Statement          (renders as §5)
  helpers/
    shared.typ                    — small typography helpers + DRAFT_MODE toggle
    xref.typ                      — cross-ref (#skp, #collab) + #flag() review-mark helpers
    figure-page.typ               — assembles the figure/table page after §1
    collaborator-network.typ, templates/milestones-matrix.typ,
    dome-sensor-estimate-model/dome-chain-compact.typ — the 2 figures + 2 tables
  FMCF-NSF-XLABS.bib              — bibliography (Typst `#bibliography()` + `@cite-key`)
```

Each section file contains its own heading and content. The `#include` directive in Typst works like pasting the file's content inline — section files inherit page/text settings from `main.typ` and don't need their own `#set` rules.

Note the ordering quirk: heading numbers come from `#set heading(numbering: "1.")` and follow **include order in `main.typ`**, not the numeric filename prefix. As of 2026-07-13 the filenames and include order both run 1→5 in section order (this used to be out of sync — 3-outcomes.typ included before 2-personnel.typ — but the files have since been renumbered to match; if you see a mismatch again, trust include order in `main.typ`, not the filename).

All five section files have substantive draft content as of 2026-07-13 (not stubs) — see the sections themselves. Author TODOs and redundancy/verbosity notes are marked inline as `// NOTE:` comments and `#flag()` highlights (yellow-vs-blue in draft compiles); `helpers/collaborator-network.typ` has a known open item (collaborator "AS" cited in Mission has no matching table row — table has "BD" instead). A bibliography exists at `proposal/FMCF-NSF-XLABS.bib`, cited via `#bibliography(...)` in `main.typ` and `@cite-key` inline.

## Reference materials
NOTE - All PDFs have a markdown port alongside them
- `official-pdfs/NSF-OTASO-FY26-XLabsInitiative.pdf` — main X-Labs solicitation
- `official-pdfs/NSF-OTASO-FY26-XLabsInitiative-AttachmentA.pdf` — attachment A
- `official-pdfs/NSF-Topic2-FY26-XLabsSensingandImaging-1.pdf` — Topic 2 specifics (sensing & imaging instrumentation)
- `2026-nsf-xlabs-outline.md` — working outline / scratchpad. The quote-blocks (`> …`) at the top of sections are **voice transcriptions** capturing the intended vibe, not finished prose — treat them as raw intent, not text to lift.
- `notes/Empirical-Capture-XLabs-Strategic-Briefing.md` — the deep strategy/landscape briefing (Palantir/Anduril operational-semantic-layer analogy, MoBI precedent, the missing-middle argument, competitive terrain, the funding-structure case). This is the richest source of proposal substance.
- `README.md` — SAM.gov opportunity links

Solicitation requirements (page limits, formatting, required sections, evaluation criteria) are in the PDFs above. Always verify proposal content against the official solicitation documents — do not rely on memory or assumptions about NSF formatting rules. **Open item to verify against the PDFs:**

Personnel and collaborators are identified by initials for privacy in this public repo. There should be a local .env file mapping Initials to Names in your local context. 