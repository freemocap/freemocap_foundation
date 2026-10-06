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

FreeMoCap #c("matthisFreeMoCapFreeOpen2026") is a free and open-source markerless motion capture software system that produces research-grade full body kinematic data from generic cameras (@fig-overview). Built and maintained by the FreeMoCap Foundation since 2021, it has grown organically into a vibrant, successful project with over 10,000 GitHub stars, telemetry indicating at least 15,000 users across 153 countries, and a global community forum of over 4,000 students, researchers, educators, and artists.

The project's broad adoption and continued growth reveal a real and unmet need. Quantitative movement measurement supports work across biomechanics, neuroscience, rehabilitation, and animation, yet conventional systems remain costly and are often tied to specialized hardware or fixed workflows. Researchers whose needs fall outside those workflows therefore continue to rebuild substantial portions of motion-capture infrastructure independently. By running on consumer-grade cameras and following established patterns for the development and management of free-and-open-source-software (FOSS), FreeMoCap provides a validated, research-grade measurement tool appropriate for high-level research laboratories as well as classrooms, garage labs, and basement mocap studios #c("cherianOpensourceDevelopmentValidation2026").

FreeMoCap now sits at a critical inflection point in its growth curve. As is common for mid-scale FOSS projects, our user count has grown far faster than its maintainer base, a community pattern that Nadia Eghbal's study of open source software, _Working In Public_, refers to as a "Stadium" #c("eghbal2020") - many users relying on the output of a proportionally tiny team of developers. If growth in the user base continues to outpace its maintainers, the growing weight of support runs the risk of overwhelming the core team. Sustaining the project through this period requires building the organizational and community infrastructure that supports a transition toward what Eghbal calls a "Federation,"  a pattern representing a healthy balance of user and contributor growth, allowing technical knowledge and responsibility to be distributed across the community. 

#include "../floats/fig-overview.typ"

Despite this growth, our understanding of the broader FreeMoCap community remains limited. Telemetry and interactions with users who participate in public forums do not reliably tell us who our users are, what they need, or where existing technical and community infrastructure create barriers. 

This proposal requests Track 1 support to scope the foundation for future growth: understanding our *community landscape* and its needs; developing *documentation and upskilling pathways* that convert user interest into contributor capacity; governance practices that create *transparency and productive communication* between the core maintainers and the wider community; a *validation and benchmarking methodology* that other laboratories can replicate; and a *sustainability model* for the maintenance that the software will require.
