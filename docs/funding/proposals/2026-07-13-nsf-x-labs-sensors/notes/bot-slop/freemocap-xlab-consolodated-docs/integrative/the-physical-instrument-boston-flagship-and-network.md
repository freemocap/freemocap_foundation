---
tags: [integrative, instrument, team, biology, design-lesson, say]
aliases: [The Physical Instrument, Boston flagship, two wings, the animal network]
type: integrative
---

# The Physical Instrument — the Boston Flagship + the Animal-Model Network

Talking about "an instrument for the empirical capture of agent–environment interaction" is abstract; **a building in Boston full of synchronized sensors is not.** Anchoring the proposal to a specific, buildable physical deliverable does three things at once: it makes the project read unambiguously as **[[the-software-exclusion|instrumentation]]**; it gives NSF a **tangible, fundable deliverable** with a footprint and milestones (Phase 1 ≤ $50M/yr is facility-scale money); and it is the concrete **Tier-0 flagship node** of the [[tiered-dissemination-and-communal-science|tiered dissemination model]]. Lead with the physical thing; let the ontology/metrology/organization be *how it works and scales*. `#say`

## The human flagship — two wings that validate against each other
The X-Lab builds and operates the **human** version (human perceptual-motor capture is the PI's expertise). Two wings + the animal network form the [[the-validation-triangle|validation triangle]].

### Wing A — the instrumented volume (Boston)
A large open space built into a calibrated, synchronized **instrumented volume** — a room where an entire behaving human is captured across every modality at once:
- **Markerless multi-camera mocap** ([[freemocap|FreeMoCap/SkellyCam]]) — full-body kinematics (+ optional marker mocap for cross-validation).
- **Force plates** (ground-reaction forces/kinetics), **mobile + world eye tracking**, **AR/VR/MR** (controllable, perturbable environments *inside* the captured volume), **EMG**, **physiology**, **mobile EEG** where feasible.

**Precedent and how we differ:** instrumented VR+mocap+force-plate rooms exist (**CAREN, GRAIL**) — but those are *rehab-focused, closed, single-purpose*. Our flagship generalizes to the full [[sensor-grounded-ontology|sensor-grounded ontology]], is **open and [[metrology-and-traceability|metrologically traceable]]**, and is built to be **commensurable with animal-model captures.** We aren't inventing the instrumented room; we're turning it into a general, open, cross-species measurement instrument.

### Wing B — the wearable / outdoor rig (the [[personnel|Matthis 2018/2022]] lineage, extended)
Capture *out of the room and into natural environments*:
- **Wearable core:** an IMU mocap suit + mobile/world eye trackers + a wearable computer (the 2022 rig, updated).
- **Egocentric scene reconstruction:** a head-mounted camera builds a 3D terrain model via **NeRF / Gaussian-splat photogrammetry** + visual-inertial SLAM.
- **The new piece — a coordinated autonomous drone swarm.** Camera-carrying drones **follow the subject**, simultaneously avoiding obstacles, keeping the subject in view, and syncing telemetry so their views fuse into a joint estimate of *both the person and the terrain.* Their job is **not** to match Wing A's precision — it's to **ground the IMU's drift** (the classic [[accuracy-precision-drift|visual-inertial-SLAM fix]]) and **estimate the terrain.**

**The calibration bridge (why the wings need each other):** run the wearable rig *inside* Wing A first, so the high-precision room provides **ground truth to calibrate the wearable + drone estimates** — a [[metrology-and-traceability|metrological traceability chain]] A→B — then take the calibrated rig outdoors. Wing A = precision + environment manipulation; Wing B = reach + far easier to **productize** ("a box you strap on" vs. "we install a room") — the [[tiered-dissemination-and-communal-science|more disseminable form]].

## The hardware we must build 
Integrate existing tech where it's good enough; **build only where nothing adequate exists.** 
- [[next-generation-eye-trackers|next-generation eye trackers]]: The clearest must-build is eye tracking (reach [[dual-purkinje-image|torsion + lens/accommodation via iris + Purkinje imaging]]; wireless/miniaturized/longitudinal animal trackers). Crucially this **extends *already-built* world-leading prototypes** (the ferret 3-camera skull-mount system; the ~3–4 g mouse tracker) — track record, not blue-sky.
- [[drone-swarm-camera-mocap]]: Need it to ground the outdoor mocap rig (drift correct IMU-mocap and co-register with SLAM/gaussian-splat/neurofields from head-mounted camera)
## The animal-model network (ongoing, not hypothetical)
The X-Lab does the **human**; partner labs do the model-organism equivalents of the same instrument — **already underway**, unified under a shared ontology (a major de-risking point).

| Species | Lead | Capture / focus | Status |
|---|---|---|---|
| **Ferret** | **B.S.** | built: 3-cam skull-mounted eye tracker + full-body mocap + AR + binocular gaze + world cams, calibrated together; **now integrating Neuropixels + one-photon miniscope** | built + actively extending |
| **Guinea fowl** | **M.D.** | musculoskeletal + EMG biomechanics of legged locomotion | ongoing |
| **Mouse** | **D.F.** | optogenetic measurement of eye + body | ongoing |
| **Primate (marmoset/macaque)** | *TBD* `#verify` | foveal vision + hand/oculomotor control | to confirm |

Technically real now: chronic **Neuropixels** in freely-moving mice, open platforms like **ONIX**, **miniscope** imaging, wireless marmoset recorders. The invasive modalities that can't go on humans live on the animal branches — the comparative logic of [[comparative-phylogeny-and-ecs]]. Confirm the [[personnel|initials mapping]] against `.env` `#verify`.

## What makes it ONE instrument + the yearly convening
The two wings + animal labs are a **single distributed instrument** because they share the [[sensor-grounded-ontology|ontology]], [[metrology-and-traceability|traceability]], the [[shared-vs-unshared-traits|comparative design]], the [[tiered-dissemination-and-communal-science|dissemination model]], and the [[ontology-grounded-qc-copilot|QC copilot]]. An annual **congress** is the social glue — the trading-zone/federation mechanism that keeps a distributed instrument coherent, doubling as the [[boundary-objects|dissemination & teaching]] venue.

## Open questions (JSM's call — don't invent) `#verify`
Facility buy-vs-lease + Boston location + budget/phasing; primate collaborator; IRB/IACUC across the network; drone-swarm FAA/airspace + Phase-1-vs-later scope (highest-risk element); per-species eye-tracker DOF targets. See [[_verification-punchlist]].

**Related:** [[the-validation-triangle]] · [[next-generation-eye-trackers]] · [[comparative-phylogeny