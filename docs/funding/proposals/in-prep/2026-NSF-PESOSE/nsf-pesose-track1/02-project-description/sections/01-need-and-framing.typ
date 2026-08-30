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

#import "../../template/nsf.typ": budget, note,flag, suggestion
#import "../../template/refs.typ": c

#budget("~1.0 page")

= Vision and Need
#suggestion([I feel like we could find a stronger hook to start with at the first sentence...])
Although the methods behind camera based motion capture are well documented, researchers must often rebuild the infrastructure to assemble them into a usable measurement system when existing tools do not fit their needs. Commercial marker-based motion capture systems offer sophisticated general-purpose measurement, but remain costly and closed to modification. Newer markerless systems, driven by advances in AI/ML based computer vision, have lowered those barriers but are often built around the needs and assumptions of particular fields. Researchers working outside those assumptions (for instance, anyone measuring a non-human animal) are left to learn and implement components common to multi-camera markerless motion capture systems themselves. These include video recording and synchronization, camera calibration to recover each camera's position and optical parameters, 2D pose estimation using AI models to locate anatomical keypoints, 3D reconstruction by triangulating those keypoints across camera views, and post-processing and analysis. #flag(kind:"clarity")[Rebuilding this infrastructure across projects duplicates technical effort and reduces the return on public research investment in software that is difficult to maintain, reproduce, or transfer beyond the environment in which it was developed.]

#flag(kind:"verbose")[*There is therefore a need for accessible, shared research infrastructure that allows specialized motion capture adaptations developed by one community to be contributed back and reused by others, requiring defined stewardship and governance as much as software.*]

#suggestion([This bolded statement is a good sentiment, but its too verbose and wordy for the text blob here. I'm also ware of hanging the WHOLE grant off this claim - its a good point, but there's much much more thats good about freemocap aside from just allowing others to avoid duplicating effort. I think basing the whole proposal on a claim like this sells us short])


FreeMoCap #c("queenFreeMoCapFreeOpen2024") provides an existing technical foundation for this model. Maintained by the FreeMoCap Foundation, FreeMoCap is free and open-source software that transforms synchronized video from consumer-grade cameras into research-grade 3D motion-capture data through a modular workflow (@fig-overview). This proposal requests Track 1 support to scope the organizational and infrastructure requirements needed to *transition FreeMoCap from an open-source project maintained by a small core team into a secure, sustainable, community-driven ecosystem.* //NOTE - clarity - we use the word "freemocap" too many times in this short paragraph. Can probably make this punchier

#figure(
  image("../../figures/overview_v2.png", width: 100%),
caption: [The FreeMoCap workflow and its component repositories (blue). (A) Synchronized video from consumer-grade USB webcams (skellycam) is processed through camera calibration and 3D reconstruction (skellyforge) and modular pose estimation (skellytracker), producing 3D motion trajectories for downstream analysis or animation export. Separation of the pipeline by domain allows individual components to be modified or replaced independently. (B) Reconstructed 3D trajectories alongside the source camera views.]
) <fig-overview>
