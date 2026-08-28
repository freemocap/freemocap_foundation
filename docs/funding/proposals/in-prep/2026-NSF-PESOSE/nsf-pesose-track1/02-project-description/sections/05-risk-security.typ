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

Video-based motion capture inherently creates data-privacy risks because identifiable recordings of participants must be captured, processed, and potentially retained. These concerns may remain important even when appropriate technical safeguards are in place. Recent work examining OpenCap, for example, found that despite its HIPAA-compliant cloud infrastructure, only 71.7–82.8% of surveyed patients reported being comfortable sharing video recordings for remote analysis, with storage, transmission, unauthorized access, and secondary use identified as considerations for clinical adoption #c("aitkenPatientPerceivedFeasibilityImplementing2026"). FreeMoCap processes video and all derived data locally on the user's machine and requires no network connection to operate, so recordings need never leave the device on which they were made, ensuring complete privacy for potentially sensitive recordings. 

Local processing, however, does not eliminate software-security risk. FreeMoCap depends on a substantial stack of computer-vision, machine-learning, and scientific-computing libraries, and the proposed community extension system would introduce additional third-party code into the processing environment. Track 1 will assess FreeMoCap against security standards maintained by the Open Source Security Foundation (OpenSSF), which provides established criteria and certification pathways for secure open-source development. This assessment will identify gaps and the requirements needed to reach an appropriate certification level, informing both a project security roadmap and the review, approval, and release controls needed to guard against malicious or inadvertently unsafe community extensions.

== Data Integrity
While the fidelity of FreeMoCap-produced data has been and continues to be validated, the integrity of that data (i.e., that modifications to the software do not silently alter the measurements it produces) is an ecosystem responsibility. Track 1 will scope stage-specific integrity checks across the processing pipeline, with expected outputs tracked across software versions. These may include calibration checks against known board geometry; 2D pose-estimation consistency; 3D reconstruction metrics such as positional differences, smoothness, and jerk; comparisons against reference datasets; and checks before and after each post-processing operation so that the effect of filtering or other transformations is explicitly measured rather than assumed. Camera characteristics are also part of the measurement chain; collaboration with Imatest LLC, whose work includes ISO/TC 42 standards activity on image-information content, will inform how imaging-system limitations can be characterized, reported, and made visible to users.

== Identity and Telemetry
Potential ecosystem features such as contributor recognition, authenticated accounts, and usage telemetry introduce additional privacy and security considerations. Track 1 will scope approaches that minimize collected data and preserve FreeMoCap's local-first principles, including evaluation of established authorization approaches such as OAuth 2.0 for account-based features. The project's industry mentor will advise this work, including authentication, authorization, telemetry, and related security controls.

Together, these activities will produce a risk register, draft extension review and release controls, and a data-integrity and security roadmap.


