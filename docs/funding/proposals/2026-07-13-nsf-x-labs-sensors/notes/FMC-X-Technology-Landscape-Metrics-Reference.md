# FMC-X — Technology Landscape Metrics Reference

Consolidated table of every competitor spec gathered for the modality landscape figures
(eye / body / world / integration), with units, source, and a confidence flag. Compiled 2026-07-11.
FreeMoCap numbers folded in from Aaron Cherian's doctoral dissertation.

**Read this first — sourcing honesty:**
- Values marked **[web]** came from web search (vendor datasheets or independent validations) during this session; verify against the primary source before print.
- Values marked **[gen]** are well-established general knowledge (e.g., marker mocap sub-mm), not pulled from a specific cited page this session — confirm and cite properly.
- Values marked **[paper]** are quoted directly from an in-hand peer-reviewed/preprint PDF (Matthis 2018/2022, Muller 2022/2023) — primary sources, traced to the named Methods subsection; higher pedigree than [web].
- Values marked **[diss]** come directly from Aaron Cherian's FreeMoCap dissertation ("Open-Source Development and Validation of a Low-Cost Markerless [Motion Capture System]," Northeastern University, 2026) — a primary, in-hand source with chapter/table citations below. Higher pedigree than [web] rows, but still spot-check the specific number against the source PDF before print given the volume of tables.
- Accuracy figures from **closed** systems are vendor-reported through pipelines that clean their own data by undisclosed methods; treat as manufacturer claims, not independently traceable measurements.
- **DOME rows are targets, not measurements** — the numbers in the target section are placeholders for JSM to set.
- Metrics differ in definition (accuracy vs. precision, joint-center vs. joint-angle, RMSD vs. MAE) — do **not** cross-compare cells without checking the underlying definition. Noted per row.
- **FreeMoCap-specific caveat:** the dissertation's own conclusion is that "the reported metrics of accuracy are not fixed properties of the software package or system" — FreeMoCap's numbers vary by pose-estimation backend (MediaPipe / RTMPose / ViTPose), by task (treadmill gait vs. static balance vs. prosthetic tracking), and by walking speed, more than any other single row in this table. Treat "FreeMoCap accuracy" as backend × task dependent, not a single number.

---

## 1. Eye tracking

| System | Metric | Value | Sampling rate | DoF measured | Open? | Source / confidence |
|---|---|---|---|---|---|---|
| Pupil Labs Neon | Gaze accuracy | 1.8° uncalibrated; 1.3° with offset correction (at ~1.3 m) | ~200 Hz *(verify)* | gaze H/V + 3D eye pose + pupil diameter | open interface, closed core (NeonNet) | [web] Pupil accuracy report |
| Tobii Pro Glasses 3 | Gaze accuracy | 0.6° | 50 / 100 Hz | gaze H/V (binocular) | closed | [web] vendor spec |
| AdHawk MindLink | Gaze accuracy | better than ~1° | 500 Hz | gaze H/V (MEMS) | closed | [web] vendor spec |
| AdHawk MindLink | Fixation stability | within ~0.5° (vs. EyeLink II) | — | — | closed | [web] independent comparison |
| AdHawk MindLink | Saccade amplitude accuracy | ~0.04° | — | — | closed | [web] independent comparison |
| *EyeLink 1000 (desk — excluded)* | Gaze accuracy | ~0.35–0.39° | up to 1000+ Hz | gaze H/V | closed | [web] validation study |
| *Tobii Pro Spectrum (desk — excluded)* | Gaze accuracy | ~0.4–0.47° | up to 1200 Hz | gaze H/V | closed | [web] validation study |

*Desk/screen trackers listed for completeness but excluded from the mobile landscape (different instrument class). Key qualitative fact: **no shipping mobile tracker measures ocular torsion or accommodation** — the DOME differentiator.*

---

## 2. Body tracking

