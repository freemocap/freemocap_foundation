---
tags: [concept, metrology, instrument, design-lesson]
aliases: [Accuracy Precision Drift, accuracy vs precision, sensor fusion rationale]
type: concept
---

# Accuracy, Precision, Drift (many transducers, one data model)

A crisp, instrumentation-flavored illustration of "**many transducers, one grounded ontology**," straight from the [[the-rw-to-ontology-pipeline|sketch]] memo:

| Transducer | Character | Starts from | To get position/accel |
|---|---|---|---|
| **Camera mocap** | high **accuracy**, low **precision** (noisy, scattered around truth) | position | double-*differentiate* → acceleration |
| **IMU mocap** | high precision, low accuracy (smooth but **drifts**) | acceleration | double-*integrate* → position |
| **Hybrid (Kalman / sensor fusion)** | each corrects the other's characteristic error | Bootstrapped | cleaner than either alone |

**The punchline:** all three produce the **same data model with different uncertainty characteristics** (see [[metrological-traceability]]) — measurements estimating the same canonical [[ontology-definition|entities]]. The transducer is **interchangeable**; the grounded ontology is **invariant**. This is the [[sensor-grounded-ontology|sensor-grounded ontology]] claim made concrete, and it is an *instrumentation* argument (accuracy, precision, drift, uncertainty), not a software one.

This is also why the [[the-physical-instrument-boston-flagship-and-network|Wing-B outdoor rig]] needs the drone swarm: an external visual reference **grounds the IMU's drift** (the classic visual-inertial-SLAM fix), stopping inertial dead-reckoning from wandering.

**Related:** [[sensor-grounded-ontology]] · [[uncertainty-budget]] · [[metrological-traceability]] · [[the-rw-to-ontology-pipeline]] · [[functional-equivalence-optical-sensor]]
