# Personnel Section — Working Draft (§4, Senior/Key Personnel Qualifications)

> **Private draft.** This file uses **real names** and current-employer details pulled from resumes/LinkedIn in `secrets/`. When porting to `proposal/sections/4-personnel.typ`, swap names back to the initials used in the public repo (see `.env`). Aaron Cherian (CSO) and Michael Nguyen (PM, DOME-Auto) are left as short placeholders per Jon — he'll fill those.
>
> Drafted against the Written-Proposal prompt (solicitation line 204): *"Provide a brief description of the qualifications of Senior/Key Personnel... technical expertise, past efforts, and other qualifications that will contribute to achieving the team's Mission. Include information for all Senior/Key Personnel, including team members not currently affiliated with the lead organization."* Reviewed against selection criterion 11.1 (complementary scientific / technical / interdisciplinary / strategic-leadership expertise + demonstrated record of success).

---

## Framing note on full-time commitment (read first)

The single most important framing decision for this section is how we handle the fact that **only the PI (Matthis) and CSO (Cherian) are currently full-time.** The solicitation resolves this in our favor if we state it plainly:

- §6.2 (line 76): *"Senior/Key personnel and/or members of an NSF X-Lab's core leadership team must be dedicated **full-time to the team by the beginning of Phase 1**, unless otherwise approved by NSF."*
- §8 (line 128): **Phase 0 (9–12 months)** is the *preparation phase* — the runway to "prepare to become fully-funded NSF X-Labs teams."

So part-time status during Phase 0 is not a gap to apologize for — it is exactly what Phase 0 is for. The strongest version of this argument leans on the fact that **most of this leadership team has already been contributing to FreeMoCap for years, part-time or as volunteers, while holding demanding senior roles elsewhere.** That is direct evidence of commitment and cohesion: they showed up before there was money. I've written the overview paragraph below to make that case. (Open question for Jon at bottom re: how hard to lean on specific current employers by name.)

---

## Team overview (proposed lead-in paragraph)

> The FreeMoCap leadership team unites the expertise required to build and disseminate a new class of scientific instrument: two decades of quantitative measurement of the human perception–action loop (Matthis, PI); technology-sector executive leadership and enterprise software architecture (Rostellan, CEO; Idehen, CTO); research-grade validation and clinical translation (Cherian, CSO); applied-AI and educational systems (Lindstedt, CAIO); cooperative and nonprofit financial management (Rose, CFO); and hands-on instrument-builders who have personally constructed the multi-sensor measurement systems the DOME generalizes (Muller and Nguyen, Project Managers). Consistent with the NSF X-Labs model — in which Phase 0 exists precisely to let a team stand up its independent structure and transition members to full-time before Phase 1 — the PI and CSO are already dedicated full-time to FreeMoCap, and the remaining leaders are committed to full-time dedication by the beginning of Phase 1. Notably, most of this team has already contributed to FreeMoCap for years on a volunteer or part-time basis while holding senior positions in industry and academia; their sustained involvement before any funding existed is itself evidence of the team's cohesion and shared commitment to the Mission.

---

## Jonathan Matthis, PhD — President / Principal Investigator *(full-time)*

*(Preserving the existing stub content; lightly tightened. Jon to confirm citation count / details.)*

Founder and maintainer of FreeMoCap; two decades measuring the full perception–action loop.

- Left a tenure-track position (Assistant Professor, Human Movement Neuroscience, Northeastern University) specifically because the institution could not support the integrated tool-building this work requires — a direct demonstration of the "missing middle" the X-Lab is designed to fill.
- NEI/NIH K99/R00 recipient; ~1,400 citations.
- Published across the full loop: gaze and gait during outdoor locomotion (Matthis et al. 2018, *Current Biology*); reconstruction of retinal input during real-world behavior (Matthis et al. 2022, *Current Biology*; Muller et al. 2023, *Scientific Reports*); the augmented-reality ground-plane paradigm (Matthis et al. 2013, 2014, 2015, 2017).
- Built and maintains the open-source FreeMoCap toolkit and the global user community the DOME extends.

---

## Nikki Rostollan — Chief Executive Officer *(part-time during Phase 0 → full-time by Phase 1)*

