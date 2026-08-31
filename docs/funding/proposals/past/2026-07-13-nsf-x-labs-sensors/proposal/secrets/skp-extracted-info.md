# SKP Extracted Info — Senior/Key Personnel

Extracted 2026-07-12 from resumes and LinkedIn screenshots in this folder, for drafting `proposal/sections/2-personnel.typ` (renders as §4). Sources per person noted below.

Initials mapping (from .env): NR = Nikki Rostellan (CEO), EI = Endurance Idehen (CTO), JKL = John K Lindstedt (CAIO), RR = Ryan Rose (CFO), KM = Karl Muller (PM, DOME-Mobile / drone swarm mocap).

---

## JKL — John K. Lindstedt, PhD (CAIO)

**Source:** `SOLID_JKL_2page_resume.docx`

**Contact:** john.k.lindstedt@gmail.com · github.com/JacKaL37 · linkedin.com/in/johnklindstedt

**Headline:** Applied AI Architect · Cognitive Science Researcher · Full Stack AI App Dev · Online Educator

**Profile:** Multidisciplinary cognitive scientist, 15+ years across research, higher ed, and applied AI development. Agentic systems and LLM-driven workflows; advocate for secure, transparent, user-empowering tools. Recognized for async-first pedagogy, data ethics leadership, and reusable systems for organizational learning.

**Education**
- PhD, Cognitive Science — Rensselaer Polytechnic Institute. Dissertation: *The Building Blocks of Expertise: Examining Extreme Experts in the Video Game "Tetris"*
- MS, Cognitive Science — Rensselaer Polytechnic Institute
- BS, Psychology and Computer Science — Eastern Michigan University

**Experience**
- **Applied AI Architect — SOLID Inc.** (2025–Present): stewardship of interrelated datasets for future product applications; proof-of-concept developer and AI strategy advisor for effective, efficient, ethical AI adoption.
- **Lead Developer — SkellyBot, FreeMoCap Foundation** (2024–Present, volunteer): co-engineered multi-agent Discord AI assistant (NestJS + Langchain + OpenAI) for open-ended classroom learning; channel-specific prompts for student-directed research; lecture transcript analysis, voice/visual inputs, backend topic synthesis.
- **SUNY Oswego — Program Liaison, Integrative Professional Studies** (2019–2024): CS dept / Cognitive Science program liaison for adult re-entry learner program; created async-first course cluster (Web Programming → Web App Dev → Information Storage and Retrieval); microcredentialing; model for SUNY-wide instructional transformation.

**Data & ethics:** 15+ years managing sensitive information across human-subject research, academic records, light health data. Irreversible hashing for anonymization, encrypted storage, opt-in transparency protocols; FERPA and IRB compliance.

**Technical highlights**
- **Meta-T (dissertation tool):** NES Tetris clone in Python/PyGame for high-fidelity behavioral experiments with logging and eye-tracking; frame-by-frame replay producing GB/hour of structured behavioral data; millisecond-level analysis in R (tidyverse/ggplot2).
- **SkellyBot:** scalable NestJS system, vector store integrations, role-specific prompt routing, multimodal (audio/image/pdf).
- Toolkit: Pandas, NumPy, Scikit-learn, tidyverse, ggplot2, SQL, Langchain, NestJS, Whisper.

**Communication:** published researcher; 100+ hours of async instruction on YouTube (CS, AI, stats, cognition — youtube.com/@j-k-lab); presented at top-tier cognitive science and HCI conferences; open-source contributor.

---

## KM — Karl Sungmin Muller, PhD (Project Manager — DOME-Mobile, drone swarm mocap)

**Source:** `Resume_Karl_Muller_2026.pdf`

**Contact:** 512-413-9081 · ksmullercha@gmail.com · Fort Worth, TX · linkedin.com/in/karl-muller-025b5757

**Headline:** Senior Software Engineer & Data Scientist — Machine Learning, Computer Vision & Full-Stack Systems

