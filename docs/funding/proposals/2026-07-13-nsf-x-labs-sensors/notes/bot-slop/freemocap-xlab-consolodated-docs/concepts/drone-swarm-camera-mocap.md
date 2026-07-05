---
tags: [concept, instrument, design-lesson]
aliases: [Drone Swarm Camera Mocap, drone swarm, outdoor mocap grounding]
type: concept
---

# Drone-Swarm Camera Mocap (Wing-B outdoor grounding)

The distinctive, high-risk element of [[the-physical-instrument-boston-flagship-and-network|Wing B]]: a small **coordinated autonomous drone swarm** of camera-carrying drones that **follow the subject** through natural terrain.

## Its job (not what you'd assume)
It is **not** trying to match Wing-A's wall-mounted, carefully-calibrated precision. Per JSM's note, it exists to **ground the outdoor mocap rig** — two things at once:
1. **Drift-correct the IMU mocap.** An external visual reference stops inertial dead-reckoning from wandering — the classic visual-inertial-SLAM fix ([[accuracy-precision-drift|IMU drifts; camera anchors]]).
2. **Estimate and co-register the terrain**, fused with the head-mounted **egocentric** reconstruction (visual-inertial SLAM / Gaussian-splat / NeRF) so the person's movement *and* their position in the world are reconstructed together.

## Three simultaneous behaviors the swarm must solve
Each drone must, at once: **(a)** avoid obstacles, **(b)** keep the subject in view, and **(c)** synchronize telemetry/orientation relative to the other drones so their views fuse into a joint estimate of both the person and the ground. Multi-drone subject-following capture is an established research direction (avoid ill-posed opposite-facing camera pairs).

## The calibration bridge (why it's still trustworthy)
Run the whole wearable + drone rig **inside Wing A first**, so the high-precision volume provides ground truth to train/calibrate the drone estimates — a [[metrology-and-traceability|metrological traceability chain]] A→B. The portable outdoor measurements inherit their trustworthiness from the calibrated volume, differing in *uncertainty, not in kind* ([[the-validation-triangle]]).

## Why it matters for the proposal
A concrete, ambitious, nameable deliverable that reads unambiguously as **instrumentation** — but it's the **newest, highest-risk arm**, so scope it carefully (how much to promise in Phase 1 vs. later). `#verify` FAA/airspace constraints for outdoor subject-following; number of drones; onboard vs. offboard compute; some arXiv IDs cited in [D12] look post-cutoff — confirm before citing ([[_verification-punchlist]]).

**Related:** [[the-physical-instrument-boston-flagship-and-network]] · [[accuracy-precision-drift]] · [[next-generation-eye-trackers]] · [[metrology-and-traceability]] · [[the-validation-triangle]]
