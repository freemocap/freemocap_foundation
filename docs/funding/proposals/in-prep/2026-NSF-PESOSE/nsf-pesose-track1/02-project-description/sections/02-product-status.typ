#import "../../template/nsf.typ": budget, note, flag, suggestion, new, broader-impacts
#import "../../template/refs.typ": c

// PART 2 — Current status of the open-source product.  Page budget: ~1.0
//
// REQUIRED by NSF 26-506 for all PESOSE proposals. The solicitation asks for
// four things, and this part plus Part 1 must cover all four:
//   1. a pointer to the existing publicly available open-source product
//      (in-line citation only — no URLs)
//   2. current status of the development and testing model, methods of
//      dissemination, user base, and contributor base
//   3. a description of the problem being addressed
//   4. a strong justification that the team is qualified to do this work
//
// This is the EXISTING EVIDENCE register. Everything here is a fact about
// today, not a plan. Keep the boundary visible — the most common failure mode
// for a Track 1 proposal from a mature project is blurring evidence into plan,
// which gets read as either "you already did Track 1" or "there is nothing
// here yet."
//
// DISCIPLINE: architecture details earn space ONLY as evidence of something
// ecosystem-relevant — e.g. modularity that lets an outside contributor work
// on one stage without understanding the whole pipeline. A sentence about the
// pipeline for its own sake is a sentence about your software in a proposal
// that is not about your software.
//
// Track 1 supports planning, NOT product development. Ongoing refactor work
// belongs here as evidence of active maintenance, never in the work plan.




= Current State of the Software and Community

//Could condense/remove first paragraph?
The FreeMoCap codebase is hosted in a collection of public GitHub repositories under the `freemocap` organization (`github-dot-com-slash-freemocap`), built and tested through automated CI/CD pipelines, and distributed as a cross-platform OS-certified standalone desktop application via installers hosted through our website (`freemocap-dot-org-slash-download`).

The project is organized as a polyrepo - the core functionality of the application is split across domain-scoped constituent sub-repositories — `skellycam` for camera synchronization and recording, `skellytracker` as a modular interface for pose estimation, `skellyforge` for calibration, 3D reconstruction, and kinematic analysis, and `freemocap_blender_addon` for export to Blender (and other animation software) (@fig-overview). Each sub-repository  represents an independently functional codebase and follows the same internal layout, so that documentation, tests, and entry points sit in the same place in every repository. This self-similar structure makes the full codebase substantially easier to teach, to learn, and to navigate with AI coding assistants, and a contributor with expertise in one domain can work inside a single component without holding the whole system in mind. 

#include "../floats/fig-data.typ"

FreeMoCap is used across several distinct communities, including athletes, clinicians, educators and students, technical artists, and general technologists. Published use of FreeMoCap spans reaching and grasping biomechanics #c("mazroueiCatchingSmallBalls2026"), gait analysis #c("nunez-lisboaUnderstandingGaitAlterations2024"), computational linguistics #c("orrMULTICOLLABASLAffectiveComputing2024","peechattMULTICOLLABMultimodalCorpus2024", "nunnariDGSFabeln1MultiAngleParallel2024"), animation #c("landaEvaluatingIdleAnimation2026"), and robotic exoskeleton design and verification #c("obukhovHybridVerificationMethod2026"). Independent validation studies have reported agreement with marker-based motion capture across several movement tasks #c("dariciLowcostMarkerlessMotion2026", "minogueValidationFreetoUseMarkerless2025"), while our own work #c("cherianOpensourceDevelopmentValidation2026") has characterized gait and balance performance, demonstrated integration of multiple pose-estimation backends, and extended the workflow to non-human locomotion (@fig-data).

Despite growing external contributions, much of the architectural and operational knowledge required for core development remains concentrated within a core development team, and pathways for contributor onboarding and remain immature. Track 1 scoping will ground the development of these mechanisms in evidence about the community they are intended to serve.

== Team Qualifications
The FreeMoCap team represents decades of individual scientific and engineering expertise,  with more than five years of direct experience developing the FreeMoCap software specifically, including supporting its community, and managing the technical and organizational challenges associated with its growth. 
// The wording here is a bit awkward and kind of undersells us - the PROJECT is five years old, the team itself has much more XP than that. The PI has 20 years XP in mocap and camera based tools for the study of human perceptomotor research, Aaron has close to a decade, the PROJECT is over 5 years old. 



// #import "../../template/nsf.typ": budget, note, flag, suggestion, new, broader-impacts
// #import "../../template/refs.typ": c

// = Current State of the Software and Community

// FreeMoCap is developed publicly across the `freemocap` GitHub organization (`github-dot-com-slash-freemocap`), tested through automated CI/CD pipelines, and distributed as a cross-platform standalone desktop application through `freemocap-dot-org-slash-download`.

// The codebase is organized as a domain-scoped polyrepo, with separate components for camera synchronization and recording, pose estimation, calibration and reconstruction, kinematic analysis, and Blender export (@fig-overview). These repositories share a common internal structure, allowing contributors with expertise in one domain to work within a single component without understanding the entire pipeline.

// #include "../floats/fig-data.typ"

// FreeMoCap is used across research, clinical, educational, and creative communities. Published applications include reaching and grasping biomechanics #c("mazroueiCatchingSmallBalls2026"), gait analysis #c("nunez-lisboaUnderstandingGaitAlterations2024"), computational linguistics #c("orrMULTICOLLABASLAffectiveComputing2024","peechattMULTICOLLABMultimodalCorpus2024", "nunnariDGSFabeln1MultiAngleParallel2024"), and animation #c("landaEvaluatingIdleAnimation2026"). Independent validation studies have reported agreement with marker-based motion capture across several movement tasks #c("dariciLowcostMarkerlessMotion2026", "minogueValidationFreetoUseMarkerless2025"), while our own work #c("cherianOpensourceDevelopmentValidation2026") has characterized gait and balance performance, integrated multiple pose-estimation backends, and extended the workflow to non-human locomotion (@fig-data).

// Despite growing external contributions, much of the architectural and operational knowledge required for core development remains concentrated within the maintainer team, and contributor onboarding remains relatively informal.

// == Team Qualifications

// The team combines decades of experience in motion capture, perceptual-motor research, computer vision, and software engineering, together with more than five years of direct experience developing, validating, distributing, and supporting FreeMoCap and its community.