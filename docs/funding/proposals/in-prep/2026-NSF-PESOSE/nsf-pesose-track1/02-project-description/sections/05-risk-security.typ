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

#import "../../template/nsf.typ": budget, note
#import "../../template/refs.typ": c

#budget("~0.75 page")

= Risk Analysis and Security Plan

FreeMoCap processes video and derived movement data locally on the user's computer, avoiding the need to transmit or store potentially sensitive recordings on a remote service. This is particularly relevant for research and clinical applications involving identifiable human-subject video. Recent work examining OpenCap illustrates the implementation challenge: although its cloud-based workflow incorporates HIPAA-compliant safeguards, only 71.7-82.8% of surveyed patients reported being comfortable sharing video recordings for remote analysis, and authors identified storage, transmission, unauthorized access, and secondary use as important considerations for clinical adoption #c("aitkenPatientPerceivedFeasibilityImplementing2026"). FreeMoCap's local architecture avoids this cloud data-transfer surface, while introducing its own security requirements as the project becomes more extensible and community-driven.

The software depends on a stack of computer vision and machine learning libraries. The community extension system proposed above would also introduce addition third-party code. Track 1 will assess the software against the best practices provided by the Open Source Security Foundation and will scope the review and approval controls needed to guard against malicious or inadvertently unsafe contributions for an extension system. 

== Data Quality
Community investment and trust in the software must have the basis of data integrity. Changes to pose-estimation models, calibration, reconstruction, filtering, or other pipeline components can alter scientific outputs even when the software continues to function correctly. Track 1 will therefore scope diagnostic, regression-testing, benchmarking, and provenance requirements, including comparison against reference datasets and metadata sufficient to trace outputs to software versions, models, processing parameters, and acquisition configurations. Camera characteristics are also part of the measurement chain; collaboration with Imatest LLC, whose work includes ISO/TC 42 standards activity on image-information content, will inform how imaging-system limitations can be characterized, reported, and made visible to users.

== Identity and telemetry

Structures under consideration for the ecosystem introduce additional surfaces
that Track 1 will scope. Recognizing contributor and user
progression may require authenticated accounts, and the project will evaluate
established delegated-authorization approaches such as OAuth 2.0 with guidance
from its industry mentor. Understanding the user base likewise depends on
usage telemetry, and any such collection would be designed to minimize what is
gathered and retained, consistent with the local-first principle above.

Together this work will produce a risk register, draft extension review and
release controls, and a benchmarking and provenance specification.

