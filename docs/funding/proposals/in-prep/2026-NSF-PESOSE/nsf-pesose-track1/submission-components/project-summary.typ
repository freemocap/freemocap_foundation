// =============================================================================
// PROJECT SUMMARY — 1 page max (PAPPG II.D.2.b; NSF 26-506 §V.A)
//
// Three labeled sections, in this order: Overview, Intellectual Merit,
// Broader Impacts. NSF 26-506 adds one hard rule: the LAST line of the
// document must be "Keywords:" + 2–5 semicolon-separated keywords.
// #keywords() enforces the count and must remain the final line.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT, keywords, note

#show: nsf-doc.with(page-limit: 1, draft: DRAFT)

= Overview
// TODO: what happens if funded, objectives, methods. Lead with accessibility.

= Intellectual Merit
// TODO: potential to advance knowledge.

= Broader Impacts
// TODO: potential to benefit society. Accessibility through-line.

#note[nothing may be added after the Keywords line]

#keywords(
  "open-source ecosystem",
  "motion capture",
  "biomechanics",
  "research software sustainability",
)
