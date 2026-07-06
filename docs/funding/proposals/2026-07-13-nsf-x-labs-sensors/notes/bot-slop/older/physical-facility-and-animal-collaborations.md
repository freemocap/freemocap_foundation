# The Physical Instrument — the Boston human flagship + the animal-model collaboration network

*Advisory synthesis (bot slop by definition). For JSM. Twelfth in the series; makes the abstract "instrument" concrete: a specific physical facility the X-Lab builds and operates, plus the ongoing animal-model collaborations it unifies. Builds on [D4] instrumentation, [D6] the pipeline, [D7] metrology, [D8] comparative phylogeny, [D9] tiered dissemination, [D11] QC copilot. Cited inline.*

---

## 1. Why get concrete — the strategic value of a specific physical instance

Talking about "an instrument for the empirical capture of agent–environment interaction" is abstract; **a building in Boston full of synchronized sensors is not.** Anchoring the proposal to a specific, buildable physical deliverable does three things at once:

- It makes the project read unambiguously as **instrumentation**, clearing the Topic-2 software-exclusion landmine [D4][D5].
- It gives NSF a **tangible, measurable, fundable deliverable** with a footprint, a build plan, and milestones (Phase 1 ≤ $50M/yr is facility-scale money).
- It is the concrete **Tier-0 flagship node** of the tiered dissemination model [D9] — the high-density, best-calibrated instance from which everything else is defined.

So the recommendation is to lead with the physical thing and let the ontology/metrology/organization ideas be *how it works and scales*.

## 2. The human flagship — two wings: a room and a rig

**The core X-Lab builds and operates the human version, because human perceptual-motor capture is the PI's expertise.** The human flagship has **two wings that validate against each other**: **Wing A**, a fixed room-mounted capture volume (maximum precision, manipulable environment); and **Wing B**, a wearable/outdoor system (portable, naturalistic, productizable). Together with the animal-model network (§3) they form a **three-legged validation triangle** (§4).

### Wing A — the instrumented volume (Boston)
Acquire (buy or lease) a large open physical space in **Boston** and build a calibrated, synchronized **instrumented volume** — a room where an entire behaving human can be captured across every modality at once:

- **Markerless multi-camera motion capture** (FreeMoCap / SkellyCam) — full-body kinematics; optional marker mocap for cross-validation.
- **Force plates** — ground-reaction forces / kinetics.
- **Mobile + world eye tracking** — gaze in the world.
- **AR / VR / MR systems** — controllable, perturbable environments inside the captured volume.
- **EMG** — muscle activity.
- **Physiology** — cardiorespiratory and related signals.
- **Neural** where feasible (mobile EEG for humans; invasive modalities live on the animal side, §3).

This is "the whole works": a single instrumented volume producing a **calibrated, synchronized, semantically-unified** record of a whole agent acting in a naturalistic-but-controllable environment [D6].

