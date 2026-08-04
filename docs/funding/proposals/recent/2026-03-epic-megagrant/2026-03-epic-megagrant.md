# Epic MegaGrants Application — DRAFT v2

**Preferred Language:** English (UK)

---

## APPLICANT INFORMATION

**Who is applying?**
- [X] I am applying on behalf of a company/team
- [ ] I am applying as an individual (myself)

**How did you hear about Epic MegaGrants?**
> *Word of Mouth*

**Please explain how you heard about us:** *(required)*

Word of mouth from a colleague in 2022. We applied for and received a MegaGrant in June of that year.

---

## COMPANY/CONTACT INFORMATION

info@freemocap.org

**Country:** USA

**Phone number:** +1 503-449-6999

**Relevant social media:** twitter.com/freemocap

**Team Size:** 3-5

**Company/Institution Name:** FreeMoCap Foundation, Inc. (501c3 Certified Public Charity)

**Company website:** https://freemocap.org

---

## PROJECT INFORMATION

**Project Name:** FreeMoCap — Free Motion Capture for Everyone

**Project Type:** Tools & Open Source

**Project media link:** https://youtu.be/iWGSv4yzzlM

**Project build link:** https://github.com/freemocap/freemocap

**Project website:** https://freemocap.org

---

### Project Specifics

**What phase is your project in?** Production

**Is your project currently in Unreal Engine or Unreal Editor for Fortnite?**
- [ ] Unreal Engine
- [ ] Unreal Editor for Fortnite
- [X] No

**What platform was your project built on?** Other

**Is your project open source and/or does it give back to the 3D community?**
- [X] My project is open source AND gives back to the 3D community
- [ ] My project is open source
- [ ] My project gives back to the 3D community
- [ ] None of these options apply to my project

**Please explain:**

FreeMoCap is fully free and open source (AGPL-3.0). It provides a complete markerless motion capture pipeline — from camera input to rigged character animation — available to anyone at no cost. Our community includes animators, game designers, researchers, educators, clinicians, and hobbyists across 140+ countries. Everything we build is free and available to everyone.

---

### Project Description

**Project elevator pitch** *(required, max 225 characters):*

FreeMoCap gives everyone free, research-quality markerless motion capture. 10,000+ users in 140+ countries. Now building V2 with native Unreal Engine integration and real-time streaming.


**Full project details:**

FreeMoCap is a free, open-source markerless motion capture system that turns ordinary cameras into a full 3D motion capture pipeline — from synchronized multi-camera recording through calibration, skeletal tracking, 3D reconstruction, and rigged character animation output. It is built and maintained by the FreeMoCap Foundation, a 501(c)(3) certified public charity.

We follow a "Universal Design" philosophy. The goal is to build a tool that serves the needs of a professional research scientist while remaining intuitive to a 13-year-old with no technical training and no outside assistance. We want indie game designers and animators to use the same tool to add motion capture to their zero-budget art project that a biomechanics researcher uses for clinical gait analysis. Everyone has a reason to record human movement. We want to help them do it.

When we received an Epic MegaGrant in 2022, we were at the beginning of building the community around this vision — connecting animators, game designers, scientists, and clinicians through a shared tool. Since then, FreeMoCap has grown to over 10,000 users in 140+ countries, with 6,000+ GitHub stars and an active Discord community of 3,000+ people. The FreeMoCap Foundation achieved 501(c)(3) status, established paid research service contracts, and built a core development team.

We are now building FreeMoCap Version 2 — a complete from-scratch refactor of the entire system. V2 replaces the previous command-line-dependent workflow with a modern desktop application: Electron/React frontend, Python FastAPI backend, and a single-click cross-platform installer. No terminal, no virtual environments, no Python knowledge required.

At the heart of V2 is SkellyCam (https://github.com/freemocap/skellycam), a high-performance multi-camera synchronization and recording engine. SkellyCam V2 is already functional and serves as a precursor to the full FreeMoCap V2 architecture. It supports simultaneous high-quality offline recording and real-time skeletal reconstruction, opening up live-streamed motion capture for virtual production workflows.

This grant would support V2 development with a focus on Unreal Engine compatibility:

1. Integrate UE-compatible armature retargeting directly into the core output pipeline, so a standard FreeMoCap session produces output that loads into Unreal Engine without requiring a secondary Blender add-on step.

2. Build Live Link streaming support into V2's real-time mode, enabling live skeletal data to stream directly into Unreal Engine.

3. Support the broader V2 development that these features depend on. The architectural decisions being made right now will determine FreeMoCap's compatibility landscape for years to come. This is the moment to ensure Unreal Engine support is built into the foundation.

V2 is approaching alpha release, with beta and full release targeted within three to six months. This is the most technically ambitious phase of the project's five-year history, and dedicated development funding would help us get it over the hump.

**Please tell us about some of the unique features of your project:**

FreeMoCap provides a complete, free, open-source motion capture pipeline — from raw camera input to rigged, engine-ready character animation. It handles multi-camera synchronization, calibration, 2D skeletal tracking, 3D triangulation, post-processing, ground plane alignment, rigging, and animation output.

We are deeply committed to empirically validated, research-quality data. A doctoral dissertation currently in progress is dedicated to validating FreeMoCap's output against gold-standard marker-based systems, working toward FDA 510(k) certification as a clinical research tool. Our processing pipelines are designed to produce epistemologically grounded motion capture data suitable for clinical, biomechanics, and scientific applications — not just visually plausible animation.

FreeMoCap works with everything from $10 USB webcams to research-grade machine vision cameras. A minimal setup requires a standard computer and two inexpensive cameras.

V2 supports both real-time and offline processing — serving researchers who need maximum data quality and animators or virtual production artists who need immediate feedback.

Over 10,000 people in 140+ countries use FreeMoCap. Our community includes researchers, animators, game designers, athletes, clinicians, and educators. As a 501(c)(3) public charity, we exist to make this technology accessible to everyone.

---

## FUNDING

**What funding range are you requesting for this project? (US Dollars):**

$50,000 – $75,000

**How do you plan to use the funds for the project?**
Nearly all funds go directly to developer compensation. FreeMoCap's development team works on contract, and this grant provides critical runway during the V2 transition.

~$40,000–$80,000 — Core developer compensation (3-4 developers over 6-12 months): V2 architecture and infrastructure, Unreal Engine retargeting pipeline, Live Link streaming integration, cross-platform installer and deployment.
~$10,000–$20,000 — Supplies, conference travel, etc


**Have you secured additional funding for this project?**
- [X] Yes
- [ ] No
- [ ] Prefer Not to Say

**Please provide details of the project's additional funding**

The FreeMoCap Foundation has paid research service contracts with academic labs for specialized motion capture and eye tracking work. These contracts support ongoing operations and core platform development. The Foundation also accepts tax-deductible donations through its 501(c)(3) status.

---

## Stay Informed

- [X] I'd like to receive news, surveys, and special offers from Unreal Engine and Epic Games
- [ ] No, thanks

---

*[Privacy Policy]*

**[ SUBMIT ]**
