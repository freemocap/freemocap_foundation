# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

NSF X-Labs Initiative grant proposal — Topic 2: Scientific Instrumentation for Sensing and Imaging. The proposal is written in [Typst](https://typst.app/), a modern typesetting language (LaTeX alternative). Lead org: FreeMoCap Foundation, Inc. PI: Jon Matthis (JSM). Written-proposal deadline: **July 13, 2026**.

The working thesis (see the strategic briefing in `notes/`): pitch FreeMoCap not as a better motion-capture tool but as a new class of scientific *instrument* — the "complete empirical capture of agent–environment interaction," a calibrated, synchronized, semantically-unified record across modalities (kinematics, gaze, neural, force, physiology) and across dimensional domains (species, scale, time, numerosity, complexity). The sharpest solicitation exclusion to avoid is "computational or software solutions without practical integration into an instrumentation system" — the proposal must read as a measurement instrument, not enterprise/middleware software.

## Claude's role here

**Updated 2026-07-13 (Phase 2): Claude may now write prose.** The earlier "observer and advisor, not a writer" rule is retired. Claude may draft, rewrite, tighten, and cut prose directly in the core proposal documents (`proposal/**/*.typ`, the outline, the briefing) and continues to structure, plan, and review the proposal from the granting agency's perspective. Meta/guidance files like this `CLAUDE.md` remain fair game when the user asks.

**The one hard rule: keep Claude's voice and the author's voice separable at a glance in the draft compile.** The only edits Claude makes directly to author words are *mechanical* ones that cannot change meaning. Anything that could shift meaning stays the author's call and is surfaced as a suggestion, never silently applied.

- **Mechanical fixes → edit directly, no marker.** Unambiguous typos, misspellings, obviously dropped/duplicated words, and broken Typst markup. If an "obvious" fix has more than one plausible reading (e.g. inserting a missing preposition that could be *of* vs *in*), it is NOT mechanical — flag it instead.
- **Grammar, punctuation, clarity, awkwardness, word choice → do NOT touch the original text.** A small grammatical shift can flip meaning, so leave the author's words exactly as written, wrap them in `#flag(kind: "clarity")[..]` (amber), and place any proposed rewrite in an adjacent `#suggestion[..]` block. The author compares the two and decides.
- **New prose Claude drafts → wrap in `#suggestion(note: [..])[..]`.** Renders as a labeled green block in draft mode and disappears **entirely** in the submission-ready compile (`DRAFT_MODE = false`), so it can never ship un-integrated. Also covers new connective prose written to replace a placeholder tag.
- **Existing author prose Claude wants to cut or condense → `#flag(kind: "redundant" | "verbose")[..]`** + a `// NOTE:` explaining the call, rather than deleting it. Unlike `#suggestion`, `#flag()` leaves the wrapped text intact in submission mode — it's a review mark, not a change.

All of the above live in `proposal/helpers/xref.typ` and are gated on `DRAFT_MODE` (in `helpers/shared.typ`). Structural markup (Typst `<label>` anchors, `#skp()` / `#collab()` / `@label` cross-reference helper calls that replace placeholder tags like `[Ref-Collab-MH/KB]`) remains free to add directly, as before.

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
    xref.typ                      — cross-ref (#skp, #collab) + #flag() review-marks + #suggestion() draft-prose helper
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