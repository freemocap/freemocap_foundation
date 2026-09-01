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
// All organizations resolved. Idehen from his LinkedIn profile (employer only;
// title not shown publicly). Scholl from his CU Anschutz faculty page.
// Casals and Scott confirmed independent by the PI.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT, note

#show: nsf-doc.with(page-limit: none, draft: DRAFT,
  title: [List of Project Personnel, Collaborators, and Partner Organizations])

#set text(hyphenate: false)

#table(
  columns: (1.15fr, 2fr, 1.35fr),
  inset: 5pt,
  align: left + top,
  table.header([*Full Name*], [*Organization(s)*], [*Role in the Project*]),

  [Jonathan Samir Matthis], [FreeMoCap Foundation, Inc., Boston, MA],
    [Principal Investigator],

  [Aaron Cherian], [FreeMoCap Foundation, Inc., Boston, MA],
    [co-Principal Investigator],

  [Paul Matthis], [FreeMoCap Foundation, Inc., Boston, MA],
    [Research Infrastructure Engineer (Other Personnel)],

  [Endurance Idehen], [Chorus Innovations, Austin, TX],
    [I-Corps for PESOSE Industry Mentor (funded consultant)],

  [David Bayus], [San José State University, CADRE Laboratory for New Media,
    San José, CA], [Collaborator; letter of collaboration],

  [Jonathan Nilsson], [GIBBET GAMES AB, Skövde, Sweden],
    [Collaborator; letter of collaboration],

  [Raven Tukes], [The Possible Zone, Boston, MA],
    [Collaborator; letter of collaboration],

  [Sarah Kerr], [Imatest LLC, Boulder, CO],
    [Collaborator; letter of collaboration],

  [Andres Casals], [Independent, Rio de Janeiro, Brazil],
    [Contributor; letter of collaboration],

  [Dominic Scott], [Independent, Toronto, Canada],
    [Contributor; letter of collaboration],

  [Pooya Moradi Motlagh], [Independent, Rome, Italy],
    [Contributor; letter of collaboration],

  [Benjamin Scholl], [University of Colorado Anschutz, Department of
    Physiology and Biophysics, Aurora, CO],
    [Collaborator; letter of collaboration],
)

#note[Cross-check before submission: every letter-of-collaboration writer
appears above, and every name above also appears in the PI's COA Table 4.]
