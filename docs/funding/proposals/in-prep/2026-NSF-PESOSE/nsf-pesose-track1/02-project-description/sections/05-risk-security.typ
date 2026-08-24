// PART 5 — Risk Analysis / Security Plan.  Page budget: ~0.75
//
// One of the four mandated Track 1 content areas:
//   "Identify anticipated security, safety, and privacy risks and explore
//    mechanisms for quality assurance, secure modification and release,
//    identity management, and chain of custody."
//
// PESOSE added "Secure" to the program name in the 26-506 revision, so this
// is not boilerplate any more — it is a named program priority and a
// reviewer will look for it.
//
// For FreeMoCap specifically, the privacy surface is real and worth naming:
// the software processes video of human bodies, frequently in clinical,
// pediatric, or research settings. That is a genuine safety and privacy
// consideration that a generic software project cannot claim, and it
// strengthens the case rather than complicating it.
//
// The solicitation also points proposers at CISA/NSA software supply chain
// guidance and the OpenSSF best practices criteria. Referencing those signals
// that you know the landscape.

#import "../../lib/nsf.typ": budget, note

#budget("~0.75 page")

= Risk Analysis and Security Plan

The FreeMoCap workflow is entirely run on a user's own computer. Therefore, all generated data belongs solely to that user and is never passed through any cloud-based or other remote software, which is a substantial advantage for user privacy, researcher privacy with human subjects, and any clinical work. 

FreeMoCap depends on a stack of computer vision and machine learning libraries. The community extension system proposed above would also introduce addition third-party code. Track 1 will assess the software against the best practices provided by the Open Source Security Foundation and will scope the review and approval controls needed to guard against malicious or inadvertently unsafe contributions for an extension system. 

== Data Quality
Scientific investment and trust must have the basis of scientific data quality. Changes to pose-estimation models, calibration, reconstruction, filtering, or other pipeline components can alter scientific outputs even when the software continues to function correctly. Track 1 will scope diagnostic, testing, and benchmarking infrastructure for detecting such changes, including comparison against reference datasets, documentation of expected performance, and regression testing across software versions and supported configurations. We will also define the metadata needed to trace an output dataset to the software versions, models, processing parameters, and other relevant configuration choices used to produce it.

[input ISO/Imatest collaboration here potentially]
// -----------------------------------------------------------------------------
// CLOSING OUTPUT SENTENCE — one sentence, no heading, naming what this section
// produces. Keeps activity and output adjacent so the section does not read as
// pure intention, without duplicating the milestone table in Part 7.
// Must correspond to a row in that table.
// -----------------------------------------------------------------------------
