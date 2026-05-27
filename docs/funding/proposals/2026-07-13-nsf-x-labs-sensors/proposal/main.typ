// NSF X-Labs Initiative — Topic 2: Scientific Instrumentation for Sensing and Imaging
// Written Proposal
// Format: 8 pages max (excl. COI), single-spaced, 12pt, US letter, 1" margins

#set page(paper: "us-letter", margin: 1in)
#set text(size: 12pt, spacing: 1em)
#set par(justify: false, leading: 0.3em, first-line-indent: 0pt)
#set heading(numbering: "1.")

// Tight heading spacing + force to 12pt bold (not the default ~17pt)
#show heading: it => block(
  above: 0.5em,
  below: 0.25em,
  text(weight: "bold", size: 12pt, it)
)

// ── Title Block ──

#block(above: 0pt, below: 0.8em)[
  #align(center)[
    #text(size: 13pt, weight: "bold")[FreeMoCap X-Lab]
    #v(0.15em)
    #text(size: 11pt)[Lead Institution Name]
    #v(0.4em)
    #text(size: 11pt)[
      Written Proposal to the NSF X-Labs Initiative \
      Topic: Scientific Instrumentation for Sensing and Imaging
    ]
  ]
  #v(0.3em)
  #line(length: 100%)
]

// ── Sections ──

#include "sections/mission.typ"
#include "sections/technology-landscape.typ"
#include "sections/outcomes.typ"
#include "sections/personnel.typ"
#include "sections/team-capabilities.typ"
