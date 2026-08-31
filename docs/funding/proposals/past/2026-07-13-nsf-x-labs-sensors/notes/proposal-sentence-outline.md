# NSF X-Labs Proposal — Sentence Outline

## §1 — Mission

> **Mission.** Build the DOME — a new class of scientific instrument that records the complete perception–action loop of a behaving agent as a single calibrated, uncertainty-tagged measurement — and the autonomous organization required to turn it into shared infrastructure, fusing four disconnected sciences of behavior into one.

*Job of each beat: Observable = the measurement gap. Instrument = the platform technology. New Capability = why it is a platform, not just a tool. Why Unmet = why no existing institution can build it. Vision = the field-reshaping end-state.*

### 1. The Observable

- Every agent, living or engineered, runs the same loop: it senses a thin slice of its environment through imperfect transducers and pushes back against the world to move toward a goal.
    - Information flows in, forces flow out; the brain exists to move the bones.
    - This loop is the shared object of four fields that rarely speak: perceptual and motor neuroscience, musculoskeletal biomechanics, mobile robotics, and embodied AI.

- We can already measure each thread of the loop with extraordinary precision — but only one thread at a time.
    - Silicon probes resolve single neurons; markerless capture and force plates resolve kinematics and kinetics; electromyography resolves individual motor units; mobile eye trackers resolve gaze.
    - Each instrument is superb in isolation and blind to the rest of the loop.

- No one can record the whole loop at once, because the integration is harder than any single lab can sustain.
    - Every so often a team stitches several threads together for one heroic study.
    - But the method lives only in a Methods section, and the wiring decays on the timescale of a single PhD, as the burden of maintaining the integration outstrips what an academic lab can hold together.
    - Each of those teams was reaching for the same measurement — the coupled record of perception *and* action — and each was stopped by the same wall.

- The unmet need is therefore a single instrument, not a better sensor.
    - It must capture every empirically available channel of an agent's perception and action at once: spatially calibrated, temporally synchronized, and rendered commensurable across labs and species.
    - It must be faithful enough that its record can predict neural activity along the sensory and motor pathways — the fidelity bar that separates a recording from a measurement.

### 2. The Instrument

- We call this instrument the DOME — a Densely Overlapping Measurement Environment.
    - It is a densely instrumented region of real space engineered to record every measurable channel of the agent–environment interaction at once: full-body kinematics and kinetics, muscle and motor-unit activity, binocular gaze and reconstructed retinal input, and, where feasible, neural activity.
    - It is the inverse of a space telescope: a room of lenses aimed inward, at the place where the body meets the world.

- The DOME is one instrument built in three forms, each defined by the role it plays in the network.
    - DOME-L is the warehouse-scale flagship in greater Boston: it pushes each instrument to its limits, and is large enough to physically contain and cross-validate the smaller forms, which makes it the metrological reference for the whole network.
    - DOME-S is the lab- and classroom-scale form we disseminate to other groups, extending the webcam capture volumes the FreeMoCap Foundation already supports worldwide.
    - DOME-Mobile is the wearable form we carry outside the lab, used to validate lab-bound research against real-world behavior in natural terrain.
    - Every form produces the same kind of record, because the instrument is defined by its measurement ontology rather than by any single sensor: a camera-based and an inertial estimate describe the same kinematics and fuse into one estimate better than either alone.

- The DOME is not built around one new sensor; we advance the measurement on both halves of the loop, so the platform's own capability frontier keeps moving and the instrument tells us which transducer to build next.
    - On the motor side, we build an actuated, self-calibrating camera array: daisy-chainable Power-over-Ethernet cameras with swappable sensors on programmable mounts, re-aimable and re-focusable from a single console while staying metrically calibrated as one instrument — solving the lived problem of large capture volumes whose cameras get frozen in place because re-aiming and re-calibrating them by hand is too costly.
    - We fuse these outside-in camera estimates with inside-out inertial estimates: cameras are accurate but noisy, inertial capture is precise but drifts, and their principled fusion carries explicit uncertainty rather than hidden guesswork, making trustworthy inverse dynamics and muscle-force estimation tractable from markerless data.
    - On the sensory side, we build the flagship new transducer: a binocular mobile eye tracker that measures degrees of freedom commercial eye trackers do not — ocular torsion and lens accommodation — because a faithful reconstruction of what lands on a moving agent's retina requires them, and because smartphone-grade imagers behind controlled illumination make this a camera-quality bet, not a physics bet.

