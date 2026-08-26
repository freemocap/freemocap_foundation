// PART 4 — Organization and Governance.  Page budget: ~1.0
//
// One of the four mandated Track 1 content areas:
//   "Outline activities to establish governance and licensing models,
//    development and integration processes, security and privacy safeguards,
//    and metrics for long-term success."
//
// Serves criterion (b): the long-term sustaining vision.
//
// THIS IS THE HEART OF THE PROPOSAL, and the place where your unusual
// situation has to be handled head-on. The FreeMoCap Foundation already
// exists, which is atypical for a Track 1 applicant and cuts both ways.
//
// The resolution — honest, not a dodge: INCORPORATION IS NOT GOVERNANCE. A
// 501(c)(3) whose maintainers all already know each other is a legal wrapper,
// not a distributed development organization. Name the genuine gaps:
//   * a contribution and review process that works when contributors are not
//     already in the room
//   * a succession story for when a key maintainer's role changes
//   * a deliberate licensing analysis rather than an inherited license
//   * a security and release process
//   * any mechanism for funding maintenance after grant money ends
//
// Saying this plainly converts your biggest apparent weakness into evidence
// that you understand the problem well enough to be worth funding. Put it
// early in this section rather than letting a reviewer discover it.

#import "../../template/nsf.typ": budget, note
#import "../../template/refs.typ": c

#budget("~1.0 page")

= Organization and Governance

The FreeMoCap Foundation was incorporated as a 501(c)(3) in XXXX and holds stewardship of the projection's main repositories. The Foundation provides long-term stewardship of the project, but the structures needed to distribute technical authority, maintenance responsibility, and decision-making across a broader contributor community remain underdeveloped.

Eghbal #c("eghbal2020") distinguishes open-source projects by the growth of their user and contributor bases, with FreeMoCap exhibiting the pattern of a _stadium_ - a project with high user growth and low contributor growth, with the audience then depending on the work of a few people. Track 1 will scope the transition toward a _federation_, in which user and contributor bases grow together and technical knowledge, responsibility, and authority are distributed across the ecosystem.

== Governance Scoping

Federated projects require the distribution of decision-making and knowledge such that it does not depend on any one person. Python's PEP process is on example, in which an elected steering council, trusted core contributors and editors, and a formal proposal process distribute technical authority across the community. We aim to evaluate such models against FreeMoCap's structure and scale, using interviews with maintainers of mature open-source projects during Ecosystem Discovery to supply the candidate models. 

== Distributed infrastructure and community extensions

A more federated model requires distributed technical knowledge, and the ability for contributors to extend the software without the core team implementing each addition. FreeMoCap's existing modular architecture provides a technical basis for this: for example, the `skellytracker` interface defines a pathway for alternative pose-estimation
models to enter the workflow without modification to the shared pipeline. This is crucial for adapting to domain specific research as there is no single adequate pose estimation model — the algorithms in common use are trained on standard human datasets, and the requirements of biomechanical measurement differ from those the models were built for
#c("seethapathiMovementScienceNeeds2019").

A community extension system would allow that work to be done once and reused,
and would let a researcher publishing a new method reach users who would
otherwise lack the expertise to implement it. Track 1 will examine what review
and quality standards extensions must meet, how they are packaged and
distributed, and how maintenance responsibility divides between extension and
core maintainers - informed by interviews with maintainers of projects already
operating extension systems. The resulting patterns would apply to other
community-developed capabilities, such as biomechanical analyses.

== Licensing

FreeMoCap and its component repositories are licensed under the AGPLv3+, on the
premise that improvements to publicly funded infrastructure are most valuable
when they return to the broader community. The Foundation retains the ability to
offer alternative terms to organizations whose intended use is incompatible with
the AGPL, keeping the software freely available while generating resources for
maintenance and stewardship.


== Long-term Sustainability
The governance structures scoped above are sustainability meant to maintain the FreeMoCap ecosystem with a distributed contributor base, beyond changes in the core development team. In parallel, the Foundation will evaluate a
diversified model for financial sustainability, including alternative
commercial licensing, standardized hardware kits, training and support
services, institutional partnerships, and continued grant funding.



// -----------------------------------------------------------------------------
// CLOSING OUTPUT SENTENCE — one sentence, no heading, naming what this section
// produces. Keeps activity and output adjacent so the section does not read as
// pure intention, without duplicating the milestone table in Part 7.
// Must correspond to a row in that table.
// -----------------------------------------------------------------------------
// TODO: "This work produces draft governance and licensing documents, posted publicly and reviewed by maintainers of comparable OSEs."
