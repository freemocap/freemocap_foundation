// =============================================================================
// BUDGET JUSTIFICATION — no formal page limit; keep tight
//
// Portal: the budget itself is a Research.gov form; this PDF is the
// justification upload. NSF 26-506 + the PESOSE website add program-specific
// rules that a reviewer will check line-by-line:
//
//   * I-Corps for PESOSE line item, up to $30K, is MANDATORY on Track 1 —
//     includes the participation fee (amount posted on the PESOSE website).
//   * Salary support for a team of 3–5 people for I-Corps (TL/EL/IM roles).
//   * Nonprofit salary rates <= 75th-percentile BLS rate for the role +
//     geography; per employee: SOC code + live link to the BLS page.
//   * Salary math uses 173.33 hours/month. NSF does not recognize C-level
//     titles — map rates to responsibilities.
//   * Line G equipment NOT allowed on Track 1.
//   * Owners/equity holders of the proposing org may not be paid as
//     consultants, contractors, or via subaward.
//   * Indirect: negotiated NICRA if one exists, else 15% de minimis of MTDC.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT, note

#show: nsf-doc.with(page-limit: none, draft: DRAFT, title: [Budget Justification])

= Senior/Key Personnel (Line A)
// TODO: title, salary rate, time commitment, total requested salary,
// responsibilities — for PI and each senior/key person.

= Other Personnel (Line B)
// TODO: same fields per person. All Line A/B personnel must be employees of
// the proposing organization.

= I-Corps for PESOSE (mandatory)
// TODO: participation fee + salary for the 3–5 person training team
// (TL, EL, IM). <= $30K total.

= Fringe Benefits (Line C)
// TODO: rate, base, escalation.

= Travel (Line E)
// TODO: description + why necessary; per-trip breakdown in tabular form.
// No international travel on I-Corps funds.

= Materials, Supplies, Consultants, Subawards (Line G)
// TODO: justification per line item; consultants >$50K need a signed letter
// uploaded under Other Supplementary Documents.

= Indirect Costs (Line I)
// TODO: NICRA rate or 15% de minimis of modified total direct costs.

#note[check every salary against the 75th-percentile BLS rule before final]