**Precedent (and how we differ):** instrumented VR+mocap+force-plate rooms already exist — **CAREN** (Computer Assisted Rehabilitation ENvironment) and **GRAIL** (Gait Real-time Analysis Interactive Lab) fuse treadmill, motion capture, force plates, and immersive VR ([CAREN/GRAIL, Motek](https://www.nature.com/articles/s41597-024-03939-0); [OptiTrack + force-plate integration](https://www.optitrack.com/applications/movement-sciences)). But those are **rehab-focused, closed, single-purpose** fusions. Our flagship generalizes the idea to the **full sensor-grounded ontology** [D4], is **open and metrologically traceable** [D7], and is built from the ground up to be **commensurable with animal-model captures** (§3). We are not inventing the instrumented room; we are turning it into a general, open, cross-species measurement instrument.

### Wing B — the wearable / outdoor system (the Matthis 2018/2022 lineage, extended)
The second wing takes capture *out of the room and into natural environments*, continuing the apparatus of Matthis, Yates & Hayhoe (2018) and Matthis et al. (2022) [D4]:

- **Wearable core:** an **IMU motion-capture suit** + **mobile/world eye trackers** + a **wearable computer** — the same basic rig as the 2022 study, updated with the sensor advances since.
- **Egocentric scene reconstruction:** a **head-mounted camera** builds a 3D model of the terrain via **NeRF / Gaussian-splat photogrammetry** — monocular/egocentric 3D Gaussian Splatting + visual-inertial SLAM are now real-time-capable ([egocentric 3DGS](https://arxiv.org/pdf/2604.23803); [monocular Gaussian SLAM](https://arxiv.org/pdf/2411.17982)).
- **The new piece — a coordinated autonomous drone swarm.** A small number of camera-carrying drones **follow the subject**, simultaneously (a) **avoiding obstacles**, (b) **keeping the subject in view**, and (c) **synchronizing telemetry/orientation relative to one another** so their views fuse into a joint estimate of *both the person and the ground/terrain*. Drone-swarm subject-following capture is an established research direction ([Human Motion Capture Using a Drone](https://arxiv.org/pdf/1804.06112); multi-drone camera-control formations that avoid ill-posed opposite-facing pairs). We would **not** expect drone triangulation to match Wing A's wall-mounted, carefully-calibrated cameras — its job is different: **ground the IMU's drift** (an external visual reference stops inertial dead-reckoning from wandering — the classic visual-inertial-SLAM fix, [VI-SLAM-augmented inertial mocap outdoors](https://arxiv.org/pdf/2302.08294)) and **estimate the terrain** the person is navigating.
- **Cross-fusion:** the drone-borne terrain map and the **egocentric** head-camera reconstruction are fused into one estimate of the person's movement *and* their position in the world — ground and body reconstructed together.

**The calibration bridge (why the two wings need each other):** run the wearable rig *inside* Wing A's volume first, so the high-precision room provides **ground truth to train and calibrate the wearable + drone estimates**, then take the calibrated rig outdoors. This is a **metrological traceability chain** [D7]: the portable, drift-prone outdoor measurements inherit their trustworthiness from the calibrated volume they were validated against.

### Why two wings
- **Wing A (room):** higher precision; easy **environment manipulation** — VR/AR/MR, CAVE-style interactive projection — but must be set up in place.
- **Wing B (rig):** portable, works in **natural environments**, and is far easier to **productize** ("here's a box you strap on" vs. "we come install a room") — the more sellable, more disseminable form [D9].
- **Why both:** they **cross-validate** — the room is the ground-truth reference, the rig is the reach, and calibration flows from A → B.

### The hardware we must build — next-generation eye trackers (human + animal)
The proposal must be **ambitious but practically grounded**: integrate **existing technology wherever possible** (FreeMoCap/SkellyCam is already a solid, adopted tool) and **build new hardware only where what exists is genuinely insufficient**. The clearest "must-build" is **eye tracking**.

- **Why current eye trackers aren't good enough.** Commercial video trackers top out around **~1° of gaze error** and trade spatial for temporal resolution ([commercial precision limits](https://pmc.ncbi.nlm.nih.gov/articles/PMC8190563/)); worse, **whole degrees of freedom of the eye are unmeasured by any tracker at any price** — notably **ocular torsion** (rotation about the line of sight) and **lens shape / accommodation**. The physics to do better is known but not packaged: the **dual-Purkinje-image (DPI)** method compares the 1st (corneal) and 4th (back-of-lens) Purkinje reflections for very-high-resolution oculomotor measurement, and can be extended to track accommodation ([DPI / Purkinje-reflection imaging](https://pmc.ncbi.nlm.nih.gov/articles/PMC10166114/); [open-source digital DPI, 2025](https://www.biorxiv.org/content/10.1101/2025.04.18.649589.full.pdf)); **iris-feature tracking** recovers torsion ([torsion via stable iris features](https://pmc.ncbi.nlm.nih.gov/articles/PMC2958308/)). We would engineer **high-quality, high-speed eye imaging + controlled IR illumination** so iris features (→ torsion) and higher-order Purkinje images (→ lens/accommodation) become trackable — capabilities not accessible in *any* current human or animal tracker.
- **A textbook hydration story [D6].** With today's tools the eye model hydrates only to **elevation + abduction** (2 rotational DOF); **torsion and lens shape stay un-hydrated because the instrument can't reach them.** A better eye tracker **hydrates those slots** — a concrete, vivid example of the whole framework. And it pays off *backward*: once the advanced sensor exists, we can **train models to back-predict** torsion/lens for older, lower-quality recordings (recomputed from the same data where possible, or estimated from models trained on the richer sensor). **The archive improves retroactively as the instrument improves** — a strong data-longevity argument [D9].
- **Animal eye trackers — building on what we've *already built*.** This is not a from-scratch ambition. **We have already built what are plausibly the best-in-world eye trackers for ferrets and mice.** For the **ferret** (with B.S.) we built a **three-camera, skull-mounted head rig** integrated with **full-body motion capture, AR displays, binocular gaze, and world cameras — all calibrated in a single system** — a working proof-of-concept of full-body ferret kinematics + binocular gaze + retinal-projection estimation. That is, in effect, **a miniature animal-scale instance of the entire flagship instrument, already demonstrated.** And it's **actively advancing right now** — the current work is **integrating Neuropixels electrophysiology + one-photon miniscope calcium imaging** into that same eye-tracking/mocap system (adding the neural layer to the behavioral capture), so this is a live, moving program, not a finished artifact we're resting on. For the **mouse** we have a **built (not-yet-deployed) prototype** monocular tracker that cuts at the **~3–4 g** limit (currently tethered). These already exceed anything else available; the X-Lab's job is to **push proven prototypes to the next engineering tier** — wireless, torsion- and lens-capable, miniaturized, robust, longitudinal:
  - **Mouse:** we've **built a monocular tracker** at the ~**3–4 g** budget (tethered); the *ideal* payload (two eye images + one world image + other sensors) isn't yet feasible at that weight with current camera quality and needs serious miniaturized-camera engineering. *(For scale: ultralight rodent head-cams run ~1.3 g single-camera and 180 mg analog modules yield ~2.6 g four-camera headsets that already capture cyclotorsion — [mousecam](https://pmc.ncbi.nlm.nih.gov/articles/PMC7874224/) — so the target is hard, not fantasy.)* Plan: a fully-integrated package with a **low-power Bluetooth** link, powered by a tiny battery **trickle-charged by a conductive floor in an instrumented home cage** → effectively **indefinite recording** within the enclosure.
  - **Ferret:** currently **tethered**, which brings its own problems and **limits longitudinal recording**; a wireless design unlocks continuous data.
  - **Rat:** more real estate, but the goal of **communal/longitudinal housing** means the gear must survive cage-mate interaction — a *robustness* bar on top of miniaturization.
  - **Marmoset/primate:** freely-moving head-mounted marmoset eye tracking already exists ([ref](https://www.biorxiv.org/content/10.1101/2024.05.11.593707.full.pdf)); we'd push quality + wireless.
- **Be explicit about the build.** This is ambitious, large-scale, long-term hardware R&D — *exactly what X-Labs wants*. The honest framing: existing tech as the substrate, and clear-eyed candor about the real hardware we must build — **eye trackers first among them** — as concrete Phase-1 deliverables.

## 3. The animal-model collaboration network (ongoing, not hypothetical)

The X-Lab does the **human**; partner labs do the **model-organism equivalents** of the same instrument. Crucially, **this work is already underway** — the proposal continues and *unifies* it under a shared ontology, rather than promising it from scratch (a major credibility/de-risking point).

| Species | Lead (initials) | Capture / focus | Status |
|---|---|---|---|
| **Ferret** | **B.S.** | **built:** 3-camera skull-mounted eye tracker + full-body mocap + AR + binocular gaze + world cams, all calibrated together (best-in-world proof-of-concept); **now actively integrating Neuropixels + one-photon miniscope** neural recording into that system | built + actively extending |
| **Guinea fowl** | **M.D.** *(JSM referred to as "D")* | musculoskeletal + EMG biomechanics of legged locomotion | ongoing |
| **Mouse** | **D.F.** | optogenetic measurement of eye + body | ongoing |
| **Primate (marmoset / macaque)** | *[initials TBD]* | primate-grade foveal vision + hand/oculomotor control | to confirm |

**Technically real now:** freely-moving, naturalistic neural recording has matured to make the animal side feasible — chronic **Neuropixels** in freely-moving mice ([eLife](https://elifesciences.org/articles/47188)), open multimodal platforms like **ONIX** for neural recording + perturbation during naturalistic behavior ([Nature Methods](https://www.nature.com/articles/s41592-024-02521-1)), **miniscope** calcium imaging, and wireless large-coverage recorders for **marmoset** natural behavior ([ref](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12786299/)). The invasive neural modalities that can't go on humans live here, on the animal branches — which is exactly the comparative logic of [D8].

*(Initials reconcile with the phylogeny doc [D8], which used B.S./M.D./D.F.; the primate collaborator was not assigned initials in JSM's account — flagged as TBD. Confirm the mapping against the local `.env`.)*

## 4. What makes it ONE instrument, not four separate projects

The two flagship wings + the animal labs are a **single distributed instrument** because they share:

- **The sensor-grounded ontology** [D4][D6][D8] — human and animal captures describe the same entity/trait structure, so they're directly comparable.
- **Metrological traceability & calibration** [D7] — every site's measurements are uncertainty-tagged and traceable, so they're commensurable *across labs, species, and equipment tiers* (a mouse rig and the Boston volume differ in uncertainty, not in kind).
- **The comparative design** [D8] — each species is chosen for its shared/unshared traits with humans (mechanistic vs. functionalist insight); the network *is* the comparative-science instrument.
- **The dissemination model** [D9] — Boston = Tier-0 flagship; the animal labs = specialized high-capability nodes; home-lab publisher/subscriber release.
- **The QC/observability copilot** [D11] — helps each site keep its captures clean and ontology-consistent.
- **The validation triangle** — Wing A (room, ground truth) calibrates Wing B (wearable/outdoor, reach); both cross-connect to the animal-model labs (deeper, invasive biology). Each leg validates and extends the others: precision ↔ portability ↔ biological depth.

## 5. The yearly convening

An annual **conference / congress / working meeting** where every collaborating lab physically gathers in one place and aligns on the same direction. This is the **social glue** that keeps a distributed instrument coherent — the federation-building and "trading-zone" mechanism [D9][D10] that big-science collaborations (LHC, Dynamic Walking) rely on. It doubles as the dissemination and teaching venue (distilled exemplars, shared tooling) [D9][D10].

## 6. Why this is a strong proposal move (and where it maps)

- **Concrete, credible, de-risked:** a physical facility + *already-ongoing* named collaborations = track record, not promises. And the hardware program **extends proven work, not blue-sky**: we've *already built* world-leading eye-tracker prototypes — a ferret 3-camera + full-body + binocular-gaze + AR system (a working animal-scale mini-instrument), and a ~3–4 g monocular mouse tracker. NSF rewards "demonstrated record of success."
- **Plays to strengths + leverages existing assets:** X-Lab owns the human expertise; the animal expertise already exists in partner labs.
- **Maps cleanly to both X-Labs objectives:** the instrumented volume = the *platform technology*; the Boston hub + distributed labs + annual convening + governance = the *new organizational research structure*.
- **Two productizable forms + a validation triangle:** the wearable rig is a sellable **product** and dissemination vector [D9], the room is the precision reference, and the animal network is the biological depth — each de-risks and validates the others.
- **Ambitious but grounded:** integrate existing tech where it's good enough (FreeMoCap), and build new hardware only where nothing adequate exists (**eye trackers** foremost) — the exact ambition-vs-pragmatism balance X-Labs asks for, and honest about the real build required.
- **Section fit:** the facility and collaboration network belong in **Mission** (the concrete instrument), **Outcomes** (build milestones, capture datasets), and **Team Capabilities** (the collaboration network + governance). This is one of the few places the 8-pager should be *very* concrete.

## 7. Open questions to confirm (JSM's call — don't invent)

- Facility: **buy vs. lease**, size, exact Boston location, build timeline; safety/space requirements for force plates + VR + a full capture volume.
- **Budget scale** and phasing (Phase 0 design/siting → Phase 1 build-out).
- **Primate collaborator** identity/initials; marmoset **and** macaque, or one?
- **IRB (human) + IACUC (animal)** approvals across the network; data-governance across institutions.
- How much facility specificity to put in the 8 pages vs. reserve for the oral round / budget justification.
- Confirm the **initials mapping** (esp. guinea-fowl "D" = M.D.) against the `.env`.
- **Wing B specifics:** drone-swarm airspace/FAA constraints for outdoor subject-following; number of drones; onboard vs. offboard compute; which IMU-suit + eye-tracker + wearable-compute stack; how much of the drone-swarm arm to promise in Phase 1 vs. later (it's the newest, highest-risk element).
- **Eye-tracker build scope:** which added DOF to promise (torsion, lens/accommodation) in Phase 1; per-species targets (mouse ~3–4 g wireless + instrumented charging cage; ferret un-tethering; rat communal-robustness; human DPI-class); build in-house vs. partner for camera/sensor fabrication; IACUC for chronic wireless harnesses/implants.

## 8. Say vs. allude (8-page discipline)

- **Say (concretely):** the two-wing flagship — the Boston instrumented volume (Wing A) **and** the wearable/outdoor rig with its drone-swarm terrain-grounding (Wing B) — the named (initialed) *ongoing* animal collaborations and species; the annual convening. This is prime tangible-deliverable material, and the drone swarm is a distinctive, ambitious element worth naming.
- **Say (the build):** the next-generation **eye-tracker** program (human + animal; torsion + lens/accommodation via iris + Purkinje imaging; wireless miniaturized animal trackers) — a concrete hardware deliverable and a vivid, self-contained example of the hydration idea (elevation/abduction now → torsion/lens once the tool is built → retroactive back-prediction on old data).
- **Allude:** the ontology/metrology as the commensurability glue (one or two clauses, pointer to the mechanism) [D4][D7].
- **Don't:** let the modality shopping-list crowd out the *why* (whole-agent, cross-species, calibrated, unified) — the list is evidence, the unified record is the point.

---

### Sources
- Instrumented volumes: [CAREN/GRAIL & VR-mocap-force integration](https://www.nature.com/articles/s41597-024-03939-0) · [OptiTrack movement sciences / force plates](https://www.optitrack.com/applications/movement-sciences)
- Freely-moving neural + behavior: [chronic Neuropixels in freely-moving mice (eLife)](https://elifesciences.org/articles/47188) · [ONIX multimodal platform (Nature Methods)](https://www.nature.com/articles/s41592-024-02521-1) · [wireless neural recorder for marmoset natural behavior](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12786299/)
- Wing B (wearable/outdoor + drones): [Human Motion Capture Using a Drone](https://arxiv.org/pdf/1804.06112) · [egocentric 3D Gaussian Splatting](https://arxiv.org/pdf/2604.23803) · [monocular Gaussian SLAM (HI-SLAM2)](https://arxiv.org/pdf/2411.17982) · [VI-SLAM-augmented inertial mocap outdoors](https://arxiv.org/pdf/2302.08294)
- Eye trackers: [dual-Purkinje / Purkinje-reflection imaging](https://pmc.ncbi.nlm.nih.gov/articles/PMC10166114/) · [open-source digital DPI (2025)](https://www.biorxiv.org/content/10.1101/2025.04.18.649589.full.pdf) · [ocular torsion via stable iris features](https://pmc.ncbi.nlm.nih.gov/articles/PMC2958308/) · [commercial-tracker precision limits](https://pmc.ncbi.nlm.nih.gov/articles/PMC8190563/) · [ultralight rodent head-cam / mousecam](https://pmc.ncbi.nlm.nih.gov/articles/PMC7874224/) · [freely-moving marmoset head-mounted eye tracking](https://www.biorxiv.org/content/10.1101/2024.05.11.593707.full.pdf)
- Series: [D4] sensor-grounded ontology · [D6] the-whole-picture · [D7] metrology · [D8] phylogeny-ECS · [D9] communal-science/dissemination · [D11] observability copilot
