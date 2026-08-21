// PART 3 — Ecosystem Discovery.  Page budget: ~0.75
//
// One of the four Track 1 content areas mandated by NSF 26-506:
//   "Define strategies to assess the need for the innovation, justify why an
//    OSE is the right approach, and identify potential users and developers."
//
// This is PLANNED ACTIVITY. Every item should be something you will DO in the
// twelve months, with an output. "We will interview 30 users across three
// segments" is an activity. "We believe there is demand" is not.
//
// This is also where the mandatory I-Corps for PESOSE participation naturally
// belongs — it is ecosystem discovery training, so reference it here and make
// sure the budget carries salary for the 3-5 person team.

#import "../../lib/nsf.typ": budget, note

#budget("~0.75 page")

= Ecosystem Discovery

== Need for Innovation

Existing commercial (Theia3D, Move.ai, Rokoko, Meshcapade) and open-source (OpenCap, Pose2Sim, PosePipe) markerless motion capture tools demonstrate substantial demand, but differ in accessibilitiy, licensing, extensibility and intended user communities. Domain-specific workflows continue to also be developed independently in research laboratories, suggesting that existing systems are still not sufficient to meet user needs. Track 1 scoping will look to test and understand the central FreeMoCap ecosystem strategy: a common, modular OSE can support both accessible general use and domain-specific extensions. 

== Necessities of an OSE approach
FreeMoCap's existing community provides early evidence that an OSE model is the best approach. Users have become contributors in areas including animation, UI design, and pose estimation architecture, bringing domain expertise outside the core development team and making the resulting improvements available across the entire community of users. However to date, these transitions have occurred informally and without a consistent pathway. Several contributors who have successfully entered the project have remained engaged over time, motivating Track 1 investigation of whether the bottleneck lies in entry rather than retention. Track 1 will develop and evaluate the organizational and technical structures needed to make participation more predictable, repeatable, and sustainable at scale. 

== Stakeholder discovery
Although telemetry points to over 15k users, our current understanding of the FreeMoCap community is biased towards users who voluntarily contact the core team or participate in community channels. Track 1 support will be used to combine analysis of the existing community, surveys, and the required I-Corps for PESOSE stakeholder-discovery process to systematically characterize current and potential users, contributors, and ecosystem partners. Interviews will span main stakeholder groups: researchers across application domains (biomechanics, animal locomotion, robotics, computational linguistics); educators and students using the software for instruction; creative and technical users in animation and related fields; current and prospective contributors; maintainers of existing and mature open-source projects (e.g., the Blender Foundation). 

Interviews with researchers across application domains will identify which components of the workflow require domain-specific adaption to research needs, producing a requirements map that distinguishes candidate core infrastructure from external extensions. Interviews with current and prospective contributors will identify where architectural knowledge, contribution processes, or unclear workflows prevent participation, informing a prioritized contributor-onboarding and documentation plan. Interviews with maintains of mature open-source projects will examine community extension architecture and organization structures that can distribute development responsibility beyond the core team, producing a set of candidate models for evaluation in the Organization and Governance work.

Ecosystem Discovery will culminate in a segmented stakeholder and demand assessment, a prioritized map of user and contributor barriers, and a set of technical and organizational requirements that will guide the governance, security, community-building, and sustainability plans developed during Track 1.


// TODO: discovery activities, segments, and what each produces.
// TODO: why an OSE is the right vehicle rather than a product company or a
//       single-lab research tool.

#note[activities with outputs, not intentions]

// -----------------------------------------------------------------------------
// CLOSING OUTPUT SENTENCE — one sentence, no heading, naming what this section
// produces. Keeps activity and output adjacent so the section does not read as
// pure intention, without duplicating the milestone table in Part 7.
// Must correspond to a row in that table.
// -----------------------------------------------------------------------------
// TODO: "Discovery concludes with a segmented demand assessment reviewed by the advisory group."
