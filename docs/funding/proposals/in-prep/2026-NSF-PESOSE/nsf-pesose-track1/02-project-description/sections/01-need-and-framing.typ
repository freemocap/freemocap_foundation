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

Quantitative movement measurement can support discovery across disciplines, but access remains constrained by costly systems and fragmented technical infrastructure. Commercial motion capture is priced for well-resourced institutions, confining detailed measurement to a relative few while clinics, studios and field sites where movement is routinely observed have no practical methods to measure it. Computer vision advances have supported the development of markerless motion capture systems to reduce this barrier, but these systems are often build for a particular domain. Researchers working outside those use cases—including animal locomotion, atypical human movement and morphologies, and cross-disciplinary applications—must often independently integrate the same components for synchronization, calibration, pose estimation, reconstruction, and analysis, resulting in repeated investment of time and public research funding in infrastructure that is difficult to reproduce or transfer.

There is therefore a need for shared infrastructure that is accessible to end users, adaptable to specialized research needs, and structured with components that communities can build on and contribute back to rather than repeatedly recreate. Infrastructure of this kind requires defined stewardship and governance as much as software.

The Free Motion Capture Project (FreeMoCap) #c("queenFreeMoCapFreeOpen2024") is a free, open-source software maintained by The FreeMoCap Foundation that records and transforms synchronized videos from consumer grade webcams into research-grade 3D motion capture for decentralized scientific research, education, and training (@fig-overview). This proposal requests Track 1 support to *scope the organizational and infrastructure requirements needed to transition FreeMoCap from an open-source project maintained by a small core team into a secure and sustainable open-source ecosystem that is driven by the community* - reducing duplicated technical effort across research communities, broadening access to quantitative movement tools, and allowing public investment in these methods to reach a wider range of scientific, educational, and technical applications.

#figure(
  image("../../figures/overview_v2.png", width: 100%),
caption: [The FreeMoCap workflow and its component repositories. (A) Synchronized video from consumer-grade USB webcams (skellycam) is processed through camera calibration and 3D reconstruction (skellyforge) and modular pose estimation (skellytracker), producing 3D motion trajectories for downstream analysis or animation export. Separation of the pipeline by domain allows individual components to be modified or replaced independently. (B) Reconstructed 3D trajectories alongside the source camera views.]
) <fig-overview>

// TODO: open with the unmet need. One or two sentences.
// TODO: name the product with an in-line citation, e.g. #c("freemocap")
// TODO: state the spine claim: working product, missing organization,
//       twelve months of scoping produces the plan.

#note[criterion (a) — is the need unmet, and is that stated in plain terms?]
