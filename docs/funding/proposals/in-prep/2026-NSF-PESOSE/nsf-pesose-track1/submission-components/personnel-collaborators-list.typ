// =============================================================================
// LIST OF PROJECT PERSONNEL, COLLABORATORS, AND PARTNER ORGANIZATIONS
// (required by NSF 26-506 §V.A; uploaded under Other Supplementary Documents)
//
// Tabular format, columns in EXACTLY this order: Full name | Organization(s)
// | Role in the project. Must include ALL of: PIs, co-PIs, senior/key
// personnel, funded and unfunded consultants, collaborators (including EVERY
// letter-of-collaboration writer), subawardees, postdocs, and project-level
// advisory committee members. NSF staff use this for reviewer selection.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT, note

#show: nsf-doc.with(page-limit: none, draft: DRAFT)

#table(
  columns: (1.6fr, 1.6fr, 1.2fr),
  inset: 4pt,
  table.header([*Full Name*], [*Organization(s)*], [*Role in the Project*]),
  [TODO], [TODO], [TODO],
  [TODO], [TODO], [TODO],
  [TODO], [TODO], [TODO],
)

#note[cross-check: every letter-of-collaboration writer appears in this table]