| System | Metric | Value | What it captures | Marker? | Open? | Source / confidence |
|---|---|---|---|---|---|---|
| Marker mocap (Vicon / Qualisys / OptiTrack) | Marker position accuracy | sub-mm (gold-standard reference) | kinematics (+ kinetics only if force plates added) | marker-based | closed | [gen] |
| Theia3D | Joint-center RMSD | < 3 cm (hip ~4.1 cm) | kinematics only | markerless | closed | [web] validation |
| Theia3D | Segment-angle RMSD | < 6° (worse on long-axis rotations) | kinematics only | markerless | closed | [web] validation |
| OpenCap | Joint-angle error (MAE, walking) | ~4.5° | kinematics; kinetics + muscle **simulated** | markerless | open | [web] validation |
| OpenCap | Joint-angle RMSE (across gaits) | ~5.8° | kinematics | markerless | open | [web] validation |
| OpenCap | GRF error | < ~7% bodyweight (**simulated**, not measured) | estimated kinetics | markerless | open | [web] validation |
| OpenCap | Joint-moment error | < ~1.5% BW × height (**simulated**) | estimated kinetics | markerless | open | [web] validation |
| **FreeMoCap** (MediaPipe / RTMPose / ViTPose) | Joint-center trajectory RMSE, treadmill gait, 0.5–2.5 m/s (vs. Qualisys) | ML ~6–16 mm (lowest axis); AP ~7–29 mm; Vertical ~6–32 mm; generally < 30 mm overall — hip largest joint but < 25 mm in all directions across all three backends | kinematics only | markerless | open | [diss] Cherian Ch. 5, Tables 5.1–5.3; n=6 healthy adults, 6× ~$20 USB webcams (1280×720 @ 30 Hz) |
| **FreeMoCap** (MediaPipe) | Sagittal joint-angle RMSE, treadmill gait (vs. Qualisys) | Hip flex/ext 4.0–4.1°; Knee flex/ext 3.1–3.9°; Ankle dorsi/plantar 2.6–4.7° (rises with speed) | kinematics only | markerless | open | [diss] Cherian Ch. 5, Table 5.4 |
| **FreeMoCap** (RTMPose) | Sagittal joint-angle RMSE, treadmill gait (vs. Qualisys) | Hip 2.9–3.9°; Knee 2.2–3.6°; Ankle 1.6–3.2° — most consistent of the three backends across speed | kinematics only | markerless | open | [diss] Cherian Ch. 5, Table 5.4 |
| **FreeMoCap** (ViTPose) | Sagittal joint-angle RMSE, treadmill gait (vs. Qualisys) | Hip 2.3–3.0° (best); Knee 1.8–3.2° (best); Ankle 3.5–6.2° (worst — systematic plantarflexion offset) | kinematics only | markerless | open | [diss] Cherian Ch. 5, Table 5.4 |
| **FreeMoCap** (all backends) | Gait-event timing error (heel strike / toe-off) vs. Qualisys | +5.4 to +9.3 ms / +6.1 to +15.4 ms mean bias; most errors within one 30 Hz frame (33 ms) | event detection | markerless | open | [diss] Cherian Ch. 5, Fig. 5.8 |
| **FreeMoCap** (all backends) | Spatiotemporal gait parameter agreement (stride/step length, stance/swing/stride duration) vs. Qualisys | ICC 0.90–0.998 pooled across speeds; excellent for stride length/duration; swing duration drops to ICC ≈ 0.57–0.66 at the highest speed (2.5 m/s) | spatiotemporal | markerless | open | [diss] Cherian Ch. 5, Table 5.5 |
| **FreeMoCap** (MediaPipe) | Center-of-mass path-length agreement, static balance / CTSIB-M task (vs. Qualisys) | ICC = 0.985; bias 1.25 mm; LoA ≈ ±68 mm; sensitivity to visual/proprioceptive perturbation r² = 0.83–0.96 | postural sway (COM) | markerless | open | [diss] Cherian Ch. 6, Tables 6.2–6.3; n=12 conditions |
| **FreeMoCap** (RTMPose / ViTPose) | Center-of-mass path-length agreement, static balance / CTSIB-M task (vs. Qualisys) | Poor — ICC < 0.10, large positive bias (726–1052 mm), wide LoA; effectively unusable for this metric with these backends | postural sway (COM) | markerless | open | [diss] Cherian Ch. 6, Table 6.2 |
| **FreeMoCap** (generic MediaPipe/RTMPose model) | Prosthetic-limb marker RMSE, transfemoral prosthesis user (vs. Qualisys) | Vertical error up to 152 mm at the prosthetic ankle — generic pose-estimation models fail on prosthetic hardware geometry | kinematics only | markerless | open | [diss] Cherian Ch. 7, Table 7.1; n=1 proof-of-concept |
| **FreeMoCap** + custom DeepLabCut model | Prosthetic-limb marker RMSE, transfemoral prosthesis user (vs. Qualisys) | Vertical error drops to ~8–14 mm after training a prosthesis-specific keypoint model; X/Y error also improved at knee/ankle/heel/toe | kinematics only | markerless | open | [diss] Cherian Ch. 7, Table 7.1; n=1 proof-of-concept |

