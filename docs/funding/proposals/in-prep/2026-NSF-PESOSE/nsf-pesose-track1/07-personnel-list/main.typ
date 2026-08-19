// =============================================================================
// LIST OF PROJECT PERSONNEL, COLLABORATORS, AND PARTNER ORGANIZATIONS
// Required by NSF 26-506. Uploaded as an Other Supplementary Document.
//
// NSF staff use this for reviewer conflict-of-interest management, so
// omissions can produce a conflicted reviewer and a compromised review.
//
// The solicitation specifies tabular format with columns in THIS order:
//     Full name, Organization(s), Role in the project
//
// Must include ALL of:
//   * PIs and co-PIs
//   * Senior/Key Personnel
//   * funded AND unfunded consultants
//   * collaborators — INCLUDING everyone who provided a letter of
//     collaboration (easy to forget; cross-check against 08-letters/)
//   * subawardees
//   * postdocs
//   * project-level advisory committee members
//
// This is separate from the per-person Collaborators & Other Affiliations
// (COA) documents, which are single-copy documents generated per senior/key
// person and are not seen by reviewers.
// =============================================================================

#import "../lib/nsf.typ": nsf-doc, DRAFT, note

#show: nsf-doc.with(
  page-limit: none,
  draft: DRAFT,
  title: [List of Project Personnel, Collaborators, and Partner Organizations],
)

#table(
  columns: (1fr, 1.2fr, 1fr),
  align: left,
  stroke: 0.5pt,
  inset: 5pt,
  table.header([*Full name*], [*Organization(s)*], [*Role in the project*]),
  [TODO], [TODO], [PI],
  [TODO], [TODO], [co-PI],
  [TODO], [TODO], [Letter of collaboration provider],
)

#note[cross-check every letter writer in 08-letters/ appears above]
