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

FreeMoCap is currently distributed through GitHub and a standalone installer, with more than 10,000 GitHub stars, telemetry indicating over 15,000 users across 153 countries, and an active community forum with over 4,000 members. The software is organized as serveral interoperating repositories separated by responsibility: `skellycam` for USB-camera synchronization and recording, `skellytracker` as a modular interface for pose estimation, `skellyforge` to handle calibration, reconstruction, and post-processing of data, and `freemocap_blender_addon` to handle export to Blender. 

The software has already been adopted across a range of research applications, including reaching and grasping biomechanics [cite], sagittal-plane gait mechanics under controlled postural adjustments [cite], multimodal corpus construction in computational linguistics [cite], and assessment of idle-animation believability [cite]. Independent validation studies have reported favorable agreement with marker-based motion capture for spatiotemporal gait parameters [cite], squat and countermovement-jump mechanics [cite], and functional gait assessments [cite]. Our own validation work has further characterized FreeMoCap for gait and balance assessment against marker-based motion capture and demonstrated that its modular architecture can incorporate multiple pose-estimation backends. The same underlying workflow has also been extended beyond conventional human biomechanics, including motion capture of animal locomotion.

While user adoption continues to grow, it has outpaced the growth of the maintainer base. The majority of the architectural and operational knowledge needed to understand and modify the core pipeline lies within a small core development team, creating a sustainability bottleneck. The structures needed to onboard, support, and retain users and contributors, while distributing technical knowledge and responsibility beyond the core team, remain immature.

Track 1 will address this gap by: (1) identifying and characterizing FreeMoCap's user and contributor communities and their needs; (2) reducing dependence on tacit core-team knowledge through documentation, educational resources, and clearer contribution pathways; and (3) developing and evaluating models for community-driven contribution, governance, maintenance, and technical stewardship.

== Team Qualifications
The FreeMoCap team is well positioned to address this transition because it combines scientific and engineering expertise with more than five years of direct experience developing and maintaining the software, supporting its user community, and responding to the technical and organizational challenges that arise as the project grows. The FreeMoCap Foundation was incorporated as a nonprofit organization in XXXX to support long-term stewardship of the project, promoting its core values of advancing  research, and promoting technological and scientific accessibility and education.
#note[is every claim here a fact about today, with no plans mixed in?]


#figure(
  image("../../figures/overview_v1.png", width: 70%),
caption: [Placeholder. Rough sketch of what I'm thinking. A - graphic to do overview of subskellies and show how it works. B-D: examples of freemocap data, getting less and less 'standard' from left to right (i.e., human, then human with prosthetic, then non-human)]
) <fig-overview>