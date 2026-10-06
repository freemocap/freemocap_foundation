# Mission — Declarative Content Outline

Terse restatement of `proposal/sections/1-mission-dome.typ`. Content only, no prose.
Tags: `[SAY]` state in Mission · `[ALLUDE]` one line, develop later · `[MOVE →§x]` belongs in a later section · `[FIT Cx]` scores a criterion.

---

## 0. Mission statement (boxed) `[SAY]` `[FIT C1,C3]`
- Build a new class of scientific instrument — the **DOME** — that renders the complete, calibrated, synchronized agent–environment interaction measurable for the first time, plus the open organization to sustain it, unifying perception–action across humans/animals/machines into one science of sensorimotor control.
- Alt line (`mission_b`): names the closed loop (measure → model → manipulate) instead of the organization.
- Flag: "complete … for the first time" may over-claim; fallback = "the whole agent–environment loop … commensurable for the first time."

## 1. Hook — the universal loop `[SAY]`
- Every living and engineered agent solves one problem: sense a thin slice of environmental energy through imperfect transducers → generate reaction forces against a substrate → move toward a goal.
- Information in, forces out; the brain exists to yank the bones around.
- That loop, running continuously in the real world, has never been recorded whole.

## 2. Measurement-revolution frame `[SAY]` `[FIT: echoes Topic §3.0]`
- Every scientific revolution followed a measurement revolution (telescope, microscope, MRI).
- The un-instrumented frontier now = the whole behaving agent in its natural environment.
- The field's own goal (naturalistic real-world neuroscience) has outrun its instruments.
- Each thread of the loop is measurable alone; none are measurable together.

## 3. The fracture — what is impossible today `[SAY]` `[FIT C1; anti-software-exclusion]`
- The fields already have superb single-thread instruments: neural (probes, miniscopes), kinematics/kinetics (markerless mocap, force plates), muscle (EMG), gaze (mobile trackers).
- No instrument captures the loop whole: incompatible coordinate frames, unsynchronized clocks, non-interoperable semantic schemes.
- Consequence: the basic question — *what did this agent see, and what did it therefore do* — has no calibrated, unified answer.
- **Thesis: the fracture is in the measurement itself, not the sociology of the fields.**
- Hinge: need a new instrument that captures every empirically available perception + action channel at once — calibrated, synchronized, commensurable.

## 4. The DOME — novel platform technology (HERO, hardware-first) `[SAY]` `[FIT C1]`
- **DOME = Densely Observable Measurement Environment**: an instrumented region of space recording every measurable channel of the interaction at once (kinematics, kinetics, muscle/motor-unit, binocular gaze + retinal input, and where feasible neural), spatially calibrated + temporally synchronized + expressed in one sensor-grounded ontology.
- **Novelty spans BOTH sides of the loop (motor + sensory)** — not one hero sensor. This is what closes the "just a software/ontology layer" read.
- ### 4a. Three variants (one instrument)
  - **DOME-L** — warehouse flagship (Boston); large enough to contain + cross-validate the smaller variants → doubles as metrology/validation platform. `[FIT C1: mission-justified reason for warehouse scale]`
  - **DOME-S** — standard lab/classroom instrument; direct extension of FreeMoCap's global webcam capture volumes; the dissemination target.
  - **DOME-W** — wearable/outdoor (IMU suit + mobile eye tracker + world camera); genuinely new instrument, only ever a single-lab postdoc proof-of-concept, never operationalized in academia.
- ### 4b. Cross-scale validation ("Ouroboros")
  - Prior team dissertation already validated FreeMoCap vs research-grade optical system → clinically valid kinematics. `[cite AC dissertation + preprint — not yet in .bib]`
  - DOME-L industrializes it: flagship continuously certifies disseminated DOME-S via bootstrapping calibration.
  - `[MOVE →§5: scale metrics ~15k users / ~10k stars / ~3.5k Discord]` · `[MOVE →§3/§5: calibration method]`
- ### 4c. Ontology = how it scales (clause only) `[ALLUDE]` `[MOVE →§2: full hydration mechanics]`
  - Instrument defined by ontology, not any one sensor → different sensors hydrate the same model.
  - Camera + IMU estimates describe the same `Human` with different uncertainty and fuse into one; model aligns across sensor generations and species.
- ### 4d. Motion-capture side — three contributions (co-hero; keep tighter than eyes)
  - **(i) Actuated, self-calibrating camera array** (new imaging instrument). `[MOVE →§2/§3 engineering]`
    - Daisy-chainable PoE cameras, modular swappable sensors, IR + RGB illumination.
    - Each on pitch/roll/yaw mount with controllable zoom/aperture/focus.
    - Whole array's extrinsics + intrinsics controllable at once from one console; select a sub-volume → array re-aims + re-focuses.
    - Novelty = moves **and** stays metrically calibrated as a coordinated measurement array (PTZ exists; fixed calibrated mocap exists; this combination does not).
    - Solves a lived problem: re-aiming/recalibrating big rigs is so costly they get frozen → retaskable-yet-calibrated serves whole-room + zoomed-in, and ships to others.
  - **(ii) Camera↔IMU sensor fusion → crosses the inverse-dynamics threshold.** `[MOVE →§3 numbers]`
    - Clinically valid kinematics ≠ inverse-dynamics-grade (torques/muscle forces).
    - Camera = accurate but noisy (centered, low precision); IMU = precise but drifting (smooth, low accuracy).
    - Fuse complementary error profiles (IMU suit inside camera volume) → beats either alone, carries explicit uncertainty (not black-box gap-fill) → trustworthy muscle-force estimation (OpenSim-grade). `@delp2007`
  - **(iii) DOME as pose-estimation training/correction engine.** `[FIT: tightest hit on "AI training pipelines"]` `[MOVE →§2 CV-field critique]`
    - Calibrated array = physical ground truth the CV pose field lacks at scale.
    - Use reprojection error (per-camera 2D vs reconstructed 3D) as correction signal to improve 2D skeleton trackers — standalone and in-volume.
    - Field plateaued: drifted away from pixels toward ungroundable targets (3D-from-2D, SMPL meshes); trackers trained on aging COCO fail out-of-distribution (clinical populations, gymnastics/circus).
    - DOME-L records those movements with ground truth → corpora + correction that measurably improve existing models.
  - **(iv) Drone-swarm follow-cam** `[ALLUDE / DEFER — not Phase 1]`
    - Synchronized camera-drone swarm follows IMU-suited walker outdoors; drone cameras lower-fidelity than fixed walls but metrically useful once fused with suit + head-mounted stereo.