Technology-sector engineering leader and startup co-founder, recruited to run the organization so the PI can concentrate on the technical Mission.

- Staff Platform Software Engineer at Rapid7 (a major publicly traded cybersecurity company) since 2021 — a senior individual-contributor engineering role at scale; will transition to full-time FreeMoCap leadership during Phase 0.
- Co-founded and ran MailLift (2013–2017), a venture-backed Austin startup that built an API-driven service integrating with CRM and helpdesk platforms — direct experience founding, scaling, and operating a technology company.
- Operations experience at the gener8tor startup accelerator; earlier career spanning legal/paralegal management and large-scale field organizing (recruited and managed 2,500+ volunteers for a national campaign).
- BA, Mathematics — University of Wisconsin–Milwaukee.
- *Contribution to Mission:* provides the strategic-leadership and operations capacity to build FreeMoCap into an independent, autonomous X-Lab organization — freeing the PI to lead the science.

---

## Endurance Idehen — Chief Technology Officer *(part-time during Phase 0 → full-time by Phase 1)*

Enterprise software architect with ~15 years of progression from engineer to Principal Architect and CTO; **FreeMoCap's CTO since May 2021** — essentially since the project's founding.

- CTO of the FreeMoCap Foundation since 2021 (part-time/volunteer) alongside a concurrent full-time CTO role at Chorus Innovations (health-technology platform); will transition his FreeMoCap commitment to full-time during Phase 0.
- Principal Architect at Unqork and Software Architect at KUNGFU.AI; Staff Software Engineer at RigUp — a track record of owning architecture for established software companies.
- Deep distributed-systems and data-engineering background: Python, Node.js, PostgreSQL, Apache Spark, AWS; earlier low-level work on custom data formats, compilers, and semantic/RDF/SPARQL graph systems — directly relevant to the calibrated, synchronized, semantically-unified data backbone the instrument requires.
- BS, Computer Science — University of Texas at San Antonio.
- *Contribution to Mission:* brings world-class enterprise-grade architecture to an open-source scientific instrument, and builds the training and workshop infrastructure to inject professional software-engineering practice into the scientific community.

---

## Aaron Cherian, PhD — Chief Scientific Officer *(full-time)*

*(Placeholder — Jon to complete. Existing stub content below for continuity.)*

- Dissertation validated FreeMoCap against research-grade optical motion capture (Qualisys), demonstrating clinically valid kinematics from commodity hardware.
- Expertise in clinical research-tool validation, bench-to-bedside development, neuroprosthetics design, and brain imaging.
- Core FreeMoCap developer and validation lead; holds the skillset for DOME-S development and clinical dissemination.

---

## John K. Lindstedt, PhD — Chief AI Officer *(part-time during Phase 0 → full-time by Phase 1)*

Cognitive scientist and applied-AI architect who deploys AI systems across classroom, laboratory, and enterprise environments; contributor to FreeMoCap since 2024.

- Currently Applied AI Architect at SOLID Inc., advising on effective, efficient, and ethical AI adoption; will transition to full-time FreeMoCap leadership during Phase 0.
- Lead developer of SkellyBot (2024–present), FreeMoCap's multi-agent AI assistant (NestJS + LangChain + OpenAI) for open-ended learning — vector-store integration, role-specific prompt routing, and multimodal audio/image/PDF inputs.
- 15+ years managing sensitive human-subjects, academic, and light-health data under FERPA and IRB frameworks, with anonymization (irreversible hashing), encrypted storage, and opt-in transparency — directly relevant to the instrument's data-governance and research-security requirements.
- PhD in Cognitive Science (Rensselaer Polytechnic Institute); dissertation instrument (Meta-T) generated gigabytes/hour of structured behavioral and eye-tracking data — an early version of exactly the high-volume, high-fidelity capture the DOME produces. 100+ hours of published open educational content.
- *Contribution to Mission:* builds the internal AI systems for development assistance, user support, and educational deployment, and anchors the team's data-ethics and research-security practice.

---

## Ryan Rose — Chief Financial Officer *(part-time during Phase 0 → full-time by Phase 1)*

Cooperative- and nonprofit-finance specialist; **FreeMoCap's Treasurer / volunteer CFO since October 2021** — the organization's longest-serving financial officer.