*Metrology note: OpenCap's forces/moments are physics-simulation estimates, not measurements. On a "what is measured" axis they do not count as measured kinetics.*

*FreeMoCap note: all FreeMoCap rows above come from a single validation program (Cherian dissertation) using the same core pipeline (SkellyCam capture, ChArUco calibration, Anipose-derived triangulation, SkellyForge post-processing) but three interchangeable, swappable pose-estimation backends. Accuracy is not a fixed property of "FreeMoCap" — it swings from excellent (COM tracking with MediaPipe, ICC 0.985) to unusable (COM tracking with RTMPose/ViTPose, ICC < 0.10) depending on backend choice and task, and from poor to excellent on prosthetic tracking depending on whether a task-specific DeepLabCut model is trained. Reported hardware cost for the 6-camera rig used across all three studies: ~$120 total (6× ~$20 USB webcams), vs. ~$1,000–1,500 for a 6-iPhone OpenCap rig or substantially more for Theia3D-class hardware [diss] Cherian Ch. 3.*

---

## 3. World scanning & measurement

| System | Metric | Value | Capability | Open? | Source / confidence |
|---|---|---|---|---|---|
| Static terrestrial laser scanner (TLS) | Reconstruction accuracy | ~2 mm | geometry scan (passive) | closed hardware | [web] |
| Handheld LiDAR SLAM scanner | Reconstruction accuracy | ~10–15 mm indoor; sub-2 cm at ≤30 m; ~5 mm local SD | geometry scan (passive) | closed hardware | [web] |
| Photogrammetry (e.g., COLMAP) | Reconstruction accuracy | ~cm (scene/setup dependent) | geometry scan (passive) | open software | [gen] |
| Photogrammetry (Meshroom, outdoor terrain, moving head-cam) | Reconstruction repeatability | median ~3 cm foothold agreement across 12 re-traversals ≈ 0.5° visual angle | geometry scan from the same head-mounted scene camera used for gaze | open software | [paper] Muller 2022/2023 Methods — the FreeMoCap-lineage world-scan number |
| CAREN / GRAIL (Motek) | — (no published scene-scan accuracy; not a scanner) | n/a | active manipulation (treadmill + projected VR) + mocap + force, fused within rig | closed, rehab-specific | [gen] |

*Qualitative fact: scanners are accurate but passive; the only disseminated manipulation-capable integrated instrument (CAREN/GRAIL) is closed and single-purpose. None couples dense scan + semantics + active manipulation openly.*

---

## 4. Integration / multimodal fusion