- We have already built a working animal-scale version of this instrument.
    - The team's ferret and mouse eye trackers already integrate three-camera gaze, full-body kinematics, and world cameras in one calibrated system — a working animal-scale instance of the flagship instrument — and the human, mouse, and ferret builds are being made functionally equivalent so the same measurement crosses species.

- [ALLUDE → §3: DOME-L warehouse specs, DOME-S build plans and FreeMoCap community metrics, DOME-Mobile sensor suite, eye-tracker DoF targets and validation, actuated camera array engineering, camera↔IMU fusion uncertainty budgets, force-plate floor panels, ARGPv3, drone swarm (later phase).]

### 3. The New Capability

- Because every channel is spatially calibrated, temporally synchronized, and expressed in one sensor-grounded ontology, DOME records make heterogeneous sensor streams directly commensurable, with uncertainty traced from each transducer to every derived value.

- This structure makes DOME data consumable by modern reinforcement-learning and robotics stacks with minimal reshaping.
    - A measured bone segment and a simulated robot link are the same RigidBody; a measured ground reaction force and a simulated contact force are the same quantity.
    - Embodied AI and legged robots gain real-world sensorimotor corpora annotated with the explicit uncertainty bounds that safe learning requires.

- The same calibrated array provides physical ground truth for computer vision at large scale.
    - Back-projecting the reconstructed 3D solution onto each camera's 2D view yields a reprojection-error signal that directly improves the underlying skeleton trackers, both as single-camera models and as in-volume estimators — an instrument, in the Topic's own language, engineered to produce better AI training data.

- The archive appreciates over time, because the ontology defines slots for channels no current sensor fills.
    - Once a tracker measures torsion or accommodation, models trained on the new channels can back-predict them for older recordings made before any instrument could capture them, and the same principle up-fills data from lower-cost DOMEs using models trained on flagship data.

- The instrument closes the hypothesis loop on itself.
    - Inverse reinforcement learning on DOME records extracts the reward a biological agent appears to optimize, which both jump-starts robot training and becomes a testable hypothesis about the underlying neural computation.
    - That hypothesis is then probed back inside the DOME by controlled perturbation of the loop, through a reconfigurable augmented-reality ground plane of LED floor panels, projection, and VR that reshapes the terrain a real agent navigates while it is measured.
    - Observation, modeling, and intervention become a single apparatus: the full hypothetico-deductive cycle inside one instrument.

- [ALLUDE → §3: reprojection-error pipeline, robot RL integration with Isaac Lab/MuJoCo, IRL methodology and validation, backfill/upfill statistical framework, ARGPv3 build plan and lineage from ARGPv1 (Matthis 2013–2017), environment-manipulation modalities, the five-station closed loop.]

### 4. Why Unmet

- An instrument like this cannot be built inside the institutions that most need it, for structural reasons that are well understood but rarely stated plainly.
    - A trainee's job is to learn by doing science; a tool's job is to encode hard-won mastery so others need not re-learn it — and these point in opposite directions.
    - Academia rewards the experienced builder for novel findings and pushes infrastructure onto trainees who rotate out on degree timelines, so the shared instrument never accumulates the mastery that would make it trustworthy.
    - The result is the well-documented graveyard of abandoned research software: the incentive structure rewards the thread, not the loom.

- A second structural problem is scope.
    - A tool defined by a research domain partitions its users into specialists; a tool defined by a measurement unites everyone who needs that measurement, however different their goals, and becomes a boundary object — a commons — precisely because it imposes none of them.
    - The FreeMoCap Foundation already ran this experiment: scoped entirely to the measurement, refusing to claim any domain, it became a commons where biomechanists, neuroscientists, roboticists, animators, and game designers now cross-pollinate across 15,000 users in 152 countries.
    - OpenCap and DeepLabCut are excellent and, by being domain-scoped, are the foils that prove the point: measurement-not-domain scoping is what creates a commons rather than a user base.

