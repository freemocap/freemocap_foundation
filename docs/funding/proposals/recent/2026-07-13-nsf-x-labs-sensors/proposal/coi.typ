// NSF X-Labs Initiative — Topic 2: Scientific Instrumentation for Sensing and Imaging
// CONFLICTS OF INTEREST (COI) STATEMENT
//
// Submitted as a SEPARATE PDF from the Written Proposal (no page limit; see
// solicitation §10.2). Self-contained — compile on its own:
//   typst compile proposal/coi.typ
//
// NOTE: this working copy uses INITIALS (privacy). Swap in real names from the
// local .env before compiling the submission PDF (real names are a submission
// requirement). Content assessment: no actual or potential conflicts identified;
// outside affiliations disclosed for transparency.

// ── Page Setup (mirrors main.typ submission styling) ──
#set page(
  paper: "us-letter",
  margin: 1in,
  footer: context align(center, text(size: 8pt, [Page #counter(page).display() of #counter(page).final().first()])),
)
#set text(size: 12pt, font: "Libertinus Serif", hyphenate: false)
#set par(justify: false, leading: 0.45em, spacing: 0.72em, first-line-indent: 1em)
#set heading(numbering: "1.", supplement: [§])
#show heading.where(level: 1): set block(above: 1em, below: 0.6em)
#show heading.where(level: 1): set text(weight: "bold", size: 12pt)
#show heading.where(level: 1): it => smallcaps(it)
#show heading.where(level: 2): set block(above: 0.8em, below: 0.4em)
#show heading.where(level: 2): set text(weight: "bold", size: 12pt)

// ── Title Block ──
#block(width: 100%, above: 0pt, below: 0.6em)[
  #align(center)[
    #text(size: 12pt, weight: "bold")[Conflicts of Interest (COI) Statement]
    #v(0.2em)
    #text(size: 11pt)[Building a Unified Science of Natural Behavior\ with Densely Overlapping Measurement Environments (Domes)]
    #v(0.2em)
    #text(size: 11pt)[FreeMoCap Foundation, Inc. — Written Proposal to the NSF X-Labs Initiative]
    #v(0.1em)
    #text(size: 10pt)[Lead Organization: FreeMoCap Foundation, Inc. · Principal Investigator: Jonathan Matthis, PhD]
  ]
]

#line(length: 100%, stroke: 0.5pt)
#v(0.4em)

= Summary <coi-summary>

FreeMoCap Foundation, Inc. (the "Foundation"), the lead organization, and its
Senior/Key Personnel have reviewed their financial interests and outside
affiliations against the scope of the proposed work in accordance with §10.2 of
the solicitation and, as a framework, FAR Subpart 9.5. *We have identified no
actual or potential organizational or personal conflict of interest that would
impair the objectivity of the proposed work or confer an unfair competitive
advantage.* The Foundation is a nonprofit whose flagship technology is released
free and open-source; it holds no proprietary product, patent, license, or
equity position whose value depends on the outcome of this award. Several
Senior/Key Personnel maintain concurrent outside employment in unrelated
industries; these affiliations are disclosed below in the interest of full
transparency, are unrelated to the measurement and instrumentation domain of
the proposed DOME platform, and are being wound down as personnel transition to
full-time roles across Phase 0 and Phase 1. The management measures in §4 and
the ongoing-disclosure commitment in §5 govern any conflict that may arise.

= Organizational Interests — FreeMoCap Foundation, Inc. <coi-org>

The Foundation is a mission-driven nonprofit corporation. Its core technology,
the FreeMoCap software platform, is distributed at no cost under an open-source
license. The Foundation therefore has *no financial interest in any particular
scientific or commercial outcome* of the proposed work: it does not sell the
software, does not hold patents or exclusive licenses tied to the DOME
instrument, and does not hold equity in, or receive royalties from, any entity
positioned to benefit from the award.

The Foundation has no other federal contract, grant, or advisory relationship
that would create an organizational conflict of interest under FAR Subpart 9.5 —
no impaired-objectivity conflict (it has not evaluated, set requirements for, or
advised NSF on this program), no unequal-access-to-information conflict, and no
biased-ground-rules conflict. The Foundation has no current or planned
subcontractor, consultant, or vendor arrangement in which a Senior/Key Personnel
member or their affiliated organization would be positioned to profit from the
proposed work. Should any such arrangement be contemplated during performance,
it will be disclosed and resolved in advance under §5.

= Senior/Key Personnel — Financial Interests and Outside Affiliations <coi-personnel>

Each individual below has disclosed outside employment and any financial
interest relevant to the proposed work. Personnel not listed with an outside
affiliation report no relevant outside financial interest. None of the outside
affiliations operate in the scientific-instrumentation, motion-capture, or
sensing-and-imaging domain of the proposed DOME platform; none holds a
supplier, subcontractor, or competitive relationship to the proposed work.

