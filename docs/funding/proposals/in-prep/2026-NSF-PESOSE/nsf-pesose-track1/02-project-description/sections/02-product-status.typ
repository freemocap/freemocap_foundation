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

= Current State of the Software and Community

FreeMoCap, distributed through Github and a standalone desktop installer (freemocap-dot-org-slash-download), has over 10,000 Github stars, telemetry indicating over 15,000 users across 153 countries, and a community forum with over 4,000 members. The software is organized as interoperating repositories separated by domain: `skellycam` for camera synchronization and recording, `skellytracker` as a modular interface for pose estimation, `skellyforge` for calibration, 3D reconstruction, and post-processing, and `freemocap_blender_addon` for export to Blender.  //NOTE - need to update these numbers correctly with actual accurate numbers, and give a better description of the PolyRepo structure of freemocap and the reasoning/advantage behind it. Ask me for details. Also first sentence buries tf out of the lede - need a better and stronger way to say "Not only do we have all our source code on Github with automated CI/CD through github actions, We have a single click installer at freemocap.org/download and thats WILD. "

//NOTE - generally, we need a section somewhere in this proposal with Key PErformance Indicators, and include our various numbers there. 

FreeMoCap is used across several distinct communities, including researchers, educators and students, creative and technical users, and software contributors. Published use of FreeMoCap spans reaching and grasping biomechanics #c("mazroueiCatchingSmallBalls2026"), gait analysis #c("nunez-lisboaUnderstandingGaitAlterations2024"), computational linguistics #c("orrMULTICOLLABASLAffectiveComputing2024","peechattMULTICOLLABMultimodalCorpus2024", "nunnariDGSFabeln1MultiAngleParallel2024"), and animation #c("landaEvaluatingIdleAnimation2026"). Independent validation studies have reported agreement with marker-based motion capture across several movement tasks #c("dariciLowcostMarkerlessMotion2026", "minogueValidationFreetoUseMarkerless2025"), while our own work #c("cherianOpensourceDevelopmentValidation2026") has characterized gait and balance performance, demonstrated integration of multiple pose-estimation backends, and extended the workflow to non-human locomotion (@fig-data).
// Pretty good, but also buries the lede on our validation - we were able to show that our system produces the sub-5-degree of error that some source (cited in aaron's disseration, ask me for it and I will pvide a link) said is the accuracy needs of a clinically useful tool. 

//ALSO IN GENERAL - there are a number of places in this proposal where we reference things that should reference to our letters of collaboration (e.g. Scholl Lab) - need to come up with a good system for doing that, like a naming convention or something to reference the letters from this text? 

#figure(
  image("../../figures/data.png", width:100%),
  caption: [FreeMoCap applications from standard human biomechanics to specialized movement-analysis use cases. A. Lower-extremity joint-angle comparison and statistical parametric mapping against Qualisys marker-based motion capture across multiple pose-estimation backends. B. Custom DeepLabCut integration for tracking a lower-limb prosthesis user. C. Extension to ferret locomotion and neural-behavioral research in collaboration with the Scholl Lab, CU Denver Anschutz] // NOTE - (B) should reference SkellyClicker repo
) <fig-data>

// We should move the figures into their own files, and then include them in these text-based documents

While user adoption has grown, it has outpaced the growth of the maintainer base. Much of the architectural and operational knowledge needed to contribute to the core pipeline remains concentrated within a core development team, while contributor onboarding and technical knowledge decentralization remains immature. 
// Good thoughts in this paragraph, but could be made punchier. We should try to tie this into the global "problem of low quality help" described in Eghbal's book - we have a TON of people who WANT to (a) use the tool, and (b) help develop the tool - BUT the project is so complex its hard to onboard them. Need to solve this problem both to serve users adn onboard developers and build easy routes for users to upskill, self-align, trnsition from user to developer, etc. 

== Team Qualifications
The FreeMoCap team combines scientific and engineering expertise with more than five years of direct experience developing the FreeMoCap software, supporting its community, and managing the technical and organizational challenges associated with its growth. 
// The wording here is a bit awkward and kind of undersells us - the PROJECT is five years old, the team itself has much more XP than that. The PI has 20 years XP in mocap and camera based tools for the study of human perceptomotor research, Aaron has close to a decade, the PROJECT is over 5 years old. 