No competitor provides a clean published number here, because the disseminated **instruments** don't do
calibrated cross-modal fusion — the relevant "numbers" are properties, not measured quantities. Software
layers that do sync (Lab Streaming Layer) and experiment control (Bonsai) are **excluded** as non-instruments;
single-institute bespoke rigs are **excluded** as non-disseminated.

| System | Integration behavior | Metric available? | Source |
|---|---|---|---|
| Marker mocap ecosystems (Vicon etc.) | Accept & time-sync external streams (force, EMG, sometimes eye) — **not** cross-calibrated into one observable | vendor sync/timestamp specs *(verify what eye-tracker integration they actually document)* | [gen] |
| CAREN / GRAIL | Fused within the rig, but closed & single-purpose | none published | [gen] |
| FreeMoCap | Single-modality (body only) in the dissertation; accepts a swappable pose-estimation backend but does not fuse eye/force/neural streams | none published | [diss] Cherian dissertation — body tracking only, no multimodal fusion reported |
| **DOME (target)** | Co-calibrated, uncertainty-propagated, traceable fusion of eye + body + world + force + neural | **inter-sensor sync jitter (ms) + modality count — TBD by JSM** | target |

---

## 4b. Precedent: the published eye + IMU-body + world fused-measurement method (Matthis / Muller)

This is the closest existing precedent to the DOME concept, and it is FreeMoCap's own intellectual lineage: a
**disseminated, published method that co-registers a mobile eye tracker, an IMU-based full-body motion-capture
suit, and a photogrammetric 3D reconstruction of the world into a single geometric record** — 3D gaze vectors
intersected against a measured/assumed ground surface in the mocap reference frame. It is a single-lab research
method (not a productized instrument), but unlike the "bespoke rig" exclusion in §4 it comes with **actual
published error figures**, which is exactly what a reviewer will want when the proposal claims fusion is possible
and quantifiable. These are the numbers to cite for "combined eye-tracking + IMU + world-scanner accuracy."

**Two generations of the method:**
- **Matthis et al. 2018** (*Current Biology*) — eye + IMU only; the world is an **assumed flat ground plane**
  (no scan). This is where the "flat ground plane" error discussion lives.
- **Matthis 2022 / Muller 2022 (preprint) / Muller 2023 (eLife)** — same eye + IMU core, now with a **measured
  world**: Meshroom photogrammetry reconstructs the actual terrain from the head-mounted scene camera, replacing
  the flat-plane assumption.

| Quantity | Value | What it means | Source |
|---|---|---|---|
| **Combined calibration accuracy (eye + head IMU)** | mean gaze-vector center **1.1 ± 0.45 cm** from a 1 m fixation target, SD **6.1 cm** → **≈ ±1° visual angle** | Direct measure of how well the fused eye+IMU gaze vector lands on a known point; explicitly attributed to "the combined error of eye tracker and head-mounted IMU" | [paper] Matthis 2018, *Calibration error and validation* |
| **End-to-end validation (walking)** | markers spaced **3 m** apart recovered at **2.83 ± 0.07 m** mean separation | Whole-pipeline check while walking; slight underestimate attributed to upward IMU drift | [paper] Matthis 2018, *Calibration error and validation* |
| **Estimated total gaze error (dynamic)** | **±2–3°**, ≈ **10 cm** at typical viewing distance | Sum of head-IMU orientation noise (**±1–2°** at full-speed walking) + eye-tracker noise (**±1°**) | [paper] Matthis 2018, *Known sources of measurement error* |
| **IMU positional drift** | ~**1%** of total movement length → a **few cm** within the analysed 2–4 steps | Orientation (hence frame-by-frame 3D gaze) is *not* affected by drift; only position is | [paper] Matthis 2018, *IMU drift* |
| **Parallax error** | **< 1 cm** near-field; **2–3 cm** at 3–4 m look-ahead | Calibration-vs-viewing distance mismatch | [paper] Matthis 2018, *Parallax error* |
| **Flat-ground-plane assumption (2018 only)** | qualitative, not a single number — raised/lowered terrain biases the reported gaze/ground intersection; expected to "largely cancel on average" but adds variance | The specific limitation the 2022/2023 photogrammetry work was built to remove | [paper] Matthis 2018, *Flat ground plane assumption* |
| **World-scan repeatability (2022/23, replaces flat plane)** | median **~3 cm** foothold agreement across 12 re-traversals → **0.5° visual angle** | Consistency of the Meshroom 3D terrain reconstruction between independent passes | [paper] Muller 2022/2023 Methods |
| **Gaze-stabilization precision (retinal slip during fixation)** | mode **0.26°**, median **0.83°** per fixation; median slip **~0.8°** over a 250 ms fixation → **3.2°/s**; fixations rarely deviate **> 2°** | Precision of the fused eye+head fixation estimate, not accuracy of the target | [paper] Muller 2022/2023; Matthis 2022 §3.2 |

