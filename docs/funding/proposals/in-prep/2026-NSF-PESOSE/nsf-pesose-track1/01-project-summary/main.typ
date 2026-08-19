// =============================================================================
// PROJECT SUMMARY — 1 page maximum (PAPPG II.D.2.b)
//
// Three required components, and NSF treats them as distinct: an Overview, a
// statement on Intellectual Merit, and a statement on Broader Impacts. Use the
// headings below — Research.gov historically presented these as separate boxes,
// and reviewers look for them by name.
//
// This is NOT an abstract. PAPPG says so explicitly. An abstract describes the
// document; this describes the activity and its significance.
//
// NSF 26-506 adds one hard requirement: the LAST line must be a prioritized
// keyword list, beginning "Keywords:" with semicolon separators, 2-5 entries.
// The `keywords()` helper enforces the count.
//
// Lead with the accessibility argument. This page is the only thing some panel
// members will read carefully before the discussion.
// =============================================================================

#import "../lib/nsf.typ": nsf-doc, DRAFT, keywords, note

#show: nsf-doc.with(page-limit: 1, draft: DRAFT)

= Overview
// TODO: what would happen if funded, plus objectives and methods.

= Intellectual Merit
// TODO: potential to advance knowledge.

= Broader Impacts
// TODO: potential to benefit society. Accessibility through-line.

#note[is this readable by a panelist outside biomechanics?]

// MUST be the final line of the document.
#keywords(
  "open-source ecosystem",
  "motion capture",
  "biomechanics",
  "research software sustainability",
)
