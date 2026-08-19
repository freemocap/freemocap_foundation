// =============================================================================
// BUDGET JUSTIFICATION — 5 pages maximum per proposal (PAPPG II.D.2.f)
//
// A separate budget AND its own separate justification of up to 5 pages is
// required for each named subrecipient. If Northeastern (or the Foundation,
// depending on which entity leads) comes in as a subaward, copy this file into
// a sibling directory for that budget.
//
// TRACK 1 CEILING: $300,000 total, up to 12 months. That is a hard cap under
// NSF 26-506, not a target.
//
// MANDATORY LINE ITEM: salary support for I-Corps for PESOSE participation by
// a team of at least three and no more than five people. NSF's supplemental
// budget guidance says to use 173.33 hours per month in salary calculations.
//
// EMPLOYEE CONSTRAINT: all personnel on budget lines A and B must be employees
// of the proposing organization. Anyone who is not — a collaborator at another
// institution, an unpaid community contributor — cannot appear there. They
// come in as a subaward (line G5) or a consultant (line G3), and consultants
// require their expertise, affiliation, normal daily rate, and expected days
// of service to be stated here.
//
// COST SHARING: prohibited. NSF 26-506 states that inclusion of voluntary
// committed cost sharing is prohibited, so line M stays empty. Note the trap
// in PAPPG: proposing a LOWER indirect rate than your negotiated one counts as
// a cost sharing violation.
//
// INDIRECT COSTS: the solicitation sets no F&A limitation. If the lead has no
// negotiated rate agreement, PAPPG 24-1 permits a de minimis rate applied to
// modified total direct costs with no supporting documentation. VERIFY THE
// CURRENT PERCENTAGE — 2 CFR 200.414(f) was revised after PAPPG 24-1 was
// published and neither supplement updates that passage. Ask the program
// officer in writing.
//
// Volunteer and community resources do NOT belong here. They have no dollar
// value in this document; describe them in Facilities, Equipment and Other
// Resources instead.
// =============================================================================

#import "../lib/nsf.typ": nsf-doc, DRAFT, note

#show: nsf-doc.with(page-limit: 5, draft: DRAFT, title: [Budget Justification])

= A. Senior Personnel
// TODO: person-months and rates. Employees of the proposing organization only.

= B. Other Personnel
// TODO: same constraint as above.

= C. Fringe Benefits
// TODO: per the organization's established rates.

= E. Travel
// TODO: include I-Corps for PESOSE travel, plus any community-building events
//       proposed in the Project Description.

= F. Participant Support Costs
// TODO: only if you are running workshops or training with non-employee
//       participants. Must be itemized and justified. Indirect costs are
//       generally not allowed on this category.

= G. Other Direct Costs
== G1. Materials and Supplies
== G2. Publication / Documentation / Dissemination
// Note: PAPPG explicitly allows documentation, debugging, and data curation
// costs here — a natural fit for an open-source ecosystem proposal.
== G3. Consultant Services
// TODO: expertise, affiliation, daily rate, days of service — all required.
== G5. Subawards
// TODO: cross-reference the separate subaward budget justification.

= I. Indirect Costs
// TODO: state the rate and the base explicitly.

#note[does every line trace to an activity named in the Project Description?]
