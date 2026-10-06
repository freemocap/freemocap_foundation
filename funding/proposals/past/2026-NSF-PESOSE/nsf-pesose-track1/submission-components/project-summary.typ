// =============================================================================
// PROJECT SUMMARY — 1 page max (PAPPG II.D.2.b; NSF 26-506 §V.A)
//
// Three labeled sections, in this order: Overview, Intellectual Merit,
// Broader Impacts. NSF 26-506 adds one hard rule: the LAST line of the
// document must be "Keywords:" + 2–5 semicolon-separated keywords.
// #keywords() enforces the count and must remain the final line.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT, keywords, note

#show: nsf-doc.with(page-limit: 1, draft: DRAFT)

= Overview

FreeMoCap is a free and open-source markerless motion-capture system that turns synchronized video from consumer-grade webcams into research-grade full-body kinematic data using AI-based pose estimation, bringing quantitative movement measurement within reach of laboratories, clinics, and classrooms for which conventional systems are not an option. Since 2021, FreeMoCap has grown to more than 15,000 users across 153 countries, including researchers, artists, students, educators, and technologists. However, this growth has not been matched by a corresponding distribution of the knowledge and responsibility needed to sustain it. The understanding required to modify the software, the work of user support, and authority over technical decisions all remain concentrated in a small core team. Without organizational change, the weight of supporting a large user base will constrain both the project's development and its long-term viability.

This Track 1 project will scope the structures needed to transition FreeMoCap into a durable open-source ecosystem with distributed contributors and shared stewardship. Activities include user base mapping through I-Corps for PESOSE, documentation and educational pathways for independent users and contributors, governance models for distributing technical decision-making, a community plug-in framework with review and security controls, reproducible validation and benchmarking, and models for long-term sustainability. The long-term goal is an ecosystem in which contributors outside the founding team can independently extend the software, participate in technical decision-making, and share responsibility for its validation and maintenance.

= Intellectual Merit
// TODO: potential to advance knowledge.
The intellectual merit of this project lies in testing whether organizational structures and documented contributor pathways can reduce duplicated effort in scientific software by making it easier for researchers to contribute specialized capabilities to shared infrastructure rather than rebuild complete pipelines from scratch. The project also addresses a challenge particularly relevant to scientific software, in which software modifications can silently alter measured outputs without producing any obvious failure. The stage-wise integrity and benchmarking methodology scoped here will be designed for reproduction by outside laboratories on their own hardware. Together, these activities will establish how knowledge decentralization, community plug-in governance, and reproducible measurement-integrity practices can support the transition from isolated scientific software development to shared research infrastructure.

= Broader Impacts
Quantitative movement measurement supports work across many disciplines, yet the instrumentation and technical expertise required to obtain it remain out of reach for many. FreeMoCap lowers the hardware barrier through free and open-source software that runs on consumer-grade cameras, while the ecosystem scoped under this project will address the knowledge barrier through educational and onboarding pathways from independent use to informed contribution. A shared, extensible ecosystem also allows methods and expertise developed in one community to become useful in others rather than remain isolated in field-specific software or laboratory pipelines. Educational activities piloted with partner organizations, including The Possible Zone, will test materials for users with differing technical backgrounds. By broadening access, technical understanding, and cross-domain participation, the project can increase the return on public investment in scientific software while expanding who can use, understand, and extend quantitative movement-measurement tools.

#keywords(
  "open-source ecosystem",
  "motion capture",
  "biomechanics",
  "research software sustainability",
)
