// PART 3 — Ecosystem Discovery.  Page budget: ~0.75
//
// One of the four Track 1 content areas mandated by NSF 26-506:
//   "Define strategies to assess the need for the innovation, justify why an
//    OSE is the right approach, and identify potential users and developers."
//
// This is PLANNED ACTIVITY. Every item should be something you will DO in the
// twelve months, with an output. "We will interview 30 users across three
// segments" is an activity. "We believe there is demand" is not.
//
// This is also where the mandatory I-Corps for PESOSE participation naturally
// belongs — it is ecosystem discovery training, so reference it here and make
// sure the budget carries salary for the 3-5 person team.

#import "../../template/nsf.typ": budget, note
#import "../../template/refs.typ": c

#budget("~0.75 page")

= Ecosystem Discovery

== Need for Innovation

Existing commercial (Theia3D, Move.ai, Rokoko, Meshcapade) and  open-source (OpenCap#c("uhlrichOpenCapHumanMovement2023"), Pose2Sim#c("pagnonPose2SimEndtoEndWorkflow2022"), PosePipe#c("cottonPosePipeOpenSourceHuman2022")) markerless motion capture tools demonstrate substantial demand, but differ in accessibility, licensing, extensibility and intended user communities. That domain-specific workflows continue to be developed independently in research laboratories #c("matsumotoThreedimensionalMarkerlessMotion2025", "yangEvaluationCameraConfigurations2025", "needhamDevelopmentEvaluationFully2022", "cimorelliPortableInclinicVideobased2022") indicates that existing systems do not meet these needs.  Track 1 will test the central FreeMoCap ecosystem strategy: that a singular modular ecosystem can support both accessible general use and domain-specific extension at once, rather than requiring a separate tool per community. 

== Necessity of an OSE approach
FreeMoCap's existing community provides early evidence that an OSE can convert individual expertise into shared infrastructure for the the broader user community. Users have already become contributors in areas including animation, UI design, and pose estimation architecture, bringing domain expertise outside the core development team into the project. These transitions have occurred informally, however, without a defined pathway from user to contributor. Several contributors who have successfully entered the project have remained engaged over time, motivating Track 1 investigation of whether the bottleneck lies in entry rather than retention. Track 1 will identify how to formalize the onboarding, documentation, contribution and governance structures needed to make that transition repeatable and less dependent on involvement from the core team. 

== Stakeholder discovery
Although telemetry points to over 15k users, our current understanding of the FreeMoCap community is drawn from users who contact us directly or participate in community channels. Our proposed work will combine analysis of the existing community, surveys, and the I-Corps for PESOSE stakeholder-discovery process to systematically characterize five main stakeholder groups: researchers across application domains; educators and students using the software for instruction; creative and technical users in animation and related fields; current and prospective contributors; maintainers of existing and mature open-source projects. 

Discovery will be structured around three outputs. First, a cross-domain needs assessment identifying how different communities use FreeMoCap, what draws them to the platform, and which specialized capabilities or workflow adaptations would support broader adoption within those fields.Where a requirement recurs across unrelated domains it is a candidate for the shared core; where it appears in only one, it defines an extension. The distribution of these requirements is the direct test of whether a single modular ecosystem can serve communities this varied. Second, a user and contributor knowledge assessment identifying what technical understanding is required to use, teach, and modify FreeMoCap; which of that knowledge remains tacit or undocumented; and what documentation, educational, and onboarding resources are needed for users and contributors to operate independently of the core team. Third, a set of candidate governance and extension architectures for evaluation in the Organization and Governance work, informed by maintainers of comparable open-source projects.

Together, these outputs will provide the evidence base for the governance, security, community-building, and sustainability decisions developed in the subsequent Track 1 work.


// TODO: discovery activities, segments, and what each produces.
// TODO: why an OSE is the right vehicle rather than a product company or a
//       single-lab research tool.



// -----------------------------------------------------------------------------
// CLOSING OUTPUT SENTENCE — one sentence, no heading, naming what this section
// produces. Keeps activity and output adjacent so the section does not read as
// pure intention, without duplicating the milestone table in Part 7.
// Must correspond to a row in that table.
// -----------------------------------------------------------------------------
// TODO: "Discovery concludes with a segmented demand assessment reviewed by the advisory group."
