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

At time of writing, we are currently in the `alpha` phase of the transition into the v2 architecture representing a full-from-scratch-refactor of the FreeMoCap software which aims to meet the technical needs of the next phase of our growth. The `v2` architecture [represents /*dup*/] a massive increase in the sophistication and capacities of [the FreeMoCap Software /*dup*/], both in the latest iteration of our offline video based pipeline for fully body kinematic reconstruction of human movement, as well as in a new realtime interactive streaming format that will be transformative human perceptuomotor research which relies on VR, AR, XR methods, especially that which combines kinematic analysis with additional tools (like eye tracking)(cite stuff). 

In addition to the increased technical capacity, the new v2 architecutre represents numerous lines of increased sophistication to the organization and structure of the codebase, includeing a more clearly delineated seperation of duties across the constituent repositories of our poly-repo structure (more info or refer to Fig1A), a move to a cleaner client/server architecture separating UI concerns from backend computation, automated CI/CD, testing, and artifact building through GitHub Actions, and (arguably the most important) distribution of the fully standalone, OS-certified desktop application through a single click cross-platform installer hosted on a interactive webhosted page at freemocap-dot-org-slash-download - fully installable and useable without use of the terminal. Given our growth during `v0-v1` phase of the sofware, which required terminal use and Python environment management to run a far less capable tool, it is entirely possible that we will experience and order of magntiude of growth over the next phase of our development. 

The technical infrastructure of FreeMoCap is strong, but our understanding of the landscape, demographics, and needs of our extremely broad and distributed userbase is extremely limited. In order for us to successfully turn the corner and sustain and support our community through the coming trnasition, we must (extend/expand/improve/etc) our w/e of the landscape of w/e, so that we can align our technical roadmap, organizational structure, and community infrastructure with the actual needs, applications, and challenges of our community and stakeholders, while also facilitating a trnasition to a "Federation" comminity pattern representing a healthy balance of user growth and developer/maintainer onboarding.

This proposal requests Track 1 support to scope the foundation for that next phase: the community landscape and its needs; documentation and upskilling pathways that convert user interest into contributor capacity; governance practices that create transparency and productive communication between the core maintainers and the wider community; a validation and benchmarking methodology that other laboratories can replicate; and a sustainability model for the maintenance the software will require. The aim is a global-scale, self-sustaining project which can act as a Boundary Object (cite) between each of the consituent disciplines that intersect at the careful recording of human and animal movement, and a convivial tool (cite) that (expands the capacities and meets the unique needs) of all of consituent stateholder communities, while building bridges between them. 

#include "../floats/fig-overview.typ"
