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

== Governance Scoping

Healthy open source ecosystems employ methods to distribute decision-making and knowledge such that it does not depend on any one person. In the Python Enhancement Proposal (PEP) process, upcoming software changes are announced and discussed via public Request For Comments (RFCs) that invite community input but (critically) do not gate progress on strict consensus. NumPy and SciPy run comparable processes (NEP and SEP, respectively) for stakeholder-facing transparency. What these share is a way of keeping consequential decisions visible and open to comment without making every decision wait on consensus. Track 1 will determine how these patterns should be adapted for a project of FreeMoCap's scale, shaped by the community landscape revealed through ecosystem discovery.

== Distributed infrastructure and community plug-ins

FreeMoCap's modular architecture provides a technical basis for community plug-ins.  Because the component repositories are organized around fixed domains — cameras, calibration, image analysis, reconstruction — rather than around any particular model or library, a new pose-estimation method can be adopted without disturbing the rest of the pipeline. For example, the `skellytracker` architecture exposes an open interface through which AI-based pose-estimation models developed by different groups can interoperate with a shared scientific workflow without modification to the underlying pipeline (@fig-data A). This interface matters because no single pose-estimation model is adequate across all subjects. The algorithms in common use are trained on standard human datasets, and the requirements of biomechanical measurement differ from those the models were built to satisfy #c("seethapathiMovementScienceNeeds2019").


A *community plug-in*, in this context, is code written and maintained by someone outside the core team that runs against a published interface without altering the shared pipeline. A researcher whose subjects fall outside existing models could implement a tracker against a documented interface rather than assembling an entire pipeline around it, and the result would be available to everyone facing the same problem, while an AI-tracking method published by a computer-vision researcher can be translated into a reusable scientific workflow for users who would otherwise lack the technical expertise to implement it.

A community plug-in system is a classic protection against "scope creep" - the ecosystem can grow in capability without the core team absorbing the maintenance of every addition, and users can adopt new capabilities without waiting for the core maintainers to implement them.  Extensions that prove useful additions through community use can be pulled into the core. Community plug-ins allow for a separation between the development of the core architecture (on available to high level developers and trusted contributors), and softer, lower-stakes context of plug-in development. 

Track 1 will define the review, distribution, maintenance, and responsibility structures required for this Community Plug-In model, informed by projects already operating plug-in ecosystems and the needs and preferences of the members of our community who are likely to participate. 



== Licensing

FreeMoCap and its component repositories are licensed under the AGPLv3+.  Because so much of the landscape of closed-source motion capture operates behind proprietary servers, the AGPLv3+ is the only standard license whose terms would stop a closed-source competitor from running `FreeMoCap` behind a server endpoint while charging users for access.
Because the Foundation holds the rights to the codebase, it can also offer alternative terms to organizations whose intended use is incompatible with the AGPLv3+, keeping the software freely available to everyone else while generating resources for maintenance and stewardship. 

== Long-term Sustainability

The FreeMoCap Foundation was incorporated as an IRS-recognized 501(c)(3) public charity to provide an institutional home for the project. In parallel, the Foundation will evaluate a diversified model for the long-term sustainability of this research infrastructure, including alternative commercial licensing, standardized hardware kits geared towards students, with higher-end software targeting more resourced labs, training and support services, institutional partnerships, and continued grant funding. SkellyTechnologies, LLC, a separate for-profit entity associated with the project, provides an additional pathway for commercial services, SBIR/STTR proposals, B2B agreements, and other profit-seeking activities that may support the long-term sustainability of the ecosystem.




