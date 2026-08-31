// =============================================================================
// LIST OF PROJECT PERSONNEL, COLLABORATORS, AND PARTNER ORGANIZATIONS
// (required by NSF 26-506 §V.A; uploaded under Other Supplementary Documents)
//
// Tabular format, columns in EXACTLY this order: Full name | Organization(s)
// | Role in the project. Must include ALL of: PIs, co-PIs, senior/key
// personnel, funded and unfunded consultants, collaborators (including EVERY
// letter-of-collaboration writer), subawardees, postdocs, and project-level
// advisory committee members. NSF staff use this for reviewer selection.
//
// GAPS — organizations marked [TBD] are not stated in any source document in
// this repo. Fill them before submitting; do not leave [TBD] in the PDF.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT, note

#show: nsf-doc.with(page-limit: none, draft: DRAFT,
  title: [List of Project Personnel, Collaborators, and Partner Organizations])

#table(
  columns: (1.5fr, 1.7fr, 1.4fr),
  inset: 5pt,
  align: left + top,
  table.header([*Full Name*], [*Organization(s)*], [*Role in the Project*]),

  [Jonathan Samir Matthis], [FreeMoCap Foundation, Inc., Boston, MA],
    [Principal Investigator],

  [Aaron Cherian], [FreeMoCap Foundation, Inc., Boston, MA],
    [co-Principal Investigator],

  [Paul Matthis], [FreeMoCap Foundation, Inc., Boston, MA],
    [Research Infrastructure Engineer (Other Personnel)],

  [Endurance Idehen], [[TBD]],
    [I-Corps for PESOSE Industry Mentor (funded consultant)],

  [David Bayus], [San José State University, CADRE Laboratory for New Media,
    San José, CA], [Collaborator; letter of collaboration],

  [Jonathan Nilsson], [GIBBET GAMES AB, Skövde, Sweden],
    [Collaborator; letter of collaboration],

  [Raven Tukes], [The Possible Zone, Boston, MA],
    [Collaborator; letter of collaboration],

  [Sarah Kerr], [Imatest LLC, Boulder, CO],
    [Collaborator; letter of collaboration],

  [Andres Casals], [[TBD]],
    [Contributor; letter of collaboration],

  [Dominic Scott], [[TBD]],
    [Contributor; letter of collaboration],

  [Pooya Moradi Motlagh], [Independent, Rome, Italy],
    [Contributor; letter of collaboration],

  [Ben Scholl], [[TBD]],
    [Collaborator; letter of collaboration],
)

#note[Cross-check before submission: every letter-of-collaboration writer
appears above, and every name above also appears in the PI's COA Table 4.
Resolve all [TBD] organizations.]
