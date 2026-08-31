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
// // SOFT-TOUCH (2026-08-30) — status of the note below, which is largely resolved:
// //   * stadium/federation is now defined and cited ONCE, in §1, and this section
// //     is downstream of it. The definitional sentences below are flagged as the
// //     reader's second encounter; proposed replacement is a one-line callback
// //     ("The transition described in Part 1 — from stadium toward federation —
// //     is what this section scopes."), which is the second-largest saving in the
// //     document. The bolded Track 1 sentence after them stands on its own: keep.
// //   * "problem of low-quality help" landed in §2 (the onboarding-cost paragraph),
// //     so it no longer needs introducing here.
// //   * "scope creep" -> community extensions is still implicit. See the note in
// //     that subsection below.
// // I want to elevate the reference to this book to a higher level, and use its claims as an organizing spine for the proposal as a whole. Things like the users-vs-dev structure described here, but also her commentary on the various poisons and challenges ofFOSS projects ("prob of low quality help", "scope creep") help motivate our activities as targets to assuage them ("low quality help" -> docs, upskilling, interviews to build tools that let people auto-align, ai-assist learning and RTFM/PEBKAC errors to de-load troubleshooting labor, etc. "Scope creep" -> Community Extensions system (like others use) we build the core and the interfaces, community can build their own plugins targetting sub-skellies, ui, or core software - lets users take advantage of new stuff faster, tests code/etc in practice without adding to the labor of the core devs, we can pull in popular/high-performing plug-ins after they have proven themselves as community plugins (like Blender does with,e.g., Grease Pencil and Rigify - started as add-ons, eventually pulled in as core functionality) ). We should find a way to pull that conversation up EARLY in the proposal, and then reference into it throughout the rest of the sections.
// #flag(kind: "redundant")[_Working in Public_ #c("eghbal2020"), an analysis of open-source maintenance and sustainability,  distinguishes open-source projects by the growth of their user and contributor bases. FreeMoCap currently resembles a _stadium_: high user growth with comparatively low contributor growth, leaving a large community dependent on a small maintainer base.] *Track 1 will build on that foundation by scoping the transition toward a _federation_, in which user and contributor bases grow together and technical knowledge, responsibility, and authority are distributed across the ecosystem.*

// #suggestion(note: [Replaces the flagged definitional sentences with a callback. Part 1 defines stadium/federation and cites Eghbal; this only needs to point at it. Your bolded sentence follows unchanged and still has its antecedent.])[
// Part 1 described the shape the project has grown into, and named the transition it now has to make. ]

== Governance Scoping

// Undersells the PEP thing again - we shoudl reference e.g. Numpy and Scipy, both of whom use a similiar PEP-like/RFC structure for how to handle the balance between the need for transparency and community engagement w/o getting bogged down and bottlenecked by consensus seeking effort as the community of users grows and expands. 
Healthy open source ecosystems employ methods to distribute decision-making and knowledge such that it does not depend on any one person. Python's PEP process is one example, in which an elected steering council, trusted core contributors and editors, and a formal proposal process distribute technical authority across the community. We aim to evaluate such models against FreeMoCap's structure and scale, using interviews with maintainers of mature open-source projects during Ecosystem Discovery to supply the candidate models.
// CITATION PROPOSALS (comments only until you validate them into Zotero):
//   NumPy Enhancement Proposals (NEP 0) and SciPy Enhancement Proposals (SEP) —
//   the PEP pattern operating at a scale much closer to ours than CPython's,
//   which makes them the more useful comparison for a reviewer.

NumPy and SciPy run comparable processes for stakeholder-facing transparancy. What these share is a way of keeping consequential decisions visible and open to comment without making every decision wait on consensus. As our project grows, we will adopt these established patterns into our own ecosystem, shaped appropriately for the landscape revealed in the proposed scoping activities. 

== Distributed infrastructure and community extensions

A federated model requires distributed technical knowledge and the ability for
contributors to extend the software without the core team implementing each
addition. FreeMoCap's modular architecture provides a technical basis for this, for example, the `skellytracker` interface provides an open interface through which AI-based pose-estimation models developed by different groups can interoperate with a shared scientific workflow without modification to the underlying pipeline. This interface matters because no single pose-estimation model is adequate acrosssubjects. The algorithms in common use are trained on standard human datasets,and the requirements of biomechanical measurement differ from those the modelswere built to satisfy #c("seethapathiMovementScienceNeeds2019").
 Because the component repositories are organized around fixed domains  — cameras, calibration, image analysis, reconstruction — rather than around any particular model or library, a new pose-estimation method can be adopted without disturbing the rest of the pipeline. 


A community extension, in this context, is code written and maintained by
someone outside the core team that runs against a published interface without
altering the shared pipeline. A researcher whose subjects fall outside existing models could implement a tracker against a documented interface rather than assembling an entire pipeline around it, and the result would be available to everyone facing the same problem, while an AI-tracking method published by a computer-vision researcher can be translated into a reusable scientific workflow for users who would otherwise lack the technical expertise to implement it.

A community extension system is a protection against "scope creep" - the ecosystem can grow in capability without the core team absorbing the maintenance of every addition, and users can adopt new capabilities without waiting for the core maintainers to implement them.  Extensions that prove useful additions can be pulled into the core. 

Track 1 will define the review, distribution, maintenance, and responsibility structures required for this Community Extensions model, informed by projects already operating extension ecosystems. 



== Licensing

FreeMoCap and its component repositories are licensed under the AGPLv3+, the most aggressively open source license available.  Because so much of the landscape of closed-source motion capture operate behind proprietary servers, the AGPLv3+ is the only standard license whose terms would stop a closed-source competitor from running `FreeMoCap` behind a server endpoint while charging users for access.
As such, the AGPLv3+ license ensures that a service built on FreeMoCap returns its improvements to the community. Because the Foundation holds the rights to the codebase, it can also offer alternative terms to organizations whose intended use is incompatible with the AGPLv3+ — keeping the software freely available to everyone else while generating resources for maintenance and stewardship. 

== Long-term Sustainability
// SOFT-TOUCH: §1 promises "a sustainability model." This paragraph lists
// mechanisms without the principle that organizes them — your free-vs-paid rule
// (infinitely duplicable -> free: software, docs, tutorials; everything else
// costs: labor, hardware, server-side processing and storage). One sentence in
// front of the existing list would make it a model rather than an inventory.
// Not drafting it — it is your formulation and reads better in your words.
The FreeMoCap Foundation was incorporated as an IRS-recognized 501(c)(3) public charity to provide an institutional home for the project, and the governance structures scoped above are intended to give that home a distributed contributor base rather than a dependence on any particular maintainer. In parallel, the Foundation will evaluate a diversified model for the long-term sustainability of this research infrastructure, including alternative commercial licensing, standardized hardware kits geared towards students, with higher end software targetting more resourced labs, training and support services, institutional partnerships, and continued grant funding. SkellyTechnologies, LLC, a separate for-profit entity associated with the project, provides an additional pathway for commercial services, SBIR/STTV proposals, and other revenue-generating activities that may support the long-term sustainability of the ecosystem.




