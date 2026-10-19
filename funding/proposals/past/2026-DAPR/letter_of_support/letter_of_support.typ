// DAPR mentor letter of support - standalone Foundation letterhead.
// Set the two image paths below. Relative paths are resolved from this file.
// Keep the signature image in a private, git-ignored folder.
// Leave signature-path as none to sign the exported PDF separately.

#let letter-date = "16 October 2026"
#let project-title = "Harmonizing FreeMoCap Movement Data for Rehabilitation Research"

// Fill-ins for Jon to confirm before signing.
// Set advisor-clause or academic-clause to "" to omit that clause entirely.
#let worked-since = "2020"
#let advisor-clause = ", including as his doctoral advisor"

#let sender-name = "Jonathan Samir Matthis, PhD"
#let sender-title = "President and CEO, FreeMoCap Foundation"
#let reply-email = "jon@freemocap.org"
#let logo-path = "../figs/freemocap-foundation-stars-logo.png"
#let signature-path = none // Example: "private/signature.png"

#let muted = rgb("#666")
#let accent = rgb("#2a2a2a")
#let rule-color = rgb("#929191")

#set document(title: "DAPR Mentor Letter of Support", author: "FreeMoCap Foundation")

#let body = [
#set page(paper: "us-letter", margin: 0.5in, numbering: none)
#set text(font: "Arial", size: 11pt, fill: rgb("#222"), lang: "en", hyphenate: false)
#set par(justify: false, leading: 0.35em, spacing: 0.8em, first-line-indent: 0pt)

// Letterhead
#grid(
  columns: (1fr, auto), gutter: 0.2in, align: horizon,
  [
    #text(weight: "bold", fill: accent)[FreeMoCap Foundation, Inc.] \
    #text(fill: muted)[A 501(c)(3) nonprofit organization]
  ],
  [#if logo-path != none { image(logo-path, width: 1.05in) }],
)
#v(0.4em)
#line(length: 100%, stroke: 0.6pt + rule-color)
#v(0.7em)

#text(fill: muted)[#letter-date]

DAPR Pilot Grant Program \
University of Southern California

*Re: #project-title*

Dear DAPR Pilot Grant Review Committee:

I am writing to confirm my commitment to serve as mentor to Dr. Aaron Cherian
on his proposed DAPR pilot project. I founded FreeMoCap and serve as President
and CEO of the FreeMoCap Foundation. 

I have worked closely with Aaron since #worked-since#advisor-clause. His
doctoral validation of FreeMoCap and his work as a core maintainer prepare him well
for this project. Few early-career investigators combine a detailed
understanding of how markerless measurements are produced with the software
expertise to change how those measurements are recorded and shared. This
project depends on both.

I will meet with Aaron monthly throughout the award, with formal checkpoints
at months 3, 6, 9, and 12 and review relevant terminology mappings before they are used
in the harmonized packages. I will also advise on the metadata architecture and
on how the exporter integrates with the FreeMoCap processing pipeline. Finally,
I will review representative exports, worked examples, and evaluation results
for clarity and consistency.

This project is also an important step in Aaron's development as an
independent investigator. It extends his work on measurement validity into
rehabilitation research, and working with DAPR's Resource Core will build his
expertise in rehabilitation terminology and data standards. I will also advise
him on the methods manuscript and on next steps after the pilot.

On behalf of the Foundation, I confirm that Aaron will have full access to the
FreeMoCap codebase, development infrastructure, and the validation dataset and
analysis repository for this project. Software developed under the award will
be reviewed and merged into FreeMoCap through our standard contribution process
and maintained as part of the software after the award ends.

I strongly support this application and look forward to working with Aaron on it.

Sincerely,

#block(breakable: false)[
  #if signature-path != none {
    image(signature-path, width: 1.5in)
  } else {
    v(0.25in)
    line(length: 2.4in, stroke: 0.5pt + rule-color)
    v(0.15em)
  }
  #text(weight: "bold")[#sender-name] \
  #text(fill: muted)[#sender-title] \
  #link("mailto:" + reply-email)[#reply-email]
]
]

// Renders the letter when this file is compiled on its own; harmless if `body` is imported elsewhere.
#body