**Hardware/method note (for provenance):** Matthis 2018 used a Positive Science monocular eye tracker (30 Hz) +
Motion Shadow IMU suit (100 Hz, downsampled to 30 Hz), flat-plane world. Matthis 2022 / Muller 2022/2023 used a
Pupil Labs binocular tracker (120 Hz/eye) + scene camera (1080p, 30 Hz, ~100° diagonal FOV, mounted ~3 cm from
the eye) + Motion Shadow (100 Hz) + Meshroom photogrammetry world. Calibration in all versions is the VOR-based
"head-tick" routine (fixate a ground point 1–1.5 m ahead, rotate head, minimize gaze/target spread).

*Framing for the proposal: these are the only **published, disseminated, cross-modal (eye+body+world)** accuracy
numbers in this whole reference — and they come from the DOME PI's own prior work. They establish that fused
eye+IMU+world measurement is real and quantifiable (**≈±1° calibrated, ±2–3° dynamic, ~3 cm world repeatability**),
which is the credibility floor DOME builds on. They are a **single-subject-lab research method, not an
uncertainty-propagated instrument** — no expanded-uncertainty budget, no traceability, no co-calibrated force/neural
— which is precisely the "missing middle" DOME targets. Do **not** present these as DOME's target specs; present
them as proof the approach works and as the baseline DOME improves on (measured world, propagated uncertainty,
more modalities).*

---

## 5. Capability / traceability matrix (factual, checkable properties)

Legend: ● yes · ◐ partial · ○ no

| System | Disseminated | Open pipeline | Cross-calibrated fusion | Uncertainty propagated | Multimodal (≥2 of eye/body/world/force/neural) | Animal-extensible |
|---|---|---|---|---|---|---|
| Tobii Glasses 3 | ● | ○ | ○ | ○ | ○ | ○ |
| Pupil (Core / Neon) | ● | ◐ | ○ | ○ | ○ | ◐ |
| AdHawk MindLink | ● | ○ | ○ | ○ | ○ | ○ |
| Theia3D | ● | ○ | ○ | ○ | ○ | ○ |
| Marker mocap (Vicon) | ● | ○ | ◐ (synced, not calibrated-fused) | ○ | ◐ (accepts streams) | ○ |
| OpenCap | ● | ● | ○ | ○ | ◐ (kin + simulated) | ○ |
| CAREN / GRAIL | ● | ○ | ◐ (within rig) | ○ | ● | ○ |
| **FreeMoCap** | ● | ● | ○ | ○ | ○ (body only in this dissertation) | ○ (not addressed in this dissertation) |
| **DOME (target)** | ● | ● | ● | ● | ● | ● |

*This is the honest home for the open/closed + fusion + traceability argument — a table of checkable facts, not a scatter with invented axes. DOME is the only full row. FreeMoCap is the only other fully-open (disseminated + open pipeline) row, which is worth calling out visually even though it doesn't fuse modalities.*

---

## 6. DOME target numbers — TO BE SET BY JSM