- A third problem is organizational shape, and it names the answer the Observable left open: the measurement needs its own organization.
    - Conway's Law holds that organizations produce systems mirroring their own structure, so an enterprise of domain-named departments, journals, and grants produces domain-scoped instruments, reviewed by reviewers who can only score work inside one domain — never the long, unglamorous metrology that turns a proof of concept into a tool others trust.
    - The PI left a tenure-track faculty position because the institution could not support this work, and founded the FreeMoCap Foundation as a 501(c)(3) whose primary output is open scientific instruments.
    - The X-Lab's operating model follows: scope the deliverable to the instrument, and fan the science out to a standing network of collaborators — human perception-and-action researchers, robotics and prosthetics groups, and animal labs spanning mouse, ferret, and guinea fowl — who use the tools and convene to feed insight back.
    - Building the tool and leaving the science to others is the mechanism of impact, not a retreat from it: a working shared instrument as the success metric, and full-time career engineers held for years, are exactly the X-Labs model and exactly what a university cannot provide.

- [ALLUDE → §4, §5: PI's expertise and departure from Northeastern, EI's enterprise software background, AC's clinical validation dissertation, KM's mobile DOME lineage, MN's large-scale lab expertise, JKL's AI systems role, RR's organizational health and NSF grant management, NR's CEO operations role, collaborator network roster, governance (FMC-X within FMC-F, PI has final say), autonomy (already autonomous at submission), semi-annual congress/hackathon/workshop/conference cadence, community grants program, FreeMoCap scale receipts.]

### 5. The Vision

- The end-state is a single empirical science of sensorimotor control.
    - Perceptuomotor neuroscience, musculoskeletal biomechanics, mobile robotics, and embodied AI — today four parallel literatures with incompatible tools and vocabularies — become commensurable, so a finding in one becomes evidence in another and four bodies of work collapse into one cumulative science of real-world behavior.
    - On the very same measurements sits a second end-state: the uncertainty-tagged corpora embodied AI and robotics need to learn real-world sensorimotor behavior, reshaping a field of science and seeding a sector of technology at once.

- In seven years, the jogger crossing a rocky field is a routine measurement.
    - Her kinematics, forces, muscle activity, gaze, the terrain beneath her, and the image on her retina are recorded as one object, with a defensible uncertainty on every value, by an instrument a graduate student can operate.
    - The same kind of record — lower precision, not a different kind — is produced by a classroom in Ohio and by a ferret hunting in a laboratory, and the three can be compared because every value traces to the same references.

- We will build the full range and put it everywhere.
    - Hundred-dollar three-camera kits for students, mobile eye trackers that measure ocular torsion and accommodation, field-deployable gait laboratories, and wearable research environments — all interoperable, all producing the same kind of record.
    - Deployed in hospitals and physical-therapy clinics, athletic centers and robotics labs, classrooms, and on the International Space Station — each one an instance of the same instrument, the same measurement, the same growing archive.

- The telescope showed us our place in the universe by pointing outward; the DOME shows us ourselves by pointing inward, at the place where the body meets the world — bringing the ordinary condition of behavior, an agent using vision to place its feet in an unconstrained environment, into routine, traceable measurement.

---

## §2 — Technology Landscape

### 1. The measurement threads and their instruments

- The DOME unifies six measurement threads, each served by a mature but isolated instrument ecosystem.
    - Kinematics: markerless pose estimation (DeepLabCut, SLEAP, VitPose, FreeMoCap), marker-based (Vicon, Qualisys, OptiTrack), and inertial (Xsens, Notch), with a gap between clinically-valid kinematics and inverse-dynamics-grade accuracy.
    - Kinetics: force plates (AMTI, Bertec), pressure-sensing insoles, and instrumented treadmills, with ground reaction forces still hard to measure outside the lab.
    - Eye tracking: Pupil Labs (Core, Neon, Invisible), Tobii, and SMI, none of which capture torsion or accommodation.
    - Neural recording: Neuropixels, miniscopes (1-photon calcium imaging), and mobile EEG, with neural activity still hard to record during unconstrained movement.
    - Muscle activity: surface and intramuscular EMG at motor-unit resolution, with a gap between what OpenSim models need and what current sensors deliver.
    - Environment: photogrammetry, Gaussian splatting, neural radiance fields, RGB-D (stereo, LiDAR, structured IR), and event cameras.

### 2. The composition problem

- These instruments do not compose, for four concrete reasons.
    - Coordinate frames are incompatible, because each sensor defines its own.
    - Clocks are unsynchronized, because there is no common timebase.
    - Semantic schemes are non-interoperable: a "gaze point" in one system is not the same quantity as in another.
    - Uncertainty does not propagate across modality boundaries.
