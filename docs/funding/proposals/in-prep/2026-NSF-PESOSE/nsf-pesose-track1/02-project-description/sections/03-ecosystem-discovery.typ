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

The available tools demonstrate substantial demand for accessible markerless motion capture, but each is built around particular assumptions about users, domains, hardware, or deployment. Commercial systems include biomechanics-focused platforms such as Theia3D and animation/production tools such as Move.ai and Rokoko, while open-source alternatives such as OpenCap #c("uhlrichOpenCapHumanMovement2023"), Pose2Sim #c("pagnonPose2SimEndtoEndWorkflow2022"), and PosePipe #c("cottonPosePipeOpenSourceHuman2022") are largely centered on human biomechanics. These systems also impose different operational constraints: Theia3D relies on expensive hardware, while OpenCap's standard workflow depends on supported iOS devices and cloud processing. The continued development of domain-specific workflows in individual research laboratories #c("matsumotoThreedimensionalMarkerlessMotion2025", "yangEvaluationCameraConfigurations2025", "needhamDevelopmentEvaluationFully2022", "cimorelliPortableInclinicVideobased2022") indicates that researchers with specialized requirements still build substantial portions of this infrastructure independently.

Our Track 1 scoping will test the premise underlying this proposal: *repeated rebuilding of motion-capture pipelines is an ecosystem failure, as starting over is often easier than extending shared infrastructure.* Track 1 will determine what documentation, contribution pathways, technical interfaces, and governance structures are needed to reduce barriers to extending and contributing to shared research infrastructure.

== Necessity of an OSE approach
FreeMoCap's existing community provides early evidence that an OSE can convert
individual expertise into shared infrastructure for the broader user community.
Users have already become contributors in areas including animation, UI design,
and pose-estimation architecture, bringing domain expertise from outside the
core development team into the project, for the benefit of all users. However, these transitions occurred informally and have depended heavily on direct interaction with
the core team. Creating a repeatable path into the ecosystem first requires understanding who is trying to use, teach, extend, or contribute to FreeMoCap, what technical knowledge each group needs, and where the current software and documentation
fail to support them independently. 

== Stakeholder discovery
Although telemetry indicates more than 15,000 users, our current understanding of the FreeMoCap community is drawn primarily from users who contact us directly or participate in existing community channels. Some applications have emerged outside the domains we originally anticipated. For example, computational-linguistics researchers have adopted FreeMoCap in published work #c("orrMULTICOLLABASLAffectiveComputing2024","peechattMULTICOLLABMultimodalCorpus2024", "nunnariDGSFabeln1MultiAngleParallel2024") without any prior interaction with the core team. This motivates a broader discovery effort aimed not only at known users, but also at understanding unexpected communities, what drew them to the platform, and what would reduce barriers to sustained and broader adoption.

Our proposed work will combine analysis of existing community activity, community-wide surveys, and the I-Corps for PESOSE stakeholder-discovery process to characterize four user populations reflecting the communities already observed around FreeMoCap: (1) researchers across application domains, (2) educators and students, (3) creative and technical users in animation and related fields, and (4) current and prospective contributors. We will also interview maintainers of mature open-source projects, not as FreeMoCap users, but as a source of comparative evidence on how successful ecosystems structure contribution, governance, and extension. Discovery will produce three assessments, each addressing one condition under
which extending shared infrastructure becomes easier than rebuilding it.

1) *Cross-domain needs assessment*: how different communities use
FreeMoCap, what brought them to it, and what their work requires that the
shared pipeline does not yet provide. 

2) *Knowledge assessment*: what users must understand to operate the software, what contributors must understand to modify it, which of that knowledge remains undocumented, and what forms of documentation or instruction would allow people to participate without direct access to the core team.

3) *Comparative ecosystem review*: how mature open-source projects of comparable scale structure contribution, extension, and decision-making, and how those structures perform as projects grow. These findings will supply candidate models for evaluation in Organization and Governance and inform the security, community-building, and sustainability work that follows.



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
