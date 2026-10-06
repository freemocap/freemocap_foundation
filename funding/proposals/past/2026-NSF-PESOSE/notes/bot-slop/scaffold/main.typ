// ─────────────────────────────────────────────────────────────────────────────
// NSF PESOSE (NSF 26-506) — TRACK 1 — Project Description SCAFFOLD
// FreeMoCap Foundation, Inc.
//
// BOT-GENERATED SCAFFOLD. Contains NO prose. Each section holds:
//   #req[]     blue   — the verbatim NSF requirement it discharges, cited
//   #src[]     green  — pointer into an official source: what it says, where
//   #pitfall[] red    — a failure mode NSF stated explicitly
//   #supply[]  amber  — what the author must produce
// The no-prose rule is in force (see ../AGENT-INSTRUCTIONS.md). The drafted pass
// of 2026-08-04 was a one-time exception and has been reverted.
//
// Structure modeled on ../../../../recent/2026-07-13-nsf-x-labs-sensors/proposal/
//
// FORMAT — Track 1 Project Description: 7 PAGES MAXIMUM (NSF 26-506 §V.A).
// Typography below follows PAPPG defaults; VERIFY against PAPPG 24-1 Ch. II.B
// before submission (font ≥10pt, ≤6 lines/inch, ≥1" margins).
// ─────────────────────────────────────────────────────────────────────────────

#import "helpers/shared.typ": DRAFT_MODE
#import "helpers/legend.typ": legend-page

#let draft-margin-box = place(
  top + left, dx: 1in, dy: 1in,
  rect(width: 6.5in, height: 9in, fill: none, stroke: .5pt + rgb("#7e7eba")),
)

#let draft-footer = context {
  let total = counter(page).final().first()
  let over = counter(page).final().first() > 7
  grid(
    columns: (1fr, 1fr),
    align(left, text(size: 8pt, fill: rgb("#000000af"))[
      SCAFFOLD — not a draft, not prose
    ]),
    align(right, text(
      size: 8pt,
      fill: if over { rgb("#b00020") } else { rgb("#000000af") },
      weight: if over { "bold" } else { "regular" },
    )[
      Page #counter(page).display() of #total #if over [ — OVER 7-PAGE LIMIT]
    ]),
  )
}

// Legend pages get a plain footer; the content footer is set after the legend so
// the "Page N of M" count covers real content pages only.
#set page(
  paper: "us-letter",
  margin: 1in,
  footer: if DRAFT_MODE {
    align(center, text(size: 8pt, fill: rgb("#888"))[
      Scaffold key — draft-only front matter
    ])
  },
  background: if DRAFT_MODE { draft-margin-box },
)
#set text(size: 12pt, font: "Libertinus Serif", hyphenate: false)
#set par(justify: false, leading: 0.45em, spacing: 0.72em, first-line-indent: 1em)
#set heading(numbering: "1.", supplement: [§])

#show heading.where(level: 1): set block(above: 1em, below: 0.6em)
#show heading.where(level: 1): set text(weight: "bold", size: 12pt)
#show heading.where(level: 1): it => smallcaps(it)
#show heading.where(level: 2): set block(above: 0.8em, below: 0.5em)
#show heading.where(level: 2): set text(weight: "bold", size: 11pt)

// ── Front matter (draft-only), then switch to the content footer ──
#legend-page
#set page(footer: draft-footer)
#counter(page).update(1)

// ── Title block ──
#block(width: 100%, above: 0pt, below: 0.4em)[
  #align(center)[
    #text(size: 12pt, weight: "bold")[PESOSE: Track 1: \[TITLE\]]
    #v(0.15em)
    #text(size: 11pt)[FreeMoCap Foundation, Inc.]
    #v(0.15em)
    #text(size: 10pt, style: "italic", fill: rgb("#666"))[
      Project Description — 7 page maximum · CITATION SCAFFOLD, NO PROSE
    ]
  ]
]

#if DRAFT_MODE {
  block(
    width: 100%, inset: 7pt, radius: 3pt,
    fill: rgb("#fdecec"), stroke: 0.6pt + rgb("#b00020"), below: 1em,
  )[
    #text(size: 8.5pt, fill: rgb("#7a0016"))[
      *TITLE FORMAT IS A COMPLIANCE ITEM.* NSF 26-506 §V.A: titles must begin with
      `PESOSE: ` followed by the track, then the project title — e.g.
      `PESOSE: Track 1: (title)`. If responding to DCL 26-015 (AI agent protocol
      ecosystems), the format becomes `PESOSE / AI: Track 1: (title)` instead.
      Decide before drafting; it is not a cosmetic choice.
    ]
  ]
}

// ── Sections ──
#include "sections/1-problem-and-product.typ"
#include "sections/2-ecosystem-discovery.typ"
#include "sections/3-organization-and-governance.typ"
#include "sections/4-risk-and-security.typ"
#include "sections/5-community-building.typ"
#include "sections/6-sustainability.typ"
#include "sections/7-milestones-and-evaluation.typ"
#include "sections/8-broader-impacts.typ"
#include "sections/9-team-qualifications.typ"