- Mobile Brain/Body Imaging (Makeig et al. 2009) is the fifteen-year case study: a methodology, not a platform, because the integration burden falls on each lab.

### 3. The metrology gap

- The field co-records without co-measuring.
    - Calibration quality κ = (κ_s, κ_t) is the fundamental bottleneck. [Reference observability calculus.]
    - The GUM/VIM framework applied to multimodal capture shows why an unbroken chain of traceable calibrations matters — and why no existing system provides one.

### 4. The ontology gap

- Existing tools are sensor-specific rather than measurement-specific.
    - They are built around a particular camera model or force-plate vendor, not around the measurement itself; kinematics is kinematics whether it came from cameras or IMUs.
    - The consequence: data from different labs, species, and equipment generations cannot be compared, pooled, or cumulatively improved.
    - The DOME's sensor-grounded ontology is the solution: define the measurement, not the sensor.

### 5. The CV field's plateau

- Computer-vision pose estimation has drifted away from the pixels toward ungroundable targets.
    - Targets such as 3D-from-2D, SMPL mesh fitting, and semantic segmentation lack physical ground truth.
    - Trackers still benchmark against aging COCO data scraped from early-2000s Flickr, and fail on out-of-distribution movement — clinical populations, extreme athletics, animal locomotion.
    - The field needs physical ground truth at scale, which a calibrated multi-camera array provides, along with corpora of the movements it currently cannot track.

### 6. The robot training bottleneck

- Reinforcement learning for legged robots is limited by the sim-to-real gap, not by simulation.
    - Simulation has advanced rapidly (MuJoCo, Isaac Lab, Genesis), but sim-to-real transfer remains the critical barrier.
    - The missing resource is ground-truth, uncertainty-tagged, multimodal recordings of real agents in real environments.
    - Existing datasets (Human3.6M, AMASS, GRAB) are single-modality, lab-constrained, or lack uncertainty quantification.

### 7. Quantitative landscape figure

- A single figure will locate current capability against the DOME's target.
    - For each modality, plot current commercial and academic capability against the DOME's target, with the "uninstrumented region" highlighted.
    - Axes: spatial precision, temporal synchronization quality, degrees of freedom captured, and usability/deployability.

---

## §3 — Outcomes

### DOME-L flagship facility

- DOME-L is a warehouse-scale instrumented volume in the greater Boston area.
    - Specs: configurable capture volume up to [TBD] m³, [N] actuated cameras, a modular force-plate floor array (each 0.5 m² panel a force plate, terrain panel, LED panel, or stacked combination), integrated ARGPv3 (LED floor + wall panels, projection, VR), and adjacent animal and fabrication facilities.
    - Phase 0 deliverable: site selection, facility design, and initial build-out.
    - Phase 1 deliverable: an operational DOME-L able to cross-validate DOME-S and DOME-Mobile.
    - KPI: inter-sensor synchronization jitter, end-to-end spatial uncertainty on a reference object, and reprojection error on a standardized movement corpus.

### DOME-S dissemination

- DOME-S extends FreeMoCap's existing webcam-based capture volumes into the disseminated, lab- and classroom-scale instrument.
    - Phase 0: validate DOME-S against DOME-L on a standardized movement battery, establish a calibration protocol any lab can follow, and publish a build guide and parts list.
    - Phase 1: deploy DOME-S at [N] collaborator sites spanning human biomechanics, robotics, visual neuroscience, and clinical applications.
    - KPI: number of deployed and validated DOME-S instances, kinematic accuracy against the DOME-L reference, and inter-site measurement comparability.
        - SPECIFIC TARGET - 510(k) certification of FreeMoCap and DOME instrument as FDA certified for clinical rehab and assessment

### DOME-Mobile wearable

- DOME-Mobile is the wearable form: an IMU suit, binocular eye tracker, and head-mounted world-camera array (stereo RGB, structured IR, LiDAR).
    - Phase 0: sensor selection, initial integration, and benchtop validation.
    - Phase 1: validate DOME-Mobile against DOME-L on locomotion tasks (walking, running, obstacle navigation, stair climbing), indoors and outdoors.
        - Build Drone Swarm Mocap - Drones mounted with simnilar world-scanner on the eye tracker, used to ground the IMU- mocap and flesh out world-scan from head-mounted scanner. 
    - KPI: kinematic accuracy against the DOME-L reference during co-recorded trials, gaze-in-world angular uncertainty, and drift over [TBD]-minute outdoor walks.