- ### 4e. Eye-tracking side — flagship new transducer (MEATIER hero, most room) `[FIT: cleanest sensing-and-imaging win; animal overlap]`
  - Gap: current mobile eye trackers are old, closed, ~1° error; torsion + lens accommodation unmeasured at any price.
  - Why it matters: torsion active ~always in natural locomotion (VOR); accurate retinal-projection reconstruction requires it. `@matthis2022 @muller2023 @muller2024`
  - The bet: **camera-quality bet, not a physics bet** — smartphone-grade imagers exist; eye trackers never adopted them; modern imaging + controlled illumination makes the two "unreachable" DOFs tractable in a mobile tracker.
  - Payoff: ontology defines slots (torsion, accommodation) no sensor fills → instrument specifies which sensor to build next; once built, archive improves retroactively (models back-predict new channels for old recordings).
  - Anchor (track record): already built plausibly best-in-world ferret + mouse eye trackers; building functionally equivalent human/mouse/ferret instruments. `[MOVE →§4/§5 specifics]`

## 5. The closed experimental loop `[ALLUDE]` `[FIT: 2nd "AI pipelines" hit + TIP sector mandate]` `[MOVE →§3 detail]`
- Retained: **robot/RL angle** and **ARGPv3**.
- Every stream in one ontology → DOME data directly consumable by RL/robotics stacks (Isaac Lab, MuJoCo); measured bone segment = simulated robot link = same `RigidBody`.
- Loop: instrument → data → trains control models → (same task + constraints → convergent solutions) models become testable hypotheses about neural computation. `@yamins2014 @sussillo2015 @michaels2020` (review: `@yamins2016`)
- Intervention arm (ARGP): modular AR ground plane (LED floor panels + projection + VR) reshapes terrain *while the agent is measured*; extends PI's published V1. `@matthis2013 @matthis2014 @matthis2015 @matthis2017`
- Result: observation + modeling + intervention in one apparatus = full hypothetico-deductive cycle.

## 6. Why unmet by existing structures `[SAY]` `[FIT C2,C4]`
- **Move 1 — tools need masters, not trainees** (structural, not competence).
  - Trainee's job = learn by doing science; tool's job = encode mastery so others skip the learning. Opposite directions.
  - Academia rewards novel findings + offloads infrastructure to trainees who rotate out → instrument never accrues trustworthy mastery → abandoned-research-software graveyard. `@eghbal2020 @aac2023`
- **Move 2 — scope to the measurement, not the domain** (boundary-object move).
  - Domain-scoped tool partitions users; measurement-scoped tool unites everyone who needs that measurement. `@star1989`
- **Move 3 — FreeMoCap already ran the experiment and it worked** (completed pilot).
  - Scoped to measurement + usability, refused a research domain → commons where biomechanists/neuroscientists/roboticists/animators/game designers meet + cross-pollinate.
  - OpenCap `@uhlrich2023`, DeepLabCut `@mathis2018dlc` = excellent but domain-scoped → foils, not competitors. `[MOVE →§5 metrics]`
- **Move 4 — operating model: X-Lab builds tool; network does the science.**
  - Fan science out to standing collaborator network: human P&A, robotics/prosthetics, visual neuroscience, animal labs (mouse/ferret/guinea fowl).
  - Semi-annual congress: share findings → feed insight back into instrument → co-plan next dev cycle. `[FIT C2 + §11.1 partnerships]`
- **Bridge (do not skip):** "build tool, leave science to others" = the *mechanism* of impact, not a retreat — instrument makes measurements commensurable/cumulative; closed loop proves what it enables; success metric = working shared instrument, needing full-time career engineers = exactly the X-Labs model, not fundable in a university.

## 7. Vision — reshaped end-state (two-sided) `[SAY]` `[FIT C3]`
- **A field:** one empirical science of sensorimotor control — neuroscience + biomechanics + robotics + embodied AI become commensurable; a finding in one is evidence in another; four literatures collapse into one cumulative science.
- **A sector:** same measurements yield metrologically grounded, uncertainty-tagged corpora embodied AI + robotics need — an instrument intentionally engineered for next-gen AI training pipelines.
- One apparatus reshapes a field of science and seeds a sector of technology at once.

---

### Open items (carried from source)
- Boxed line: pick `mission_a` vs `mission_b`; resolve "complete" over-claim.
- Citations ADDED to `.bib` (verified DOIs): `yamins2014` (10.1073/pnas.1403112111), `yamins2016` (10.1038/nn.4244), `sussillo2015` (10.1038/nn.4042), `michaels2020` (10.1073/pnas.2005087117), `uhlrich2023` OpenCap (10.1371/journal.pcbi.1011462).
- Citation STILL BLOCKED: AC dissertation + preprint (FreeMoCap vs Qualisys) — AC's real name not in repo; not web-resolvable. Need name/title/DOI from Jon.
- Over-length for 1.5–2pp: all `[MOVE →§x]` nodes are the winnowing candidates.