**Summary:** PhD-trained; 4+ years shipping production ML and computer-vision systems end to end — web apps (React, Svelte, TypeScript, Node.js, FastAPI), backend/data pipelines, cloud/CI-CD (Docker, Kubernetes, Jenkins, AWS/GCP) — plus the models: CNNs, object tracking, 3D reconstruction, multi-sensor fusion, prototype to deployment.

**Education**
- PhD, Neuroscience — UT Austin, 2021. Thesis: *Modelling Visually Guided Natural Locomotion*
- BS, Neuroscience (Certificate in Computational Science and Engineering) — UT Austin, 2016

**Awards:** NIH Big Data to Knowledge (BD2K) Fellowship, 2018–2020

**Experience**
- **Senior Data Scientist — SynMax** (Oct 2024–Present, remote): production multi-object vessel tracking (k-partite graph matching, HiGHS integer-programming solver); tech lead for integrating two new data sources; camera-to-AIS vessel attribution (3D geometric projection + webcam/AIS caching, GPU inference on GCP Spot VMs); AIS + satellite imagery fusion with XGBoost; cubic-spline trajectory reconstruction from sparse noisy AIS; geolocation correction (OpenStreetMap + image processing, >50% of images to sub-200 m accuracy); automated ML performance-monitoring pipeline (Cloud Scheduler, Cloud Run annotation UI, PostgreSQL); led internal package repository on GCP Artifact Registry (5 teams, 20+ packages).
- **Engineering Scientist — Applied Research Laboratories** (Jul 2023–Oct 2024, Austin): custom 3D visualization (React + Cesium) for situational awareness and route planning; PyVista/VTK interactive 3D apps; lidar, multispectral, thermal remote sensing; full-stack geospatial systems.
- **Senior Software Engineer / Software Engineer II — EagleView** (Mar 2022–Jul 2023, remote): 3D modeling tool suite (geospatial reference systems, coordinate transforms, computational geometry, numerical optimization); won company hackathon with 3D roof-geometry modeling approach (up to 20× operator efficiency); TDD and CI/CD (Jenkins, ArgoCD, EKS).
- **Grad RA / Postdoc — Vision, Cognition, and Action VR Lab, UT Austin (Hayhoe lab)** (Mar 2017–Mar 2022): novel complex-terrain navigation dataset (Meshroom photogrammetry + eye tracking + IMU); processing pipeline on UT's TACC supercomputer; CNNs and boosting models of human terrain navigation; supervised undergrads.
- **Grad RA — Huth Lab, UT Austin** (Jan–Jul 2018): 3D hand pose from multiple 2D views (open-source pose estimation); 3D object pose from 2D silhouette + 3D model.

**Selected publications** (10 total; full list on request)
- Muller, K., Bonnen, K., Shields, S. M., Panfili, D., **Matthis, J. S.**, & Hayhoe, M. (2024). Analysis of foothold selection during locomotion using terrain reconstruction. *eLife*, 12, RP91243.
- Muller, K., **Matthis, J.**, Bonnen, K., Cormack, L. K., Huk, A. C., & Hayhoe, M. (2023). Retinal motion statistics during natural locomotion. *eLife*, 12, e82410.
- Panfili, D. P., Muller, K., Bonnen, K., & Hayhoe, M. M. (2026). Visual control of walking using terrain reconstructions. *Scientific Reports*.
- Zhang, R., Liu, Z., Zhang, L., Whritner, J. A., Muller, K. S., Hayhoe, M. M., & Ballard, D. H. (2018). AGIL: learning attention from human for visuomotor tasks. *ECCV*, 663–679.

**Proposal-relevant notes:** direct co-author with PI (JSM), KB (Bonnen), AH (Huk), MH (Hayhoe). Skill set spans eye tracking, optic flow, photogrammetry/3D reconstruction, multi-sensor fusion, geospatial pipelines, and production cloud ML — nearly a one-person match for the DOME-Mobile / drone-swarm instrument development role.

---

## NR — Nikki Rostellan (CEO)

**Source:** `Nikki-linkedin-1.png`, `Nikki-LinkedIn-2.png` (LinkedIn screenshots)

