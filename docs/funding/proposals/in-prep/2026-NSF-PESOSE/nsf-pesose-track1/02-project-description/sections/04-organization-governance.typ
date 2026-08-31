#import "../../template/nsf.typ": budget, note, flag, suggestion, new, broader-impacts
#import "../../template/refs.typ": c

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




= Organization and Governance
// I want to elevate the reference to this book to a higher level, and use its claims as an organizing spine for the proposal as a whole. Things like the users-vs-dev structure described here, but also her commentary on the various poisons and challenges ofFOSS projects ("prob of low quality help", "scope creep") help motivate our activities as targets to assuage them ("low quality help" -> docs, upskilling, interviews to build tools that let people auto-align, ai-assist learning and RTFM/PEBKAC errors to de-load troubleshooting labor, etc. "Scope creep" -> Community Extensions system (like others use) we build the core and the interfaces, community can build their own plugins targetting sub-skellies, ui, or core software - lets users take advantage of new stuff faster, tests code/etc in practice without adding to the labor of the core devs, we can pull in popular/high-performing plug-ins after they have proven themselves as community plugins (like Blender does with,e.g., Grease Pencil and Rigify - started as add-ons, eventually pulled in as core functionality) ). We should find a way to pull that conversation up EARLY in the proposal, and then reference into it throughout the rest of the sections.
_Working in Public_ #c("eghbal2020"), an analysis of open-source maintenance and sustainability,  distinguishes open-source projects by the growth of their user and contributor bases. FreeMoCap currently resembles a _stadium_: high user growth with comparatively low contributor growth, leaving a large community dependent on a small maintainer base. *Track 1 will build on that foundation by scoping the transition toward a _federation_, in which user and contributor bases grow together and technical knowledge, responsibility, and authority are distributed across the ecosystem.*

== Governance Scoping

// Undersells the PEP thing again - we shoudl reference e.g. Numpy and Scipy, both of whom use a similiar PEP-like/RFC structure for how to handle the balance between the need for transparency and community engagement w/o getting bogged down and bottlenecked by consensus seeking effort as the community of users grows and expands. 
Federated projects require the distribution of decision-making and knowledge such that it does not depend on any one person. Python's PEP process is one example, in which an elected steering council, trusted core contributors and editors, and a formal proposal process distribute technical authority across the community. We aim to evaluate such models against FreeMoCap's structure and scale, using interviews with maintainers of mature open-source projects during Ecosystem Discovery to supply the candidate models. 

== Distributed infrastructure and community extensions

A federated model requires distributed technical knowledge and the ability for
contributors to extend the software without the core team implementing each
addition. FreeMoCap's modular architecture provides a technical basis for this:
the `skellytracker` interface provides an open interface through which AI-based pose-estimation models developed by different groups can interoperate with a shared scientific workflow without modification to the underlying pipeline. This interface matters because no single pose-estimation model is adequate across
subjects. The algorithms in common use are trained on standard human datasets,
and the requirements of biomechanical measurement differ from those the models
were built to satisfy #c("seethapathiMovementScienceNeeds2019").

//The reasoning here is sound (e.g. non-standard subjects), but we should also reference the fact that models/tech changes, so creating our poly-repos around core structures (cameras, image-analysis, etc) lets us adapt our pipelines around the advances of technology with relative ease. If we do this right, we get BOTH advantages

A community extension, in this context, is code written and maintained by
someone outside the core team that runs against a published interface without
altering the shared pipeline. A researcher whose subjects fall outside existing models could implement a tracker against a documented interface rather than assembling an
entire pipeline around it, and the result would be available to everyone facing
the same problem, while an AI method published by a computer-vision researcher can be translated into a reusable scientific workflow for users who would otherwise lack the technical expertise to implement it. Track 1 will define the review, distribution, maintenance, and responsibility structures required for this model, informed by projects already operating extension ecosystems. The resulting framework could support other community-developed capabilities, including biomechanical analyses.

== Licensing
// Need stronger explaination here - we use AGPLv3+ because so much of the landscape here hides critical functionlaity behind server endpoints, and the AGPLv3 is the ONLY license that protects us from those folks just running FMC behind a proprietary endpoint. Our ownership structure allows us to create B2B sub-licensing agreements to people that need a more permissive non-AGPLv3 license, and those licenses can be part of our sustainability/busieness model 
FreeMoCap and its component repositories are licensed under the AGPLv3+, on the
premise that improvements to publicly funded infrastructure are most valuable
when they return to the broader community. The Foundation retains the ability to
offer alternative terms to organizations whose intended use is incompatible with
the AGPLv3+, keeping the software freely available while generating resources for
maintenance and stewardship.

== Long-term Sustainability
The FreeMoCap Foundation was incorporated as an IRS-recognized 501(c)(3) public charity to provide an institutional home for the project, and the governance structures scoped above are intended to give that home a distributed contributor base rather than a dependence on any particular maintainer. In parallel, the Foundation will evaluate a diversified model for the long-term sustainability of this research infrastructure, including alternative commercial licensing, standardized hardware kits, training and support services, institutional partnerships, and continued grant funding. SkellyTechnologies, LLC, a separate for-profit entity associated with the project, provides an additional pathway for commercial services and other revenue-generating activities that may support the long-term sustainability of the ecosystem.

// Money making sources - Shop (sell hardware, student kits, etc), Clients (specialized workflows, custom rigs, etc), Grants, Donations (small potatoes for now, but grows with user base). Also seek - SBIR/STTV w/e under the SKellyTrech LLC to support these business-flavored activities

// -----------------------------------------------------------------------------
// CLOSING OUTPUT SENTENCE — one sentence, no heading, naming what this section
// produces. Keeps activity and output adjacent so the section does not read as
// pure intention, without duplicating the milestone table in Part 7.
// Must correspond to a row in that table.
// -----------------------------------------------------------------------------
// TODO: "This work produces draft governance and licensing documents, posted publicly and reviewed by maintainers of comparable OSEs."

