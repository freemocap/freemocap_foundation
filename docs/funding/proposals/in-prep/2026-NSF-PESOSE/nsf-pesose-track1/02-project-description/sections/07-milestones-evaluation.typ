#import "../../template/nsf.typ": budget, note, flag, suggestion, new, broader-impacts

= Milestones and Evaluation Plan

#include "../floats/tbl-milestones.typ"

== Evaluation
// COMPACTION (2026-08-31): the paragraph below is flagged rather than cut. It
// re-enumerates, in prose, commitments the milestone table above already carries
// in its Evaluation column — and it does so on a different axis (by output
// rather than by quarter), which is why merging the two tables would force
// repetition instead of removing it.
//
// Proposed replacement: floats/tbl-evaluation.typ, one row per scoping area
// named in Part 1, at 9.5pt (legal — PAPPG 24-1 II.C.2.a exempts tables). It
// covers five areas where the prose covered three, and still occupies less
// vertical space, because a table drops the connective grammar prose needs.
// Only the final sentence survives as prose, below the table.
#flag(kind: "verbose")[Track 1 success will be evaluated by: (1) documented governance roles, contributor pathways, and software architecture, assessed by whether contributors outside the core team can act on them without direct consultation; (2) educational and onboarding materials, assessed through pilot participant performance and observed barriers; and (3) a framework for developing, reviewing, distributing, and maintaining community extensions, assessed through limited pilots of the proposed extension process. Each output will be revised in response to stakeholder feedback before incorporation into the final ecosystem plan.]

#suggestion(note: [Replaces the flagged paragraph. Five rows keyed to Part 1's scoping areas, so a reviewer checking criterion (d) against Part 1's promises reads down one column. Retains the stakeholder-revision sentence as prose since it applies to every row.])[
#include "../floats/tbl-evaluation.typ"

Each output will be revised in response to stakeholder feedback before incorporation into the final ecosystem plan. ]
(4) a documented validation and benchmarking methodology, assessed by whether an independent laboratory can reproduce our accuracy checks on its own hardware and recordings; and (5) a sustainability model, assessed by review of its revenue and maintenance assumptions against the demand evidence gathered during discovery. 



