// =============================================================================
// PROJECT DESCRIPTION — NSF 26-506 Track 1
// Single-file layout retired 2026-08-30: back to main.typ + sections/ + floats/.
// All per-part guidance comments live in their section files.
// =============================================================================
//
// HARD LIMIT: 7 pages. Figures, charts, and tables all count.
// No URLs anywhere in this document (use `c("key")` from template/refs.typ).
// Must include a "Broader Impacts" heading on its own line.
//
// Build:
//   typst watch main.typ                        # live preview (draft is the default)
//   typst compile --input draft=false main.typ  # submission build
//   ./build.sh final                            # all sections, submission mode
//
// THE SPINE (v2 — see notes/spine-spec.md):
//
//   FreeMoCap is a validated measurement instrument with an organically
//   growing community of users spanning students/professionals and
//   artists/researchers. Its maintainer base has not grown symmetrically:
//   in Eghbal's terms, the project has the structure of a "stadium" — high
//   user growth, stagnant maintainer growth — the common structure of
//   mid-scale open source projects, not a project-specific failure. The
//   software's recent full rebuild (V2, in alpha) — polyrepo separation,
//   client/server architecture, one-click professional desktop installer —
//   lowered the technical cost of contribution and creates the decision
//   window: what remains is organizational rather than technical. Track 1
//   funds the scoping and discovery, in service of Track 2, of five areas:
//   community landscape and needs (Part 3); documentation and
//   contributor-upskilling pathways (Part 6); governance and contribution
//   practices (Part 4); validation and benchmarking methodology (Part 5);
//   sustainability model (Part 4).
//
// TONE RULES: no branded constructs; no dramatized stakes; declarative,
// evidence-first; stadium/federation vocabulary defined once, cited once,
// used sparingly; honest about limitations without self-flagellation.
//
// V2 GUARDRAIL: Track 1 funds planning, not product development. V2 appears
// only as evidence of active maintenance and motivation for organizational
// scoping — never as funded work.
//
// CITATION RULE: proposed citations appear as // comments only. Nothing
// enters the rendered text or the .bib until Jon validates it in Zotero.
//
// TEXT LIFECYCLE: #suggestion (proposed, green) -> #new (accepted, blue,
// tracked) -> plain prose (settled).
//
// The sentence-level test stays subordinate: (1) ecosystem-believable, not
// software-impressive; (2) evidence vs. planned activity, never blurred;
// (3) which Track 1 criterion does it serve.

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

