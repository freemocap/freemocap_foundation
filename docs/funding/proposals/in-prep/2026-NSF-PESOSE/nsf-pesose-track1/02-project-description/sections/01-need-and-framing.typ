// PART 1 — Need and framing.  Page budget: ~1.0
//
// Serves Track 1 criterion (a): a societal or national need not currently
// being adequately addressed.
//
// SPINE NOTE: this version is organized around the v2 spine (notes/spine-spec.md):
// successful, vibrant adoption -> inflection point -> solid understanding of
// users and landscape -> foundation for the next phase. The previous version
// (built around the duplication-of-effort premise) is preserved at git 159ca54.

#import "../../template/nsf.typ": budget, note, flag, suggestion, new, broader-impacts
#import "../../template/refs.typ": c


= Vision and Need

FreeMoCap #c("queenFreeMoCapFreeOpen2024") is a free and open-source software system that transforms synchronized video from consumer-grade cameras into research-grade three-dimensional motion-capture data (@fig-overview). Built and maintained by the FreeMoCap Foundation since 2021, it has grown organically into a vibrant, successful project with a global community of at 15,000 individual users representing both students and high ranking profession researchers,  educators, and artists across more than 150 countries.

The project's broad adoption and continued growth reveals the real and unmet need that FreeMoCap answers. Quantitative movement measurement underpins work across biomechanics, neuroscience, rehabilitation, and animation, yet the instrumentation required to obtain it has remained out of reach for most of the people who need it. Conventional marker-based systems are accurate but costly, and existing markerless tools are often built around the needs of particular fields and locked into preset workflows or specific hardware. By running on consumer-grade cameras and following established patterns for the development and management of free-and-open-source software (FOSS), FreeMoCap provides a validated, research-grade measurement tool appropriate for both high level research laboratories, as well as classrooms, garage labs, and basement mocap studios #c("cherianOpensourceDevelopmentValidation2026").


FreeMoCap now sits at an critical inflection point in its growth curve [FIg - GH Stars growth]. As is common for mid-scale FOSS projects, our user count has grown far faster than its maintainer base, a community pattern that Nadia Eghbal's seminal exploration of the landscape of open source software _Working In Public_ refers to as a "Stadium" #c("eghbal2020", page NNN). The growth is exciting, but improperly managed we may become crushed under the weight of our early success if we fail to build the appropraite organizational and community infrastrcuture necessary to transition into a "Federation" community pattern representing a healthy balance of user and developer growth #c("eghbal2020", page NNN). 

At time of writing, we are currently in the `alpha` phase of the transition into the v2 architecture, which represent a full-from-scratch-refactor of the FreeMoCap software which aims to meet the technical needs of the next phase of our growth. The new archtireure

 


The software's recent full rebuild (V2, currently in alpha) — separating the project into domain-specific repositories with a shared internal structure, moving to a client/server architecture, and shipping as a one-click professional desktop application — has lowered the technical cost of contribution. What remains is organizational: the structures built around the software now will determine whether user growth converts into long-term development, maintenance, and growth of the ecosystem.

//  identifies as the common structure of mid-scale open source projects — and, because we see primarily the users who come to us, our understanding of who our users are and what the surrounding landscape looks like is incomplete. Building the foundation for the project's next phase of life appropriately requires a solid understanding of both.


This proposal requests Track 1 support to scope, in preparation for Track 2, the foundation for that next phase: the community landscape and its needs; documentation and upskilling pathways that convert user interest into contributor capacity; governance practices that create transparency and productive communication between the core maintainers and the wider community; a validation and benchmarking methodology that other laboratories can replicate; and a sustainability model for the maintenance the software will require. The aim is a global-scale, self-sustaining project with a significant effect on the landscape of the research areas it touches.

#include "../floats/fig-overview.typ"
