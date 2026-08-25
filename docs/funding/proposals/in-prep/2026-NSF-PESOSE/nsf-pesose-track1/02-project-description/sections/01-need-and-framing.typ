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

Quantitative measures of movement can support discovery across disciplines, but the ability to collect such data remains constrained by costly systems and fragmented technical infrastructure. Commercial motion capture systems are priced for well-resourced institutions and as such, detailed movement measurement is confined to a relative few while clinics, studios and field sites that often observe movement have no practical methods to measure it. Advances in computer vision and the subsequent development of modern markerless motion capture systems have reduced this barrier, but these systems are often built for a particular domain or subfield. Groups working outside these fields (animal locomotion, atypical human movement and morphologies, cross-disciplinary work) must solve the same problem of implementing and integrating video synchronization, camera calibration, 2D pose estimation, 3D reconstruction, and visualization and analysis independently, resulting in repeated investment of time and public research funding in infrastructure that is difficult to reproduce, maintain, or transfer across domains.

There is therefore a need for shared infrastructure that is accessible to end users, adaptable to specialized research needs, and structured with components that communities can build on and contribute back to rather than repeatedly recreate. Infrastructure of this kind requires defined stewardship and governance as much as software.

The Free Motion Capture Project (FreeMoCap) is a free, open-source software maintained by The FreeMoCap Foundation that records and transforms synchronized videos from consumer grade webcams into research-grade 3D motion capture for decentralized scientific research, education, and training. This proposal requests Track 1 support to scope the organizational and infrastructure requirements needed to transition FreeMoCap from an open-source project maintained by a small core team into a secure and sustainable open-source ecosystem that is driven by the community. Ultimately, such infrastructure could reduce duplicated technical effort across research communities, broaden access to quantitative movement tools, and allow public investment in underlying methods and software to benefit a wider range of scientific, educational, and technical applications.


// TODO: open with the unmet need. One or two sentences.
// TODO: name the product with an in-line citation, e.g. #c("freemocap")
// TODO: state the spine claim: working product, missing organization,
//       twelve months of scoping produces the plan.

#note[criterion (a) — is the need unmet, and is that stated in plain terms?]
