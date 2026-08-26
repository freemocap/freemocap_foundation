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

#import "../../template/nsf.typ": budget, note
#import "../../template/refs.typ": c

#budget("~1.0 page")

= Current State of the Product and Community

FreeMoCap, distributed through Github and a standalone desktop installer, has over 10,0000 Github stars, telemetry indicating over 15,000 users across 153 countries, and a community forum with over 4,000 members. The software is organized as interoperating repositories separated by domain: `skellycam` for camera synchronization and recording, `skellytracker` as a modular interface for pose estimation, `skellyforge` for calibration, reconstruction, and post-processing, and `freemocap_blender_addon` for export to Blender. 

FreeMoCap has been adopted across research applications including reaching and grasping biomechanics #c("mazroueiCatchingSmallBalls2026"), gait analysis #c("nunez-lisboaUnderstandingGaitAlterations2024"), computational linguistics #c("orrMULTICOLLABASLAffectiveComputing2024","peechattMULTICOLLABMultimodalCorpus2024", "nunnariDGSFabeln1MultiAngleParallel2024"), and animation #c("landaEvaluatingIdleAnimation2026"). Independent studies have reported agreement with marker-based motion capture across several movement tasks #c("dariciLowcostMarkerlessMotion2026", "minogueValidationFreetoUseMarkerless2025"), while our own work #c("cherianOpensourceDevelopmentValidation2026") has characterized gait and balance performance, demonstrated integration of multiple pose-estimation backends, and extended the workflow to non-human locomotion.

User adoption has outpaced growth of the maintainer base. Much of the architectural and operational knowledge needed to contribute to the core pipeline remains concentrated within a core development team, while contributor onboarding and technical knowledge decentralization remains immature. 

== Team Qualifications
The FreeMoCap team combines scientific and engineering expertise with more than five years of direct experience developing the software, supporting its community, and managing the technical and organizational challenges associated with its growth. The FreeMoCap Foundation was incorporated as a nonprofit organization in XXXX to provide a long-term institutional home for stewardship of the project. 