- Volunteer CFO/Treasurer of the FreeMoCap Foundation since 2021; will transition to full-time during Phase 0.
- Founder and Director of Financial Resources of Capital Bookkeeping Cooperative (2016–present), providing accounting and financial management to small businesses and nonprofits — directly relevant to standing up FreeMoCap as an independent, autonomous organization.
- Controller at Honest Weight Food Co-op and Adjunct Professor of Accounting at the University at Albany (SUNY) — hands-on financial oversight of a large cooperative plus university-level finance instruction.
- MS, Accounting (University at Albany, SUNY); BS, Accounting (Siena College).
- *Contribution to Mission:* runs financial operations and grant management, and brings cooperative-governance experience that fits the Foundation's open, community-driven structure and the X-Labs autonomy requirements.

---

## Karl Muller, PhD — Project Manager, DOME-Mobile / Drone-Swarm Motion Capture *(part-time during Phase 0 → full-time by Phase 1)*

PhD-trained computer-vision engineer and data scientist whose research and production work map almost one-to-one onto the DOME-Mobile instrument; longtime scientific collaborator of the PI.

- Co-author with the PI on the team's foundational measurement work: retinal motion statistics during natural locomotion (Muller et al. 2023, *eLife*) and foothold selection using terrain reconstruction (Muller et al. 2024, *eLife*) — the outdoor eye-tracking + photogrammetry + IMU pipeline that the DOME generalizes.
- Built that pipeline himself in the Hayhoe VR Lab (UT Austin): novel complex-terrain navigation dataset fusing photogrammetry (Meshroom), eye tracking, and IMU data, processed at scale on UT's TACC supercomputer — i.e., he has already constructed a multi-sensor, calibrated, synchronized capture instrument.
- Currently Senior Data Scientist at SynMax: production multi-object tracking, camera-to-sensor attribution via 3D geometric projection, multi-sensor fusion (AIS + satellite imagery), and full cloud/MLOps deployment (GCP, Docker/Kubernetes, CI/CD); will transition to full-time during Phase 0.
- Full-stack and 3D breadth directly relevant to DOME instrumentation: React/Svelte/TypeScript, FastAPI, Three.js/Cesium/deck.gl/WebGL, PyVista/VTK, Blender/Unity/Open3D; lidar, RGB, thermal, and multispectral sensing; camera projection, optic flow, object tracking.
- PhD, Neuroscience (UT Austin); NIH Big Data to Knowledge (BD2K) Fellow.
- *Contribution to Mission:* leads DOME-Mobile — the mobile, outdoor, multi-camera/drone-swarm capture track — for which he holds essentially the complete required skillset.

---

## Michael Nguyen — Project Manager, DOME-Auto / Eye-Tracker / World Scanner *(placeholder)*

*(Placeholder — Jon to complete. Existing stub content below for continuity.)*

- Expertise in clinical biomechanics, medical-systems design, mechatronics for clinical tools, and multi-modal motion-capture lab management.
- Holds the skillset for large-scale fixed-facility DOME design, construction, and operation.

---

## Open questions for Jon

1. **Current-employer naming.** I named current employers (Rapid7, SynMax, Chorus, SOLID, Honest Weight Co-op) because they signal caliber and make the "leaving a good job for this" point concrete. Comfortable keeping them, or prefer to genericize ("a major cybersecurity firm," etc.)?
2. **Nikki's FreeMoCap history.** Her LinkedIn shows no prior FreeMoCap role, so I framed her as recruited leadership rather than a long-time contributor. Correct? If she's been involved longer, I can strengthen that.
3. **The "years of volunteer commitment" argument.** I leaned on this hard in the overview because it's genuinely strong (Idehen since 2021, Rose since 2021, Lindstedt since 2024). Confirm the dates/roles are accurate to state publicly.
4. **Aaron & Michael.** Left as short placeholders per your note — send their details and I'll match the format.
5. **Biosketch vs. narrative.** This section is the *narrative* qualifications summary. The formal SciENcv biosketches + current-and-pending are a separate Oral-Package deliverable (solicitation line 245), due ~48 hrs after an oral invitation — flagging so it's on the radar, not needed now.