#v(0.2em)
#set text(size: 10pt)
#table(
  columns: (1.35fr, 1.15fr, 1.6fr, 1.5fr),
  inset: 6pt,
  align: (left + top, left + top, left + top, left + top),
  stroke: 0.5pt + rgb("#999999"),
  table.header(
    [*Individual / Role*], [*Foundation status*], [*Concurrent outside affiliation*], [*Conflict assessment*],
  ),
  [Jonathan Matthis, PhD\ President / PI],
  [Full-time],
  [None. Former tenure-track faculty, Northeastern University (resigned). NIH NEI K99/R00 awardee (EY028229), now concluded.],
  [No conflict. No outside employment or financial interest tied to the award.],

  [AC, PhD\ Chief Scientific Officer],
  [Full-time],
  [None reported.],
  [No conflict.],

  [NR\ Chief Executive Officer],
  [Transitioning to full-time by Phase 1],
  [Software engineering (Rapid7); co-founder, MailLift (API startup). Unrelated industries.],
  [No conflict. Outside roles are in general software; no overlap with DOME scope; winds down on transition.],

  [EI\ Chief Technology Officer],
  [Part-time; transitioning to full-time by Phase 1],
  [Concurrent CTO, Chorus Innovations (enterprise software / health-tech platform). Former Principal Architect, Unqork.],
  [No conflict. Enterprise-software domain, not instrumentation; no supplier/competitor relationship; time commitment managed under §4.],

  [JKL, PhD\ Chief AI Officer],
  [Transitioning to full-time by Phase 1],
  [Applied AI Architect, SOLID Inc. (applied-AI consulting).],
  [No conflict. Unrelated applied-AI work; no overlap with DOME scope.],

  [RR\ Chief Financial Officer / Treasurer],
  [Part-time (volunteer CFO)],
  [Founder, Capital Bookkeeping Cooperative; Controller, Honest Weight Food Co-op; Adjunct Professor of Accounting, University at Albany.],
  [No conflict. Accounting/finance and academic roles unrelated to the technical scope; no financial interest in project outcomes.],

  [KM, PhD\ Project Manager, DOME-Mobile],
  [Transitioning to full-time by Phase 1],
  [Senior Data Scientist, SynMax (energy-sector data analytics).],
  [No conflict. Energy-analytics employer is outside the instrumentation domain; no supplier/competitor relationship.],

  [MN\ Project Manager, DOME-L],
  [Transitioning to full-time by Phase 1],
  [None reported.],
  [No conflict.],
)
#set text(size: 12pt)

= Avoidance, Neutralization, and Mitigation <coi-mitigation>

Although no actual or potential conflict has been identified, the Foundation
will maintain the following measures to prevent, neutralize, or mitigate any
conflict that could arise during performance, consistent with §10.2 and FAR
Subpart 9.5:

#set enum(numbering: "1.", spacing: 0.6em)
+ *Full-time transition.* The X-Labs model treats Phase 0 as the runway for
  Senior/Key Personnel to transition to full-time before Phase 1. The PI and
  Chief Scientific Officer are already full-time; the remaining Senior/Key
  Personnel commit to full-time by Phase 1, retiring the concurrent outside
  employment disclosed in §3 and removing any residual divided-commitment
  concern.

+ *Scope separation and recusal.* Outside employment is confined to work
  unrelated to the DOME platform. No Senior/Key Personnel will direct Foundation
  procurement toward, or accept Foundation-funded work from, an entity in which
  they hold a financial interest. Any individual with a personal financial
  interest in a matter before the Foundation will recuse themselves from
  Foundation decisions on that matter.

+ *Open, nonprofit governance.* The Foundation's open-source, nonprofit
  structure and cooperative-style governance keep the technology in the public
  domain and remove the profit motive that ordinarily drives instrumentation
  conflicts. Financial oversight is exercised by the CFO/Treasurer and the
  Foundation's board.

+ *Written COI policy and annual disclosure.* The Foundation will maintain a
  written conflict-of-interest policy and collect an annual (and event-driven)
  disclosure from every Senior/Key Personnel member and employee, with review by
  the board or its designee. Current-and-pending support and biosketches will be
  provided for all Senior/Key Personnel at the oral-proposal stage.

= Ongoing Disclosure Commitment <coi-ongoing>

This assessment reflects the facts known as of the submission date. The
requirements of §10.2 apply to the Foundation, its employees, and any
subcontractors or consultants proposed to perform work. If, at any time —
including after award — the Foundation or any subcontractor identifies an actual
or potential organizational conflict of interest (using FAR Subpart 9.5 as a
framework) that has not been adequately disclosed and resolved, or waived in
writing by NSF, the Foundation will promptly provide full written disclosure to
NSF describing the conflict and the actions taken or proposed to resolve it,
together with a proposed mitigation plan. The Foundation flows this same
obligation down to any subcontractor or consultant it engages.

#v(0.8em)
#line(length: 100%, stroke: 0.5pt)
#v(0.3em)
#text(size: 10pt)[
  Submitted on behalf of FreeMoCap Foundation, Inc.\
  Jonathan Matthis, PhD — President and Principal Investigator\
  Date: #datetime.today().display("[month repr:long] [day], [year]")
]
