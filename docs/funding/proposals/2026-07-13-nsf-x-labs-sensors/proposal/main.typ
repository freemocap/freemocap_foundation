// NSF X-Labs Initiative — Topic 2: Scientific Instrumentation for Sensing and Imaging
// Written Proposal
// Format: 8 pages max (excl. COI), single-spaced, 12pt, US letter, 1" margins

#set page(paper: "us-letter", margin: 1in)
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
#include "sections/figure-page.typ"
#pagebreak(weak:true)
#include "sections/2-technology-landscape.typ"
#pagebreak(weak:true)
#include "sections/3-outcomes.typ"
#pagebreak(weak:true)
#include "sections/4-personnel.typ"
#pagebreak(weak:true)
#include "sections/5-team-capabilities.typ"
#bibliography("FMCF-NSF-XLABS.bib", style: "apa")