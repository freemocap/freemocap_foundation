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

_Working in Public_ #c("eghbal2020") distinguishes open-source projects by the growth of their user and contributor bases. FreeMoCap currently resembles a _stadium_: high user growth with comparatively low contributor growth, leaving a large community dependent on a small maintainer base. *Track 1 will build on that foundation by scoping the transition toward a _federation_, in which user and contributor bases grow together and technical knowledge, responsibility, and authority are distributed across the ecosystem.*

== Governance Scoping

Federated projects require the distribution of decision-making and knowledge such that it does not depend on any one person. Python's PEP process is one example, in which an elected steering council, trusted core contributors and editors, and a formal proposal process distribute technical authority across the community. We aim to evaluate such models against FreeMoCap's structure and scale, using interviews with maintainers of mature open-source projects during Ecosystem Discovery to supply the candidate models. 

== Distributed infrastructure and community extensions

A federated model requires distributed technical knowledge and the ability for
contributors to extend the software without the core team implementing each
addition. FreeMoCap's modular architecture provides a technical basis for this:
the `skellytracker` interface defines a pathway for alternative pose-estimation
models to enter the workflow without modification to the shared pipeline. That
pathway matters because no single pose-estimation model is adequate across
subjects. The algorithms in common use are trained on standard human datasets,
and the requirements of biomechanical measurement differ from those the models
were built to satisfy #c("seethapathiMovementScienceNeeds2019").

A community extension, in this context, is code written and maintained by
someone outside the core team that runs against a published interface without
altering the shared pipeline. A researcher whose subjects fall outside existing models could implement a tracker against a documented interface rather than assembling an
entire pipeline around it, and the result would be available to everyone facing
the same problem, while a method published by a computer-vision researcher can be translated into practice for users who would otherwise lack the technical expertise to implement it. Track 1 will define the review, distribution, maintenance, and responsibility structures required for this model, informed by projects already operating extension ecosystems. The resulting framework could support other community-developed capabilities, including biomechanical analyses.

== Licensing

FreeMoCap and its component repositories are licensed under the AGPLv3+, on the
premise that improvements to publicly funded infrastructure are most valuable
when they return to the broader community. The Foundation retains the ability to
offer alternative terms to organizations whose intended use is incompatible with
the AGPLv3+, keeping the software freely available while generating resources for
maintenance and stewardship.

== Long-term Sustainability
The FreeMoCap Foundation was incorporated as an IRS-recognized 501(c)(3) public charity to provide an institutional home for the project, and the governance structures scoped above are intended to give that home a distributed contributor base rather than a dependence on any particular maintainer. In parallel, the Foundation will evaluate a diversified model for the long-term sustainability of this research infrastructure, including alternative commercial licensing, standardized hardware kits, training and support services, institutional partnerships, and continued grant funding. SkellyTech, LLC, a separate for-profit entity associated with the project, provides an additional pathway for commercial services and other revenue-generating activities that may support the long-term sustainability of the ecosystem.



// -----------------------------------------------------------------------------
// CLOSING OUTPUT SENTENCE — one sentence, no heading, naming what this section
// produces. Keeps activity and output adjacent so the section does not read as
// pure intention, without duplicating the milestone table in Part 7.
// Must correspond to a row in that table.
// -----------------------------------------------------------------------------
// TODO: "This work produces draft governance and licensing documents, posted publicly and reviewed by maintainers of comparable OSEs."
