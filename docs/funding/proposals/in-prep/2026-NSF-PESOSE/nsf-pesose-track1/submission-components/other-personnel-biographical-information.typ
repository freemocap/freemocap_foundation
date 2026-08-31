// =============================================================================
// OTHER PERSONNEL BIOGRAPHICAL INFORMATION — SCAFFOLD, NOT READY TO SUBMIT
//
// Governing rule: PAPPG II.D.2.h(b), verbatim —
//   "For the personnel categories listed below, the proposal also may include
//    information on exceptional qualifications that merit consideration in the
//    evaluation of the proposal. While the requirement to use SciENcv for
//    preparation and submission of the biographical sketch is for any
//    individual designated as a senior/key person, the biographical
//    information for `other personnel' may be freeform. The biographical
//    information must be clearly identified as "Other Personnel" biographical
//    information and uploaded as a single PDF file..."
//    (1) Postdoctoral associates  (2) Other professionals  (3) Students
//
// What that means for this proposal:
//   * OPTIONAL. Omitting it is fully compliant.
//   * FREEFORM. No SciENcv, no NSF template, no page limit.
//   * ONE PDF covering everyone included.
//   * Must carry the literal label "Other Personnel" — the heading below does.
//
// WHO IS ELIGIBLE TO APPEAR HERE:
//   Only people budgeted on Line B. In this budget that is exactly one person:
//   Paul Matthis, Research Infrastructure Engineer, 9.0 calendar months.
//
//   NOT eligible: Matthis and Cherian (senior/key — their biosketches are
//   SciENcv documents under Senior/Key Personnel Documents), and Endurance
//   Idehen (an I-Corps Industry Mentor paid on G.3 Consultant Services, not
//   Line A/B personnel — PAPPG restricts this document to the three categories
//   above).
//
// EVERY FIELD BELOW IS A BLANK. Nothing here has been inferred, guessed, or
// filled in. See the checklist at the bottom of this file for exactly what
// information is needed.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT

#show: nsf-doc.with(
  page-limit: none,
  draft: DRAFT,
  title: [Other Personnel Biographical Information],
)

// The literal string "Other Personnel" is required by PAPPG II.D.2.h(b).
= Other Personnel

The following biographical information is provided for project personnel
budgeted under Other Personnel (Line B).

== [FULL NAME — TO BE PROVIDED]

*Project role:* Research Infrastructure Engineer (Other Personnel, Line B;
9.0 calendar months requested)

*Current position:* [TO BE PROVIDED]

*Education:* [TO BE PROVIDED — degrees, institutions, and dates; or state
explicitly that no degree is held, which is permitted for this category]

*Professional experience:* [TO BE PROVIDED — employers, roles, and dates]

*Qualifications relevant to the proposed work:* [TO BE PROVIDED — the budget
justification assigns this role responsibility for release and
continuous-integration infrastructure (GitHub Actions), project web services,
the Google Cloud Platform environment hosting project telemetry, the
provenance and data-quality instrumentation scoped in the Risk Analysis and
Security Plan, the technical environment for the community education pilots,
and contributor-facing operational documentation. This section should
establish the specific experience that supports those responsibilities.]

*Relevant products and contributions:* [TO BE PROVIDED — open-source
contributions, repositories, publications, or technical work; or omit this
line entirely if there are none to list]

// =============================================================================
// INFORMATION NEEDED BEFORE THIS DOCUMENT CAN BE BUILT AND SUBMITTED
//
//  1. Confirm whether to include this document at all. It is OPTIONAL. The
//     argument for including it: this is a $300K award and Line B carries 9.0
//     calendar months of budgeted effort, and the solicitation requires "a
//     strong justification that makes the case that the team is qualified."
//     The argument against: PAPPG asks specifically for "exceptional
//     qualifications that merit consideration," so a thin entry is worse than
//     no entry.
//
//  2. Full name exactly as it should appear.
//
//  3. Current position title.
//
//  4. Education: degree(s), institution(s), field(s), date(s) — or an explicit
//     statement that none is held.
//
//  5. Professional experience: employer, role, dates.
//
//  6. The specific technical background behind the responsibilities listed in
//     the budget justification (CI/CD, web services, GCP, telemetry and
//     provenance instrumentation, education-pilot infrastructure).
//
//  7. Any products, repositories, or publications to list.
//
//  8. Confirm whether anyone else should appear here. Per PAPPG this document
//     covers postdoctoral associates, other professionals, and students. This
//     budget has exactly one such person.
//
// NOTE ON A RELATED DISCLOSURE: Paul Matthis and Jonathan Samir Matthis share a
// surname. Nothing in the PAPPG or NSF 26-506 requires disclosing a family
// relationship between project personnel in this document, and this scaffold
// does not assume one exists. If one does, the place it can matter is the
// organizational conflict-of-interest and compensation-reasonableness posture
// of a small nonprofit, not this document. Raise it with your SPO/AOR rather
// than resolving it here.
// =============================================================================
