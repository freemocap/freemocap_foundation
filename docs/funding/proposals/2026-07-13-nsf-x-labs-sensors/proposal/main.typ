// NSF X-Labs Initiative — Topic 2: Scientific Instrumentation for Sensing and Imaging
// Written Proposal
// Format: 8 pages max (excl. COI), single-spaced, 12pt, US letter, 1" margins
// OFFICIAL INSTRUCTIONS

// [Written Proposals should be direct, concise, and must not exceed a total of 8 single-sided pages exclusive of the Conflicts of Interest (COI) statement. The Written Proposal shall be typed, single-spaced, using 12-point font, and printed on 8½" by 11" paper, with 1" margins on all sides. Tables/graphs may use a smaller font. Written Proposals shall be submitted as a PDF document without a cover letter. COI statements shall be submitted as a separate PDF document and have no page limit. Proposals that do not meet these format specifications may be removed from consideration.]

// ── Draft Mode ──
// Set to false for submission-ready output (strips WIP overlays,
// section tracking, and margin box; keeps clean page numbers).

#let DRAFT_MODE = true

// ── Draft-only content definitions ──

#let wip-banner = align(
  center,
  text(
    size: 30pt,
    fill: rgb("#00000066"),
    weight: "bold",
    smallcaps[DRAFT - Work in Progress],
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
  [
    #wip-banner
    #grid(
      columns: (1fr, 1fr),
      align(left, text(size: 8pt, fill: rgb("#000000af"), section-label)),
      align(right, text(size: 8pt, fill: rgb("#000000af"), [Page #counter(page).display() of #total])),
    )
  ]
}

#let draft-margin-box = place(
  top + left,
  dx: 1in,
  dy: 1in,
  rect(
    width: 6.5in,
    height: 9in,
    fill: none,
    stroke: .5pt + rgb("#0000ff"),
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
#set text(size: 12pt, font: "Libertinus Serif", hyphenate: false)
#set par.line(numbering: if DRAFT_MODE { "1" } else { none })
#set heading(numbering: "1.", supplement: [§])

#set par(justify: false, leading: 0.45em, spacing: 0.72em, first-line-indent: 1em)
#set par.line(numbering: if DRAFT_MODE { "1" } else { none })
#set heading(numbering: "1.", supplement: [§])

#show heading.where(level: 1): set block(above: 0em, below: 0.6em)
#show heading.where(level: 1): set text(weight: "bold", size: 12pt)
#show heading.where(level: 2): set block(above: 0.8em, below: 0.5em)
#show heading.where(level: 2): set text(weight: "bold", size: 12pt)

// ── Title Block ──

#block(above: 0pt, below: 0.28em)[
  #align(center)[
    // #text(size: 12pt, weight: "bold", hyphenate: false)[Complete Empirical Capture of the Agent/Environment Interaction to create unified science of sensorimotor control]
    #text(size: 12pt, weight: "bold", hyphenate: false)[Building a unified science of sensorimotor control with Densely Overlapping Measurement Environments [DOMEs]]
    // #text(size: 12pt, weight: "bold", hyphenate: false)[A Unified Science of Perceptual/Motor Control through Sensor-Grounded Ontology]
    #v(0.1em)
    #text(size: 11pt)[FreeMoCap Foundation, Inc.]
    #v(0.1em)
    #text(size: 11pt)[
      Written Proposal to the NSF X-Labs Initiative  
      // Topic: Scientific Instrumentation for Sensing and Imaging
    ]
  ]
  #v(0.1em)
  // #line(length: 100%)
]

// ── Sections ──

#include "sections/1-mission.typ"
#pagebreak(weak:true)
#include "helpers/figure-page.typ"
#pagebreak(weak:true)
#include "helpers/dome-sensor-estimate-model/dome-chain-compact.typ"
#pagebreak(weak:true)
#include "sections/2-technology-landscape.typ"
#pagebreak(weak:true)
#include "sections/3-outcomes.typ"
#pagebreak(weak:true)
#include "sections/4-personnel.typ"
#pagebreak(weak:true)
#include "sections/5-team-capabilities.typ"

#pagebreak()
#bibliography("FMCF-NSF-XLABS.bib", style: "nature") 
