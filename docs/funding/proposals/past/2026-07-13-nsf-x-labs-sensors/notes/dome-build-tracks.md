# DOME Build Tracks — working scaffold

Brain-dump of the whole build surface, organized into **four development
tracks**. Goal: capture structure + dependencies now; format into a visual
(Gantt / maturity ladder) later. **Nothing here is a committed spec** —
bracket-tags mark status, `[?]` = open / JSM to fill.

## Conventions

**Status tags**
- `[HAVE]` — already in place before award (head-start / de-risk)
- `[COMM]` — commercial part we can buy to stand up an integrated testbed early
- `[BUILD]` — bespoke sub-instrument we develop ourselves
- `[?]` — open question / decision / placeholder

**Maturity language**
- Adopt **TRL 1–9** as the backbone (federal standard; NSF TIP uses it — though
  the X-Labs FOA does **not** mandate it). `Mk` / `Rev` for hardware design spins;
  **semver** for software / SGO; **Generation** for an integrated DOME.
- ⚠️ FOA requirement: a milestone can't just be "reach TRL n" — each TRL
  transition must carry a **quantitative, verifiable exit criterion** (the numeric
  spec is the milestone; TRL is the label).

## Core strategy — integration is a first-order task

Buying the commercial parts does **not** give us a working DOME. Even with every
component in hand, fusing heterogeneous streams into one calibrated,
uncertainty-tagged record is substantial engineering — so **Integration is its
own development track, not free assembly.** (This is the mission's central claim:
treat the integration as the first-order object.)

The DOME path, per track:
1. Stand up an integrated testbed on `[COMM]` gear early.
2. Use it to **measure and ground exactly where commercial parts fall short** of
   our metrology goals — e.g. commercial eye trackers can't measure ocular
   torsion, so they can't recover cyclotorsion / true retinal input.
3. That gap analysis **drives** the bespoke `[BUILD]` sub-instrument development.
4. **Swap** each bespoke piece in as it reaches a functional TRL threshold — the
   DOME keeps working the whole time; capability ratchets up.

The four tracks run on independent trajectories: **Body · Eye · World** (three
measurement streams) **+ Integration** (the fourth).

---

## TRACK A — BODY (kinematics + kinetics)

- **Auto-calibrating modular camera array**
  - `[COMM]` off-the-shelf machine-vision cameras + PoE controllers / mounts
  - `[BUILD]` modular cameras (swappable sensors); actuated self-calibrating mounts; re-aim/re-focus from one console while staying metrically calibrated
  - Shortfall it grounds: `[?]` fixed commercial arrays can't reconfigure without manual re-cal
- **IMU / camera mocap fusion**
  - `[COMM]` IMU suit (Xsens / Notch class `[?]`) + FreeMoCap camera mocap `[HAVE]`
  - `[BUILD]` principled outside-in (camera: accurate, noisy) + inside-out (IMU: precise, drifts) fusion carrying **explicit uncertainty** → inverse dynamics + muscle force from markerless data
  - Shortfall it grounds: commercial mocap gives no propagated uncertainty

---

## TRACK B — EYE

- `[COMM]` Pupil Labs (Core / Neon) — the baseline that grounds the shortfall
- `[HAVE]` animal-scale eye-tracker prototype (ferret / mouse, 3-camera gaze)
- `[BUILD]` **eye-pointing dense-sensor array** — measures the eye: ocular **torsion** + lens **accommodation**
  - Shortfall it grounds: commercial trackers report gaze direction only → no torsion → no faithful retinal reconstruction
- Integration: binocular, mobile form factor; smartphone-grade imagers + controlled illumination `[?]`
- Open: `[?]` torsion / accommodation accuracy targets; per-unit cost target

---

## TRACK C — WORLD / ENVIRONMENT (measure + manipulate)

### Measuring
- `[BUILD]` **world-scanner** (head- or drone-mounted) — reconstructs terrain / optic array from agent vantage
  - ⚠️ **cross-track**: physically on the Eye head-rig, functionally a World measurement; also the drone payload
- `[BUILD]` **modular floor panels** — 0.5 m² tiles, each configurable as force plate / terrain / LED / stacked `[?]`
  - `[COMM]` commercial force plates as baseline
  - ⚠️ **dual-purpose**: kinetics (force) *and* ARGP (LED manipulation) in one tile
- `[BUILD]` modular physical terrain `[?]`
- `[BUILD]` drone-swarm world-scanning — later / stretch; drones slaved to walker, same data model as head unit (head = "lead drone")

### Manipulating (ARGP — augmented-reality ground plane)
- `[HAVE]` ARGPv1 lineage (Matthis 2013–2017)
- `[BUILD]` **ARGPv3** — modular LED floor + wall panels; projection; VR; reshapes terrain a real agent navigates while measured
- Open: `[?]` latency, panel↔DOME coordinate-calibration targets

---

## TRACK D — INTEGRATION (first-order) — the DOME variants

The engineering that fuses Body + Eye + World into one calibrated,
uncertainty-tagged record. **This is the instrument.** Products = the three DOME
forms; each consumes Tracks A–C at whatever TRL they've reached.

- **Cross-cutting integration work** (the real task):
  - `[BUILD]` temporal synchronization across all streams (common timebase)
  - `[BUILD]` common spatial coordinate frame + unbroken cross-sensor calibration chain
  - `[BUILD]` uncertainty propagation from each transducer to every derived value
  - `[HAVE]/[BUILD]` **SGO** — the sensor-grounded ontology every sub-instrument reports into (FreeMoCap core `[HAVE]`)
  - `[BUILD]` cross-validation between variants (DOME-Auto as metrological reference)
- **DOME-Auto (L)** — warehouse flagship + metrological reference; facility (warehouse + office, lease) `[?]`
- **DOME-Static (S)** — lab / classroom; extends FreeMoCap webcam volumes `[HAVE]`; build guide + parts list `[BUILD]`
- **DOME-Mobile** — wearable / outdoor; consumes Eye + World + IMU-fusion; drone-supported (later)

---

## Cross-dependencies (things that touch multiple tracks)

- **World-scanner** — Track B head-rig ↔ Track C environment ↔ drone payload. One sensor/data model.
- **Modular floor panel** — Track C kinetics (force) ↔ Track C manipulation (LED/ARGP). One tile, switchable.
- **Integration (D)** consumes A/B/C at whatever TRL they've reached; never blocks on any single build.
- **SGO** — cross-cutting; the common language for every stream.

---

## Open questions / to fill (JSM)

- `[?]` Specific `[COMM]` part per baseline (camera + controller, IMU suit, force plate)
- `[?]` TRL start → target per sub-instrument, per phase, + the quantitative exit criterion at each transition
- `[?]` Force-plate / floor-panel approach (buy vs build vs hybrid)
- `[?]` Phase assignment: Phase 1 vs Phase 2 vs stretch (drone swarm?)
- `[?]` Facility spec (warehouse m² + office)
- `[?]` Where kinetics/force lives — Body or World? (forces are "between body and world")
