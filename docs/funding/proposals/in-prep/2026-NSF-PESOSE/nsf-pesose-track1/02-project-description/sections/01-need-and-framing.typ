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

#import "../../lib/nsf.typ": budget, note
#import "../../lib/refs.typ": c

#budget("~1.0 page")

= Vision and Need

Quantitative measures of human movement underpins applications across a broad spectrum of domains, including biomechanics, rehabilitation, robotics and animations, where movement data can reveal changes in performance or drive interactions with physical and digital systems. However, the motion capture systems that traditionally produce these measurements are gated by cost, specialized hardware, and technical expertise. Consequently, detailed movement measurement is then confined to a relative few well-resourced institutions, while clinics, studios and field sites that often observe human behavior have no practical methods to measure it. 

While computer vision advances have produced more accessible markerless motion capture systems, these tend to solve motion capture for a specific domains and research subfields. Researchers outside of these existing stacks (e.g., animal locomation, atypical movement or morphologies) must then start from scratch and solve the same problem of implementing and integrating video synchronization, camera calibration, 2D pose estimation, 3D reconstruction, and visualization and analysis. This results in repeated investment of time and public research funding in parallel infrastructure solutions that are hard to reproduce, maintain, or transfer across domains. 

There is a need for shared infrastructure that is accessible to end users, adaptable to specialized research needs, and built from components that communities can build on and contribute to rather than repeatedly recreate. This kind of infrastructure requires governance and organization as much as it does software. Ultimately, such infrastructure could reduce duplicated technical effort across research communities, broaden access to quantitative movement tools, and allow public investment in underlying methods and software to benefit a wider range of scientific, educational, and technical applications.

The Free Motion Capture Project (FreeMoCap) is a free, open-source software maintained by The FreeMoCap Foundation that records and transforms synchronized videos from consumer grade webcams into research-grade 3D motion capture for decentralized scientific research, education, and training. The main software consists of multiple sub-repositories that can be integrated into one workflow. This proposal requests Track 1 support to scope the organizational and infrastructural requirements necessary to transition FreeMoCap from a promising open-source software project into a sustainable, secure and community-driven open-source ecosystem. Track 1 activities will include : [will return to this later]


#figure(
  image("../../figures/overview_v1.png", width: 90%),
caption: [Placeholder. Rough sketch of what I'm thinking. A - graphic to do overview of subskellies and show how it works. B-D: examples of freemocap data, getting less and less 'standard' from left to right (i.e., human, then human with prosthetic, then non-human)]
) <fig-overview>


// TODO: open with the unmet need. One or two sentences.
// TODO: name the product with an in-line citation, e.g. #c("freemocap")
// TODO: state the spine claim: working product, missing organization,
//       twelve months of scoping produces the plan.

#note[criterion (a) — is the need unmet, and is that stated in plain terms?]
