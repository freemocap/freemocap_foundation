// PART 1 — Need and framing.  Page budget: ~1.0
//
// Serves Track 1 criterion (a): a societal or national need not currently
// being adequately addressed.
//
// SPINE NOTE: this version is organized around Jon's 2026-08-30 rewrite:
// successful, vibrant adoption -> inflection point -> solid understanding of
// users and landscape -> foundation for the next phase.
//
// 01/02 BOUNDARY (this pass): §1 argues the NEED and names the decision the
// project faces. §2 is the EVIDENCE REGISTER — numbers, architecture, published
// use, team. Anything here that is a fact about the software's current build
// belongs in §2. The two V2 paragraphs are flagged below for relocation; a
// compressed replacement that keeps only the inflection-point argument is
// proposed in their place.

#import "../../template/nsf.typ": budget, note, flag, suggestion, new, broader-impacts
#import "../../template/refs.typ": c


= Vision and Need

FreeMoCap #c("queenFreeMoCapFreeOpen2024") is a free and open-source markerless motion capture software system that produces research-grade full body kinematic data from generic cameras (@fig-overview). Built and maintained by the FreeMoCap Foundation since 2021, it has grown organically into a vibrant, successful project with a global community of students and professional researchers, educators, and artists distributed across more than 150 countries. 

The project's broad adoption and continued growth reveals the real and unmet need that FreeMoCap answers. Quantitative movement measurement underpins work across biomechanics, neuroscience, rehabilitation, and animation, yet the instrumentation required to obtain it remains out of reach for most of the people who need it. Conventional marker-based systems are accurate but costly, and locked into preset workflows or specific hardware, and as such researchers whose needs fall outside them continue to rebuild this infrastructure independently. By running on consumer-grade cameras and following established patterns for the development and management of free-and-open-source-software (FOSS), FreeMoCap provides a validated, research-grade measurement tool appropriate for both high level research laboratories, as well as classrooms, garage labs, and basement mocap studios #c("cherianOpensourceDevelopmentValidation2026").

FreeMoCap now sits at a critical inflection point in its growth curve. As is common for mid-scale FOSS projects, our user count has grown far faster than its maintainer base, a community pattern that Nadia Eghbal's seminal exploration of the landscape of open source software _Working In Public_ refers to as a "Stadium" #c("eghbal2020") - many users relying on the output of a proportionally tiny team of developers. If growth in the user base continues to outpace its maintainers, the growing weight of support runs the risk over overwhelming the core team. Sustaining the project through this period requires building the organizational and community infrastructure that supports a transition toward what Eghbal calls a "Federation,"  a pattern representing a healthy balance of user and contributor growth, allowing technical knowledge and responsibility to be distributed across the community. 

#include "../floats/fig-overview.typ"

Our technical infrastructure is strong, but our understanding of the landscape of our community of users is limited. Beyond basic in-app telemetry and our experience interacting with the relatively small percentage of users that explicitly speak up in our public forums, we do not have a reliable account of who our users are, what their needs are, and how our current infrastructure is failing to meet them. As we transition into the next phase of our development, it is critical that we develop a clear undestanding of our users so that we can align our technical roadmap, organizational structure, and community infrastructure with the actual needs, applications, and challenges of our primary stakeholders.

This proposal requests Track 1 support to scope the foundation for future growth: understanding our *community landscape* and its needs; developing *documentation and upskilling pathways* that convert user interest into contributor capacity; governance practices that create *transparency and productive communication* between the core maintainers and the wider community; a *validation and benchmarking methodology* that other laboratories can replicate; and a *sustainability model* for the maintenance the software will require.