**Headline:** Engineer, nerd, & puzzle enthusiast · Austin, Texas

**About:** "Galvanizing people and teams to drive towards common goals, establishing or optimizing processes and systems along the way"

**Education**
- BA, Mathematics — University of Wisconsin-Milwaukee, 2008–2012 (Gamma Phi Beta)
- Alverno College, 2007–2008

**Experience**
- **Staff Platform Software Engineer — Rapid7** (Nov 2021–Present, full-time, ~4 yrs 9 mos)
- **Lead Software Engineer — MKS2 Technologies** (May 2021–Aug 2021)
- **Software Engineer — Unchained Capital** (Oct 2018–Apr 2021, 2 yrs 7 mos)
- **Full Stack Software Engineer — Inventive Group, Inc.** (Jan 2018–Sep 2018, Austin)
- **Co-Founder — MailLift** (Oct 2013–Dec 2017, 4 yrs 3 mos, Austin): automated handwritten-letter service integrating with CRM/helpdesk systems; built an API, 3rd-party integrations, and web interface to support organizations at nearly any scale.
- **Operations Management — gener8tor** (Jun 2013–Oct 2013, Milwaukee) — startup accelerator
- **EMM Holdings, LLC** (2 yrs 11 mos): Legal Department Manager and Paralegal (Jun 2011–Jun 2013 — contracts & tort, immigration, criminal law, financial securities); Paralegal (Aug 2010–Jun 2011)
- **Community Organizer — Obama for America** (Jun 2012–Dec 2012): opened and developed field offices; recruited and managed over 2,500 volunteers
- **Office Manager — Law Offices of Daniel J. Rostollan** (May 2006–Jun 2011)

**Proposal-relevant notes:** current Staff-level platform engineer at a major security company (Rapid7); startup co-founder (MailLift, gener8tor accelerator); operations/organizing background at scale. Profile shows engineering + operations + venture experience for the CEO role. Note: LinkedIn does not show FreeMoCap affiliation in these screenshots.

---

## EI — Endurance Idehen (CTO)

**Source:** `Endurance-LinkedIn-1..4.png` (LinkedIn screenshots)

**Headline:** "Beautiful systems are second to none" · Austin, Texas

**About:** Passion for learning and creating; motivated by the tech industry; focused on growth as a software engineer.

**Education**
- Computer Science — University of Texas at San Antonio, 2006–2010

**Experience**
- **Chief Technology Officer — Chorus Innovations** (Jan 2025–Present, full-time, remote): architectural project management, hands-on technical leadership.
- **Chief Technology Officer — The FreeMoCap Foundation** (May 2021–Present, part-time, 5+ yrs): software development, open-source software.
- **Principal Architect — Unqork** (May 2022–May 2024, remote): architectural project management, team management.
- **Software Architect — KUNGFU.AI** (Sep 2020–Jul 2022, Austin)
- **Staff Software Engineer — RigUp** (May 2019–Oct 2020, Austin): Node.js, PostgreSQL.
- **Senior Software Engineer — Lifesize** (Jun 2018–Jun 2019, Austin)
- **Senior Software Engineering Consultant — Inventive Group, Inc.** (Nov 2017–Jun 2018): team lead; analyzing business problems and architecting solutions.
- **Software Engineer Consultant — self (Endurance I Idehen)** (May 2016–Jun 2018)
- **Software Engineer — Algebraix Data Corporation** (Jun 2016–Nov 2017): Python, Apache Spark, AWS; Ethereum/blockchain/dApps. Earlier stint (Apr 2013–Jan 2015): C++ and C#.NET/WPF; custom binary data formats; bytecode printing program hooked into in-house compiler; RDF data converter; lexical caster to RDF; SPARQL queries; custom graph visualization software in C#/WPF.
- **Software Engineer — The Boon Group** (Mar 2015–May 2016, Austin): TPA healthcare; ASP.NET, C#, MS SQL Server, JavaScript; owned Claims system, promoted from Junior; rebuilt claims system with new features; automated systems from the '70s to reduce manual effort.
- **Service Desk Analyst — Computer Services, Inc.** (May 2012–Apr 2013)
- **Contractor — Randstad** (2012): NOC Agent for Megapath; Tier 1/2 calls; Cisco, Fortinet, Adtran routers.
- **Supervisor — Computer Nerdz** (Jul 2010–Sep 2011)
- **Supervisor — AT&T** (Nov 2008–Nov 2009, San Antonio): managed team of 20 in a call center.