These are the placeholders used for figure layout. Replace with committed specs (with uncertainty).

| Panel | Target metric | Placeholder used | Real target |
|---|---|---|---|
| Eye | Human-tracker gaze accuracy (°) | ~0.5° | ___ |
| Eye | Ferret / mouse build DoF reached | torsion / 3D pose | ___ |
| Body | 3D joint-center expanded uncertainty, k=2 (mm) | ~2° angle equiv. | ___ |
| World | Scene reconstruction accuracy (mm) | ~8 mm | ___ |
| Integration | Inter-sensor sync jitter (ms) | < 1 ms | ___ |
| Integration | Modalities fused into one traceable record | 5 (eye/body/world/force/neural) | ___ |

---

## 7. Source list (verify before print)

1. Pupil Labs Neon — accuracy report (1.8° uncalibrated / 1.3° corrected; 3D eye pose + pupil outputs).
2. Tobii Pro Glasses 3 — vendor specification (0.6°, 50/100 Hz).
3. AdHawk MindLink — vendor spec (<1°, 500 Hz) + independent EyeLink-II comparison (fixation ~0.5°, saccade amplitude ~0.04°).
4. EyeLink 1000 / Tobii Pro Spectrum — microsaccade validation study (~0.35–0.39° / ~0.47°). *(desk — excluded from mobile landscape)*
5. Theia3D — markerless validation vs. marker-based reference (joint-center RMSD < 3 cm; segment angles < 6°).
6. OpenCap — validation study (joint angle MAE ~4.5°, RMSE ~5.8°; GRF < 7% BW; moments < 1.5% BW·ht; forces simulated).
7. Handheld LiDAR-SLAM vs. survey-grade reference — indoor reconstruction (~10–15 mm; sub-2 cm ≤30 m); static TLS ~2 mm.
8. **FreeMoCap — Aaron Cherian, "Open-Source Development and Validation of a Low-Cost Markerless [Motion Capture System]," doctoral dissertation, Northeastern University, 2026.** Primary, in-hand source (this is not a [web] value — no further sourcing verification needed, though individual table cells are worth double-checking against the PDF given the volume). Covers: (Ch. 5) six-camera treadmill gait validation vs. Qualisys, n=6 healthy adults, speeds 0.5–2.5 m/s, three pose-estimation backends (MediaPipe/RTMPose/ViTPose); (Ch. 6) static balance / CTSIB-M validation vs. Qualisys, n=12 conditions; (Ch. 7) prosthetic-limb tracking proof-of-concept vs. Qualisys, n=1 transfemoral prosthesis user, with and without a custom DeepLabCut model.

9. **Eye + IMU + world fused-method precedent (Matthis/Muller lineage)** — primary PDFs in hand:
   - Matthis, Yates & Hayhoe (2018), "Gaze and the Control of Foot Placement When Walking in Natural Terrain," *Current Biology* 28:1224–1233. Numbers from *Calibration error and validation*, *Known sources of measurement error* (IMU drift, parallax, flat-ground-plane assumption). Eye+IMU only; flat-plane world.
   - Matthis, Muller, Bonnen & Hayhoe (2022), "Retinal optic flow during natural locomotion," *PLOS Comp Biol* — Pupil Labs binocular (120 Hz/eye) + Motion Shadow + Meshroom world; §3.2 residual-fixation-motion error.
   - Muller, Matthis, Bonnen, Cormack, Huk & Hayhoe (2022 bioRxiv preprint / 2023 *eLife* 12:e82410), "…Retinal motion statistics during natural locomotion" — 3D-reconstruction repeatability (median ~3 cm ≈ 0.5°) and retinal-slip precision (mode 0.26°, median 0.83°). See §4b.

**Every [web] value should be traced to its primary document and cited before this goes near a reviewer. [diss] and [paper] values are already traced — [paper] values re-checked against the source PDFs this session (see §4b); just re-check the specific table/page cited.**