### Eye tracker development

- The binocular eye tracker measures torsion and accommodation at 200+ Hz.
    - Phase 0: bench prototype measuring torsion (via iris texture) and accommodation (via higher-order Purkinje reflections) binocularly, validated against a reference eye tracker and an artificial eye.
    - Phase 1: mobile form factor, integrated into DOME-Mobile and DOME-S, validated on human participants during natural locomotion.
    - KPI: torsion accuracy [TBD arcmin], accommodation accuracy [TBD diopters], gaze-in-world uncertainty during walking [TBD degrees], and per-unit cost target [TBD].

### Actuated camera array

- The actuated camera array places cameras on controllable mounts that recalibrate under dynamic reconfiguration.
    - Phase 0: prototype array of [N] cameras on controllable mounts, a calibration method for dynamic reconfiguration, and validation on static and moving reference objects.
    - Phase 1: production array in DOME-L, a remote configuration API, and auto-calibration on sub-volume selection.
    - KPI: post-reconfiguration calibration quality (κ_s, κ_t), time from sub-volume selection to calibrated capture, and reprojection error against a fixed-calibration baseline.

### Camera↔IMU sensor fusion

- Camera↔IMU fusion combines outside-in and inside-out estimates with explicit per-joint uncertainty.
    - Phase 0: develop the fusion algorithm on existing FreeMoCap + IMU-suit data, validate against the DOME-L reference on standardized movements, and establish uncertainty budgets per joint per movement type.
    - Phase 1: real-time fusion in DOME-L and DOME-Mobile, validated for inverse dynamics (joint torques, muscle forces via OpenSim).
    - KPI: joint-center uncertainty at k=2, joint-torque uncertainty against force-plate ground truth, and muscle-force uncertainty against EMG-informed estimates.

### Reprojection-error training pipeline

- The reprojection-error pipeline turns calibrated 3D reconstructions into a training signal for pose estimators.
    - Phase 0: build a pipeline that back-projects calibrated 3D reconstructions onto each camera's 2D view, computes per-joint reprojection error, and uses that error to fine-tune pose estimators.
    - Phase 1: demonstrate measurable improvement on out-of-distribution movements (clinical gait, acrobatics, animal locomotion).
    - KPI: percentage reduction in pose-estimation error on held-out movements, and improvement on standard benchmarks.

### Robot RL integration

- DOME data feeds robot reinforcement learning and inverse reinforcement learning.
    - Phase 0: define a DOME export format mapping directly to MuJoCo/Isaac Lab rigid-body models, record an initial human-locomotion corpus, and demonstrate policy learning from DOME data in simulation.
    - Phase 1: sim-to-real transfer of DOME-trained policies onto physical robots, inverse RL to extract apparent human control policies, and tests of IRL-derived hypotheses in DOME-L via ARGP perturbation.
    - KPI: sim-to-real transfer success rate, policy performance against a simulation-trained baseline, and IRL reward-function predictive accuracy on held-out behavior.

### ARGPv3

- ARGPv3 is a modular augmented-reality ground plane extending the PI's published ARGPv1 apparatus (Matthis 2013–2017).
    - Phase 0: design a modular LED floor-panel system (0.5 m² tiles), prototype with projection-based visual stimuli, and validate that visual perturbations produce measurable locomotor adjustments in DOME-L.
    - Phase 1: full DOME-L floor integration, VR-headset integration for immersive manipulation, and coupled LED floor + wall panels for full visual-field control.
    - KPI: latency from perturbation command to visual update, spatial calibration between LED panels and the DOME coordinate frame, and magnitude of locomotor adjustment per unit visual perturbation.

### Cross-species validation network

- The cross-species network deploys functionally equivalent instruments at animal-collaborator labs.
    - Phase 0: establish calibration and data-exchange protocols with ferret (visual neuroscience + ephys), mouse (systems neuroscience + miniscope), guinea fowl (musculoskeletal biomechanics + EMG), and marmoset (primate electrophysiology) labs.
    - Phase 1: deploy functionally equivalent DOME-S instances at each site and validate cross-species measurement comparability.
    - KPI: number of validated cross-species measurement channels, and inter-species kinematic-model alignment quality.