**Proposal-relevant notes:** dual-CTO — currently CTO at Chorus Innovations (health-tech platform) AND part-time CTO of FreeMoCap Foundation since May 2021 (essentially since the project's founding). ~15 years of progression from support to Staff/Principal/CTO; architecture, Node.js, Python, distributed data systems.

---

## RR — Ryan Rose (CFO)

**Source:** `Ryan-LInkedIn1.png`, `Ryan-LinkedIn-2.png` (LinkedIn screenshots; `Ryan-LinkedIn-3.png` is a broken 1×1 px file — no data)

**Headline:** Controller at Honest Weight Food Co-op | Accounting Adjunct at UAlbany | Cooperative Finance, Board Reporting & Financial Systems Modernization · Albany, NY

**About:** Founder of Capital Bookkeeping Cooperative — accounting, bookkeeping, and consulting for businesses, non-profits, and individuals.

**Experience**
- **Controller — Honest Weight Food Co-op** (Aug 2025–Present, full-time, Albany NY): entrepreneurship, financial oversight.
- **Adjunct Professor, Accounting — University at Albany, SUNY** (Dec 2024–Present, part-time): higher-education and online teaching.
- **Director of Financial Resources / Leader — Capital Bookkeeping Cooperative** (Jun 2016–Present, 10+ yrs, Troy NY, hybrid): founded/leads a cooperative providing affordable bookkeeping, consulting, and training to small businesses, freelancers, and community groups in upstate NY; project management.
- **Treasurer, Volunteer CFO — The FreeMoCap Foundation** (Oct 2021–Present, ~4 yrs 10 mos, contract, remote): financial operations.
- **Finance Manager — Honest Weight Food Co-op** (Jan 2011–Apr 2017, 6 yrs 4 mos): "Crunching numbers. Eating kale."
- **Acct Assistant — Turner Construction** (Sep 2012–Dec 2012)
- **AmeriCorps*VISTA Leader — Siena College** (Jul 2011–Jul 2012): coordinator of VISTA state and national partnerships and technology support; capacity-building and professionalization of academic community-engagement programming.
- **AmeriCorps*VISTA — Homeless and Travelers Aid Society** (Jul 2010–Aug 2011): Coordinator of Development; sustainability for community-based non-profits in Albany, NY.

**Education:** not visible in available screenshots (page cut off). University at Albany affiliation is as adjunct faculty.

**Proposal-relevant notes:** FreeMoCap Foundation Treasurer/volunteer CFO since Oct 2021 — the longest-standing formal financial officer of the org. Cooperative-finance specialist: founder of a bookkeeping cooperative, controller of a large co-op, teaches accounting at the university level. Strong fit for the Foundation's open/cooperative structure narrative and for demonstrating financial-management capability to NSF.

---

## Gaps / follow-ups

- **RR education:** screenshots cut off before the Education section — need degree(s) if the bio format requires them.
- **NR:** no FreeMoCap role visible on LinkedIn; confirm her start date and current employment status (still at Rapid7 full-time?) before writing the personnel section.
- **EI:** confirm how to describe the dual-CTO situation (Chorus full-time + FreeMoCap part-time) — reviewers will read effort/availability closely.
- **No materials in folder for:** AC (Aaron Cherian, CSO), MN (Michael Nguyen, PM), or JSM (PI) — presumably covered elsewhere.
- Check the solicitation PDFs for the required biosketch format (NSF may require specific SciENcv-style content or page limits per person) before converting this into `.typ` prose.
