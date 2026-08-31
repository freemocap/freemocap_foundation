# Outcomes — Section Plan (sentence-outline)

*Planning scratch for §3 Outcomes. Not proposal prose — this is the shape and the
benchmarks to react to before anything goes into the `.typ`. Written in
sentence-outline format: every node is a full sentence, nesting shows subordination.*

## 0. Framing decisions this plan assumes

- The written proposal's Outcomes section asks for "ambitious target outcomes over a
  5- to 7-year timescale… and the scientific and technical performance benchmarks
  needed to get there" (§10.1), so this section leads with end-states and numbers, not
  activities.
    - The per-instrument Phase 0 / Phase 1 / KPI scaffolding that currently bloats the
      draft moves out of the prose and into the **Milestone Matrix figure** (see §6
      below), because detailed phase activities are a later deliverable (§9.1) and an
      *oral* criterion (§13.2), not a *written* one (§11.2).
    - Each outcome in the prose therefore compresses to one end-state sentence plus one
      headline benchmark, and the matrix carries the maturity trajectory that gets it
      there.
- The section is organized around the perception–action loop the Mission establishes,
  so the technical outcomes group as **Body / Eye / World**, wrapped by the
  **Integration** outcomes (the DOME variants) and pointed at by the **Organization**
  outcomes (which live mostly in §5 but surface here as the matrix's top band).
    - This mirrors the Milestone Matrix's own row groups, so the figure and the prose
      reinforce each other rather than repeat each other.
- Every outcome is stated as something the *instrument* delivers or measures, never as
  a piece of software, because §7.0 excludes "computational or software solutions
  without practical integration into an instrumentation system" and excludes
  testbeds-as-primary-focus.
    - The three downstream items you chose to keep visible (reprojection training,
      robot-RL, drone swarm) are each tethered in-sentence to the hardware they ride on,
      so they read as instrument capabilities rather than standalone code.

## 1. Flagship outcome — the DOME as one validated, disseminated instrument

- The headline 5–7 year outcome is a single instrument, realized in three forms and one
  animal-scale form, that records the complete perception–action loop as one calibrated,
  uncertainty-tagged measurement and produces the same kind of record regardless of which
  sensors are present.
    - DOME-L is the warehouse-scale flagship in Greater Boston that pushes each
      sub-instrument to its limit and is large enough to physically contain the smaller
      forms, which makes it the metrological reference for the entire network.
    - DOME-S is the lab- and classroom-scale form disseminated to other groups, extending
      the webcam capture volumes the FreeMoCap Foundation already supports worldwide.
    - DOME-Mobile is the wearable form carried outside the lab, used to validate
      lab-bound findings against real-world behavior on natural terrain.
    - The instrument is defined by its measurement ontology rather than any single sensor,
      so a camera-based estimate and an inertial estimate describe the same kinematics and
      fuse into one estimate better than either alone.
- The benchmark that proves the instrument is real is cross-validation against the
  DOME-L reference, extended beyond prior work to the conditions that matter.
    - We extend the joint-angle accuracy already characterized in FreeMoCap
      (cite: Aaron's dissertation) from treadmill/single-person to overground and
      multi-person capture.
    - Success means DOME-S and DOME-Mobile reproduce DOME-L kinematics within a stated
      per-joint uncertainty budget during co-recorded trials.

## 2. The organizing benchmark — veridical retinal input

- The single sharpest number in the section is the ability to reconstruct what lands on a
  moving agent's retina accurately enough to predict neural activity, defined as 1° of
  accuracy at the fovea when fixating a point on the ground at a 45° angle.
    - This target is defensible because it composes two independently measured error
      sources: joint-angle accuracy already characterized in FreeMoCap, and the reported
      errors of commercial eye trackers, giving an explicit uncertainty budget rather than
      a hope.
    - This benchmark is the reason several of the hardware outcomes below exist, so the
      section states it once, early, and refers back to it.

## 3. Moving the frontier — Body

- The Body outcome is trustworthy kinematics clean enough to support inverse dynamics
  from markerless capture, delivered by two coupled advances.
    - The actuated, self-calibrating camera array places daisy-chained
      Power-over-Ethernet cameras with swappable sensors on programmable mounts that stay
      metrically calibrated as one instrument while being re-aimed and re-focused from a
      single console.
        - This solves the lived bottleneck of large capture volumes whose cameras get
          frozen in place because re-aiming and re-calibrating them by hand is too costly.
        - The benchmark is post-reconfiguration calibration quality and the time from
          sub-volume selection to calibrated capture, measured against a fixed-calibration
          reprojection-error baseline.
    - The camera-to-IMU fusion combines outside-in and inside-out estimates with explicit
      per-joint uncertainty, because cameras are accurate but noisy while inertial capture
      is precise but drifts.
        - The benchmark is joint-torque uncertainty against force-plate ground truth and
          muscle-force uncertainty against EMG-informed estimates, which is what makes
          markerless inverse dynamics and muscle-force estimation tractable.

## 4. Moving the frontier — Eye

- The Eye outcome is a binocular mobile eye tracker that measures degrees of freedom
  commercial trackers do not, because a faithful reconstruction of retinal input requires
  them.
    - The tracker resolves ocular torsion (via iris texture), which directly corrupts the
      curl dimension of retinal optic flow — a stated research target (cite: matthis2022)
      — and no existing tracker measures it.
    - The tracker targets microsaccade-scale resolution and pursues lens accommodation
      (via dual-Purkinje), with accommodation flagged as a stretch rather than a promise.
    - The design bet is a dense multimodal sensor array built like a phone camera bank
      (fast low-res and slow high-res RGB-IR, plus event and depth sensors), trading low
      profile for better data, which makes this a camera-quality engineering bet rather
      than a physics bet.
    - The benchmarks are sub-15-arcmin eye-in-head accuracy, ~1° torsion accuracy, and
      the composed 1° gaze-in-world retinal target from §2, with accommodation accuracy
      to be specified in diopters.
    - A cost outcome rides alongside the accuracy outcome, because targeting commodity
      cell-phone imagers is what lets next-generation eye tracking flood the field the way
      FreeMoCap did for motion capture.

## 5. Moving the frontier — World

- The World outcome is a head-mounted world-scanner that reconstructs the environment the
  agent is acting in, so the retinal projection has a scene to project onto.
    - The scanner is an outward-facing sensor bank (stereo-RGB, structured-IR, LiDAR) that
      produces per-frame RGB-D and, over longer horizons, a terrain mesh and a
      SLAM-corrected head trajectory that fixes inertial drift (cf. muller2023).
    - The same scanner package mounts on the drone-swarm nodes, which act as a mobile
      extension of the actuated camera array to ground DOME-Mobile's inside-out estimates
      outdoors where a fixed rig cannot reach.
        - The drone benchmark is gaze and kinematic uncertainty outdoors against the DOME-L
          reference during co-recorded trials, never a swarm-coordination metric, which
          keeps it an instrument-placement outcome.
    - The modular force-plate / terrain / LED floor panels and the ARGP perturbation
      hardware close the world half of the loop by making the ground itself both a sensor
      and a controllable stimulus.

## 6. One record across species

- The cross-species outcome is functionally equivalent instruments at animal-collaborator
  labs that produce the same data models as the human instrument, which is the claim that
  this reshapes a field rather than improving a tool.
    - The animal-scale instrument already exists: the team's ferret and mouse builds
      integrate three-camera gaze, full-body kinematics, and world cameras in one
      calibrated system, with neural recordings being added now.
    - The human, mouse, and ferret builds are being made functionally equivalent so the
      same measurement crosses species, extending to guinea fowl (musculoskeletal
      biomechanics + EMG) and marmoset (primate electrophysiology).
    - The benchmark is cross-species measurement comparability under shared calibration
      and data-exchange protocols, so a reconstructed `RetinalInput` or `RigidBody` means
      the same thing whether it came from a human, a ferret, or a marmoset.

## 7. What the record unlocks (kept visible, hardware-tethered)

- Because the record is calibrated, synchronized, and uncertainty-traced, it produces
  capabilities that would otherwise each need a bespoke project, and these are stated as
  consequences of the instrument.
    - The instrument generates its own training signal by back-projecting calibrated 3D
      reconstructions onto each camera's 2D view, so the reprojection-error benchmark is
      measured improvement on out-of-distribution movement (clinical gait, acrobatics,
      animal locomotion) rather than a leaderboard score.
    - The record is natively reinforcement-learning-ready because a DOME export maps
      directly onto MuJoCo / Isaac Lab rigid-body models with uncertainty intact, so the
      robot-RL benchmark is sim-to-real transfer success from DOME-recorded corpora and
      the predictive accuracy of inverse-RL-derived control policies tested back in DOME-L.
    - Each of these is named as something the instrument yields, so neither reads as a
      standalone software deliverable under §7.0.

## 8. Dissemination and external validation

- The dissemination outcome is a countable, validated footprint rather than a released
  codebase, because the Mission is a commons of instruments.
    - The target is N validated DOME-S instances across human biomechanics, robotics,
      visual neuroscience, and clinical sites, each cross-validated against the DOME-L
      reference with a published build guide, parts list, and calibration protocol any lab
      can follow.
    - A concrete external-validation anchor is FDA 510(k) clearance of the FreeMoCap/DOME
      instrument for clinical rehabilitation and assessment, letting a regulatory bar drive
      protocol rigor.

## 9. The Milestone Matrix figure (holds the phase/activity detail)

- The matrix is where the Phase 0 / Phase 1 / Phase 2 activity granularity lives, freeing
  the prose to stay at the level of end-states and benchmarks.
    - Rows group as Organization (operational deliverables), Body, Eye, World, and
      Integration (the DOME variants), matching the section's own structure above.
    - Columns are In-place / Phase 0 (9–12 mo) / Phase 1 (24–36 mo) / Phase 2 (variable),
      and each cell states a target maturity on a TRL-analogue ladder: Concept (2),
      PoC (3), Breadboard (4), Prototype (5–6), Validated (7), Operational (8–9).
    - A checkmark marks what is already in place pre-award (501(c)(3), core full-time team,
      FreeMoCap webcam capture, ferret and mouse animal builds, ARGPv1, prior IP), which
      is how the section shows momentum without spending prose on it.
    - Per §9.2, every Progress Milestone cell needs a quantitative exit criterion, so the
      headline benchmarks from §1–§8 are the exit criteria the matrix points to.
- Open question for the matrix: decide which cells are Reporting Milestones (operations)
  versus Progress Milestones (technical), because §9.2 requires Progress Milestone
  payments to substantially exceed Reporting Milestone payments.

## 10. Cuts and dedup carried over from the current draft

- The current draft's opening restates all three DOME variants that then get their own
  subsections, so the variants are described once here (§1) and not reintroduced.
- The eye tracker is currently described three times (intro, its own section, and the
  nested world-scanner), so it collapses to one Eye outcome (§4) with the world-scanner
  split out to World (§5).
- The standalone Phase 0 / Phase 1 / KPI lists under every subsection are removed from
  prose and replaced by the single benchmark per outcome plus the matrix.
