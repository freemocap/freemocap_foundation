// DAPR consortium agreement intent - standalone Foundation letterhead.
// Set the two image paths below. Relative paths are resolved from this file.
// Keep the signature image in a private, git-ignored folder.
// Leave signature-path as none to sign the exported PDF separately.

#let letter-date = "15 October 2026"
#let project-title = "Harmonizing FreeMoCap Movement Data for Rehabilitation Research"
#let pi-name = "Aaron T. Cherian"
#let support-period = "12 months from the approved project start date"
#let direct-costs = "$31,000"
#let indirect-costs = "$2,480"
#let total-costs = "$33,480"

#let sender-name = "Jonathan Samir Matthis"
#let sender-title = "President and CEO, FreeMoCap Foundation"
#let reply-email = "jon@freemocap.org"
#let logo-path = "../figs/freemocap-foundation-stars-logo.png"
#let signature-path = none // Example: "private/signature.png"

#let muted = rgb("#666")
#let accent = rgb("#2a2a2a")
#let rule-color = rgb("#929191")

#set document(title: "DAPR Consortium Agreement Intent", author: "FreeMoCap Foundation")
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

On behalf of the FreeMoCap Foundation, I confirm the Foundation's support for
this application and its willingness to enter into a formal subaward or
consortium agreement with the University of Southern California if the project
is selected for funding.

*Principal Investigator:* #pi-name \
*Collaborating institutions:* FreeMoCap Foundation and University of Southern California \
*Period of support:* #support-period

#table(
  columns: (1fr, 1fr, 1fr), align: (left, left, left),
  inset: (x: 7pt, y: 5pt), stroke: 0.4pt + rule-color,
  table.header([*Direct costs*], [*Indirect costs*], [*Total request*]),
  [#direct-costs], [#indirect-costs], [#total-costs],
)

The proposed project will harmonize existing FreeMoCap gait and balance
validation datasets and incorporate metadata capture and harmonized exports
into FreeMoCap. The Foundation will provide administrative oversight for the
approved scope of work, manage project funds, and meet applicable reporting,
research, data-management, and sharing requirements.

If selected, the Foundation will work with USC to finalize the scientific,
administrative, and financial arrangements and complete the formal agreement
and any required assurances or certifications before award.

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

