# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

NSF X-Labs Initiative grant proposal — Topic 2: Scientific Instrumentation for Sensing and Imaging. The proposal is written in [Typst](https://typst.app/), a modern typesetting language (LaTeX alternative).

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
    mission.typ                   — 1. Mission
    technology-landscape.typ      — 2. Technology Landscape
    outcomes.typ                  — 3. Outcomes
    personnel.typ                 — 4. Senior/Key Personnel Qualifications
    team-capabilities.typ         — 5. Team Capabilities Statement
```

Each section file contains its own heading and content. The `#include` directive in Typst works like pasting the file's content inline — section files inherit page/text settings from `main.typ` and don't need their own `#set` rules.

## Reference materials

- `official-pdfs/NSF-OTASO-FY26-XLabsInitiative.pdf` — main X-Labs solicitation
- `official-pdfs/NSF-OTASO-FY26-XLabsInitiative-AttachmentA.pdf` — attachment A
- `official-pdfs/NSF-Topic2-FY26-XLabsSensingandImaging-1.pdf` — Topic 2 specifics (sensing & imaging instrumentation)
- `README.md` — SAM.gov opportunity links

Solicitation requirements (page limits, formatting, required sections, evaluation criteria) are in the PDFs above. Always verify proposal content against the official solicitation documents — do not rely on memory or assumptions about NSF formatting rules.