### Milestone timeline

- The milestones compound across phases, from components to an operating network.
    - Phase 0 (9 months): DOME-L site selection and design, eye-tracker bench prototype, actuated-array prototype, camera↔IMU fusion algorithm, reprojection pipeline v1, DOME-S validation protocol, and collaborator MOUs.
    - Phase 1 Go/No-Go (month 7–9): demonstrated components, a validated calibration chain, and signed collaborator agreements.
    - Phase 1 (24–36 months): operational DOME-L, validated DOME-S at collaborator sites, validated DOME-Mobile, mobile eye tracker v1, actuated array in DOME-L, real-time fusion, robot RL corpus v1, ARGPv3 operational, and cross-species data exchange operational.

---

## §4 — Senior/Key Personnel Qualifications

### Jonathan Matthis, PhD — President / PI

- Jonathan Matthis (President/PI) founded and maintains FreeMoCap and has spent two decades measuring the full perception–action loop.
    - Left a tenure-track position (Assistant Professor, Human Movement Neuroscience, Northeastern University) specifically because the institution could not support the integrated tool-building this work requires.
    - NEI NIH K99/R00 recipient; ~1,400 citations.
    - Published across the loop: gaze and gait during outdoor locomotion (Matthis et al. 2018, Current Biology); reconstruction of retinal input during real-world behavior (Matthis et al. 2022, Current Biology; Muller et al. 2023, Scientific Reports); and the augmented-reality ground-plane paradigm (Matthis et al. 2013, 2014, 2015, 2017).
    - Built and maintains the open-source tooling and the global community the DOME extends.

### NR — CEO

- NR (CEO) brings technology-sector chief-executive experience, freeing the PI to focus on the technical Mission. [Details to fill from .env]
    - Previously founded and ran their own business.
    - Hired as CEO so the PI can concentrate domain expertise on the core technical work rather than organizational operations.

### EI — CTO

- EI (CTO) brings decades of enterprise software architecture — expertise largely absent from academic contexts. [Details to fill from .env]
    - Chief architect and CTO for established software companies.
    - Will ensure world-class enterprise-grade architecture in an open-source project, and build training and workshop infrastructure to inject professional software-development practice into the scientific community.

### AC, PhD — Chief Scientific Officer

- AC (CSO) validated FreeMoCap against research-grade optical motion capture and leads clinical dissemination. [Details to fill from .env]
    - Dissertation validated FreeMoCap against Qualisys, demonstrating clinically valid kinematics from commodity hardware.
    - Expertise in clinical research-tool validation, bench-to-bedside development, neuroprosthetics design, and brain imaging.
    - Core FreeMoCap developer and validation lead; holds the skillset for DOME-S development and clinical dissemination.

### JKL, PhD — Chief AI Officer

- JKL (CAIO) deploys AI systems across classroom, laboratory, and enterprise environments. [Details to fill from .env]
    - PhD in Cognitive Science; Director of the Cognitive Science Program; currently Senior AI Applications Engineer at [SOLID].
    - Will build internal AI systems for development assistance, user support, and educational deployment.

### RR — CFO

- RR (CFO) runs financial operations and NSF grant management. [Details to fill from .env]
    - Bookkeeping, NSF grant management, and financial operations; founded their own bookkeeping cooperative.
    - Taught finance theory at the university level; ensures organizational health and entrepreneurial development.

### KM — Project Manager / Mobile DOME Lead

- KM leads DOME-Mobile and drove the PI's outdoor retinal-optic-flow work. [Details to fill from .env]
    - Key driver of Muller et al. 2023 (retinal optic flow during outdoor locomotion); worked with the PI on core technology for Matthis et al. 2022.
    - Holds the sub-skills to build DOME-Mobile's core instrumentation.

### MN — Project Manager / DOME-L Lead

- MN leads DOME-L and brings clinical-biomechanics and large-lab systems expertise. [Details to fill from .env]
    - Expertise in clinical biomechanics, medical-systems design, mechatronics for clinical tools, and multi-modal motion-capture lab management.
    - Holds the skillset for large-scale DOME-L facility design, construction, and operation.

---

## §5 — Team Capabilities Statement

### Complementary expertise

