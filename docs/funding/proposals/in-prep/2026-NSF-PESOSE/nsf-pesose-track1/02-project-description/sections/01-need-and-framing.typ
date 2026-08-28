// PART 1 — Need and framing.  Page budget: ~1.0
//
// Serves Track 1 criterion (a): a societal or national need not currently
// being adequately addressed.
//
// This is where the accessibility argument goes, and it is your strongest
// single asset: a lab that cannot afford a six-figure marker-based system can
// run FreeMoCap on consumer cameras. State it in one or two sentences — do not
// write a literature review of motion capture. Criterion (a) asks whether the
// need is real and unmet, not whether you know the field.
//
// Land the spine claim explicitly and early. Reviewers should know by the end
// of page one that this is a proposal about building an organization, not
// about writing software.

#import "../../template/nsf.typ": budget, note
#import "../../template/refs.typ": c

#budget("~1.0 page")

= Vision and Need

Although the methods behind motion capture are well documented, researchers must often rebuild the infrastructure that assembles them into a usable measurement system when existing tools do not fit their subjects. Commercial marker-based motion capture systems offer sophisticated general-purpose measurement, but remain costly and closed to modification. Newer markerless systems, driven by advances in computer vision, have lowered those barriers but are often built around the needs and assumptions of particular fields. Researchers working outside those assumptions (for instance, anyone measuring a non-human animal) are left to assemble their own motion-capture pipelines, implementing the same underlying components each time: video synchronization, camera calibration, pose estimation, 3D reconstruction, post-processing, and analysis. Rebuilding this infrastructure across projects duplicates technical effort and dilutes public research investment in software that is difficult to maintain, reproduce, or transfer beyond the environment in which it was developed.

There is therefore a need not only for shared motion-capture software, but for an ecosystem that allows specialized adaptations developed by one community to be contributed back, maintained, and reused by others. *Infrastructure capable of solving this problem requires defined stewardship and governance as much as software.*

FreeMoCap #c("queenFreeMoCapFreeOpen2024") provides an existing technical foundation for this model. Maintained by the FreeMoCap Foundation, FreeMoCap is
free and open-source software that transforms synchronized video from
consumer-grade cameras into research-grade 3D motion-capture data through a
modular workflow (@fig-overview). This proposal requests Track 1 support to *scope the organizational and infrastructure requirements needed to transition FreeMoCap from an open-source project maintained by a small core team into a secure, sustainable, community-driven ecosystem.* 

#figure(
  image("../../figures/overview_v2.png", width: 100%),
caption: [The FreeMoCap workflow and its component repositories. (A) Synchronized video from consumer-grade USB webcams (skellycam) is processed through camera calibration and 3D reconstruction (skellyforge) and modular pose estimation (skellytracker), producing 3D motion trajectories for downstream analysis or animation export. Separation of the pipeline by domain allows individual components to be modified or replaced independently. (B) Reconstructed 3D trajectories alongside the source camera views.]
) <fig-overview>

// TODO: open with the unmet need. One or two sentences.
// TODO: name the product with an in-line citation, e.g. #c("freemocap")
// TODO: state the spine claim: working product, missing organization,
//       twelve months of scoping produces the plan.

#note[criterion (a) — is the need unmet, and is that stated in plain terms?]
