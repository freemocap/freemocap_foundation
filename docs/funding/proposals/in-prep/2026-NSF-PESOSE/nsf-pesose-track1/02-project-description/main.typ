// =============================================================================
// PROJECT DESCRIPTION — NSF 26-506 Track 1
//
// HARD LIMIT: 7 pages. Figures, charts, and tables all count.
// No URLs anywhere in this document (use `c("key")` from lib/refs.typ).
// Must include a "Broader Impacts" heading on its own line.
//
// Build:
//   typst compile --input draft=true main.typ   # with page counter + notes
//   typst compile main.typ                      # submission build
//
// THE SPINE — every sentence in this file should be load-bearing for:
//
//   "FreeMoCap is already a working product with real users; what does not
//    exist yet is the organization that would let it survive independent of
//    its current maintainers — and twelve months of scoping is what produces
//    the credible plan for that organization."
//
// The sentence-level test, in priority order:
//   1. Does this make the ECOSYSTEM more believable, or just the SOFTWARE
//      more impressive? (Cut the latter.)
//   2. Is this existing evidence, or planned activity? Never blur them.
//   3. Which Track 1 review criterion does this serve? If none, cut it.
//
// The four Track 1 review criteria this document is graded against:
//   (a) Convincing case that the OSE addresses a societal or national need
//       not currently being adequately addressed
//   (b) Clear long-term vision for sustaining the OSE
//   (c) Recruitment strategy for new contributors and for growing the userbase
//   (d) A specific, actionable list of milestones and an evaluation plan
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT

#show: nsf-doc.with(page-limit: 7, draft: DRAFT)

// -----------------------------------------------------------------------------
// Order matters. This sequence front-loads the need and the evidence, then
// spends the middle on the four solicitation-mandated Track 1 content areas,
// then closes on milestones. Reorder if your argument wants it, but keep
// Broader Impacts and Prior Support last — reviewers expect them there.
// -----------------------------------------------------------------------------

#include "sections/01-need-and-framing.typ"
#include "sections/02-product-status.typ"
#include "sections/03-ecosystem-discovery.typ"
#include "sections/04-organization-governance.typ"
#include "sections/05-risk-security.typ"
#include "sections/06-community-building.typ"
#include "sections/07-milestones-evaluation.typ"
#include "sections/08-broader-impacts.typ"
#include "sections/09-prior-nsf-support.typ"
