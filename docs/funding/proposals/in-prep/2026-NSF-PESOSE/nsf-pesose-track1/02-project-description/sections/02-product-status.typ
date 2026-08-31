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


The FreeMoCap codebase is hosted in a collection of public GitHub repositories, built and tested through automated CI/CD pipelines, and distributed as an OS-certified standalone desktop application via installers hosted through our website (`freemocap-dot-org-slash-download`).

The project is organized as a polyrepo - the core functionality of the application is split across domain-scoped constituent sub-repositories — `skellycam` for camera synchronization and recording, `skellytracker` as a modular interface for pose estimation, `skellyforge` for calibration, 3D reconstruction, and kinematic analysis, and `freemocap_blender_addon` for export to Blender (and other animation softwares) (@fig-overview). Each repository within the project follows the same internal layout, so that documentation, tests, and entry points sit in the same place in every repository. A contributor with expertise in one domain can work inside a single component without holding the whole system in mind. This self-similar structure emerged during the `v1` era of this project, but has become clarified and codified in the transition to `v2`. This structure assists development, while also making the full codebase substantially easier to teach, to learn, and to navigate with AI coding assistants. The `v2` architecture also enacts an explicit client/server separates the user interface from backend computation, which allows the interface and the scientific pipeline to be developed and reviewed independently, and supports a new realtime interactive streaming mode alongside the established offline reconstruction workflow. // 

#include "../floats/fig-data.typ"

FreeMoCap is used across several distinct communities, including researchers, educators and students, creative and technical users, and software contributors. Published use of FreeMoCap spans reaching and grasping biomechanics #c("mazroueiCatchingSmallBalls2026"), gait analysis #c("nunez-lisboaUnderstandingGaitAlterations2024"), computational linguistics #c("orrMULTICOLLABASLAffectiveComputing2024","peechattMULTICOLLABMultimodalCorpus2024", "nunnariDGSFabeln1MultiAngleParallel2024"), and animation #c("landaEvaluatingIdleAnimation2026"). Independent validation studies have reported agreement with marker-based motion capture across several movement tasks #c("dariciLowcostMarkerlessMotion2026", "minogueValidationFreetoUseMarkerless2025"), while our own work #c("cherianOpensourceDevelopmentValidation2026") has characterized gait and balance performance, demonstrated integration of multiple pose-estimation backends, and extended the workflow to non-human locomotion (@fig-data).



Although we have made great strides to onboarding new contributors, much of the  architectural and operational knowledge needed to contribute to the core pipeline remains concentrated within a core development team, and contributor onboarding and technical knowledge decentralization remains immature. The scoping activities supported in this proposal will help us to increase the sophistication and reach of our onboarding and upskilling mechanisms be helping us strategically shape our efforts in alignment with our actual community.


== Team Qualifications
The FreeMoCap team represents decades of individual scientific and engineering expertise,  with more than five years of direct experience developing the FreeMoCap software specifically, including supporting its community, and managing the technical and organizational challenges associated with its growth. 
// The wording here is a bit awkward and kind of undersells us - the PROJECT is five years old, the team itself has much more XP than that. The PI has 20 years XP in mocap and camera based tools for the study of human perceptomotor research, Aaron has close to a decade, the PROJECT is over 5 years old. 



