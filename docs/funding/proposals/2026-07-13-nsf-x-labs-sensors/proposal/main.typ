// NSF X-Labs Initiative — Topic 2: Scientific Instrumentation for Sensing and Imaging
// Written Proposal
// Format: 8 pages max (excl. COI), single-spaced, 12pt, US letter, 1" margins

// ── Draft Mode ──
// Set to false for submission-ready output (strips WIP overlays,
// section tracking, and margin box; keeps clean page numbers).

#let DRAFT_MODE = true

// ── Draft-only content definitions ──

#let wip-banner = align(
  center,
  text(
    size: 30pt,
    fill: rgb("#0000001F"),
    weight: "bold",
    [!!!WORK IN PROGRESS!!!],
  ),
)

#let draft-header = [
  #wip-banner
  #grid(
    columns: (1fr, 1fr),
    align(left, text(size: 8pt, fill: rgb("#000000ce"), [Status: Incomplete Draft])),
    align(right, text(size: 8pt, fill: rgb("#000000ce"), [Compiled: #datetime.today().display("[year]-[month padding:zero]-[day padding:zero]")])),
  )
]

#let draft-footer = context {
  let h1s = query(selector(heading.where(level: 1)).before(here()))
  let section-label = if h1s.len() > 0 {
    let h = h1s.last()
    [#h.numbering #h.body]
  }
  let total = counter(page).final().first()
  grid(
    columns: (1fr, 1fr),
    align(left, text(size: 8pt, fill: rgb("#000000af"), section-label)),
    align(right, text(size: 8pt, fill: rgb("#000000af"), [Page #counter(page).display() of #total])),
  )
}

#let draft-margin-box = place(
  top + left,
  dx: 1in,
  dy: 1in,
  rect(
    width: 6.5in,
    height: 9in,
    fill: none,
    stroke: 0.5pt + rgb("#888888af"),
  ),
)

// ── Submission-mode footer (page numbers only) ──

#let submission-footer = context {
  let total = counter(page).final().first()
  align(center, text(size: 8pt, [Page #counter(page).display() of #total]))
}

// ── Page Setup ──

#set page(
  paper: "us-letter",
  margin: 1in,
  header: if DRAFT_MODE { draft-header },
  footer: if DRAFT_MODE { draft-footer } else { submission-footer },
  background: if DRAFT_MODE { draft-margin-box },
)
#set text(size: 12pt, font: "New Computer Modern")
#set par(justify: true, leading: 0.55em, spacing: 0.55em, first-line-indent: 0pt)
#set heading(numbering: "1.")

#show heading.where(level: 1): set block(above: 1.4em, below: 1em)
#show heading.where(level: 1): set text(weight: "bold", size: 12pt)

// ── Title Block ──

#block(above: 0pt, below: 0.28em)[
  #align(center)[
    #text(size: 13pt, weight: "bold")[Complete Empirical Capture of the Agent/Environment Interaction across Phylogeny, Discipline, and Spatiotemporal Scale]
    #v(0.15em)
    #text(size: 11pt)[FreeMoCap Foundation, Inc.]
    #v(0.4em)
    #text(size: 11pt)[
      Topic: Scientific Instrumentation for Sensing and Imaging
    ]
  ]
  #v(0.3em)
  #line(length: 100%)
]

// ── Sections ──

#include "sections/1-mission.typ"
#pagebreak(weak:true)
#include "helpers/figure-page.typ"
#pagebreak(weak:true)
#include "sections/2-technology-landscape.typ"
#pagebreak(weak:true)
#include "sections/3-outcomes.typ"
#pagebreak(weak:true)
#include "sections/4-personnel.typ"
#pagebreak(weak:true)
#include "sections/5-team-capabilities.typ"
#bibliography("FMCF-NSF-XLABS.bib", style: "nature")
