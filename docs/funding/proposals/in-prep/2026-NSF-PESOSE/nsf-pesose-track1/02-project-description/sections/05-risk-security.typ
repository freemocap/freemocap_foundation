#import "../../template/nsf.typ": budget, note, flag, suggestion, new, broader-impacts
#import "../../template/refs.typ": c

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




= Risk Analysis and Security Plan

Video-based motion capture creates inherent privacy concerns because identifiable recordings must be captured and processed. These concerns can themselves become a barrier to adoption: recent work on OpenCap found that patients remained concerned about video sharing, storage, and access despite HIPAA-compliant cloud safeguards #c("aitkenPatientPerceivedFeasibilityImplementing2026"). FreeMoCap avoids this cloud-data surface by processing video and derived data *locally*, without requiring a login or network connection, allowing sensitive recordings to remain under the user's direct control.

Secure and trustworthy research infrastructure also requires addressing *software-supply-chain* risk. FreeMoCap depends on a substantial stack of computer-vision, machine-learning, and scientific-computing libraries, and the proposed community plug-in system would introduce additional third-party code into the processing environment. Track 1 will assess FreeMoCap against security standards maintained by the Open Source Security Foundation (OpenSSF), which provides established criteria and certification pathways for secure open-source development. This assessment will identify gaps and the requirements needed to reach an appropriate certification level, informing both a project security roadmap and the review, approval, and release controls needed to guard against malicious or inadvertently unsafe community extensions.

== Data Integrity
While the fidelity of FreeMoCap-produced data has been and continues to be validated, *preserving the integrity of that data (i.e., that modifications to the software do not silently alter the measurements it produces) is an ecosystem responsibility*. Track 1 will scope stage-specific integrity checks across the processing pipeline, with expected outputs tracked across software versions. Camera characteristics are also part of the measurement chain. Collaboration with Imatest LLC, whose work includes ISO/TC 42 standards activity on image-information content, will inform how imaging-system limitations can be characterized, reported, and made visible to users.

Because these are the same checks an outside laboratory would need in order to trust the software on its own data, Track 1 will also scope how we should package and communicate our validation and benchmarking methodology, so that other groups can reproduce our validation on their own hardware and contribute the results back as community validation. 

== Identity and Telemetry
Potential ecosystem features such as contributor recognition, authenticated accounts, and usage telemetry introduce additional privacy and security considerations. Track 1 will scope approaches that minimize collected data and preserve FreeMoCap's local-first principles, including evaluation of established authorization approaches such as OAuth 2.0 for (optional) account-based features. The project's industry mentor, Endurance Idehen, will advise this work, including authentication, authorization, telemetry, and related security controls. Together, these activities will produce a risk register, draft extension review and release controls, and a data-integrity and security roadmap.