- The leadership team spans the full stack the DOME requires, a combination no single institution's faculty could assemble.
    - Scientific domain expertise: JSM (perception/action neuroscience), AC (clinical biomechanics).
    - Enterprise software architecture: EI.
    - AI systems: JKL.
    - Hardware and mechatronics: KM (mobile/wearable), MN (large-scale facilities).
    - Organizational operations: NR (CEO), RR (CFO/finance).
    - The combination exists because the FreeMoCap Foundation was built from the ground up to produce integrated scientific instruments.

### Governance during Phase 0 and Phase 1

- The FreeMoCap X-Lab (FMC-X) will operate as an independent project within the FreeMoCap Foundation, a 501(c)(3) nonprofit.
    - The Foundation runs other work (e.g., the ongoing FreeMoCap Project), but the missions almost fully overlap.
    - Leadership is nearly identical between FMC-F and FMC-X, with final decision authority resting with the President/PI at the top of the org chart.
    - Research, partnership, and organizational decisions are made in days, not weeks, with no higher management to consult.

### Autonomy

- The FreeMoCap Foundation is already autonomous as of this submission.
    - Full internal control of funding allocation, research direction, partnership agreements, intellectual property, and hiring, with no parent-institution approval required for any operational decision.
    - Satisfies all conditions of the NSF X-Labs Autonomy Factor Test (§6.1.1) at the time of submission.

### Collaborator network

- A standing, active network of research groups already spans every domain the DOME serves.
    - Members include human perception-and-action researchers, robotics and prosthetics groups, visual neuroscientists studying ferret and mouse, musculoskeletal biomechanists studying guinea fowl, and primate electrophysiologists.
    - The network is real and active, not aspirational, with existing collaborations and shared tooling across multiple sites.
    - The PI architects and holds the instrument-plus-network together; the domain arms are executed by named collaborators.

### Community governance and engagement

- The community sets design and roadmap priorities through structured processes that gather input without stalling on consensus.
    - A Request-for-Comments process modeled on Python's PEP system collects broad input on design decisions, work targets, and roadmap priorities.
    - Semi-annual in-person convening: Workshops (train students and out-of-domain experts), Hackathons (onboard developers and connect normally remote workers), Conferences (share DOME-based research), and a Congress (organizational status, plans, and direction).
    - A Community Grants Program and Developer Fund support the open-source network and serve as a testbed for engagement mechanisms (Eurovision-style voting, DAO mechanisms, and others).

### FreeMoCap as completed pilot

- FreeMoCap has already proven this model at smaller scale.
    - It is an open-source markerless motion-capture instrument, built and maintained outside academia, scoped to the measurement — turning cameras and light into calibrated, usable skeleton estimates with an obsessive focus on usability — and refusing to claim any research domain.
    - That refusal is what made it a commons.
    - Receipts: over 15,000 users from 152 countries, over 10,000 GitHub stars, and over 3,500 Discord members.
    - The DOME applies this proven model — measurement-scoped, master-built, open, full-time-maintained — to the far larger target of the complete interaction loop, at a scale only dedicated, autonomous, milestone-based X-Labs funding can reach.

### IP management and dissemination strategy

- The IP strategy keeps the core instrumentation open while actively pursuing adoption and commercialization. [To develop — OT contract requires an IP Management Plan by end of Phase 0.]
    - Open-source core instrumentation with permissive licensing for downstream use.
    - IP structured so platform technologies stay widely accessible while the team pursues adoption, commercialization, and ecosystem growth.

---

## Notes

- **Citations to firm up:** Yamins et al. 2014 (PNAS), Yamins & DiCarlo 2016 (Nat Neuro) — goal-driven models predict neural firing; Sussillo et al. 2015 — motor cortex RNNs; Michaels et al. 2020 — reaching RNNs; Delp et al. 2007 — OpenSim; Makeig et al. 2009 — MoBI; Star 1989 — boundary objects; Conway 1968 — Conway's Law; Eghbal 2020 — working in public / abandoned research software; AAC 2023 — research software sustainability; Uhlrich et al. 2023 — OpenCap; Mathis et al. 2018 — DeepLabCut; Matthis et al. 2013, 2014, 2015, 2017, 2018, 2022; Muller et al. 2023, 2024; JCGM 2008 (GUM), 2012 (VIM); Taylor 1994, Possolo 2015 — metrological traceability.
- **Acronym:** DOME = Densely Overlapping Measurement Environment
- **Page budget target:** Mission ~1.5-2 pages of the 8-page limit