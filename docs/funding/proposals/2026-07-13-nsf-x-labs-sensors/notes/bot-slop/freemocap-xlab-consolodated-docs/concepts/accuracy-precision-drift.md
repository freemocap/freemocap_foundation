---
tags: [concept, metrology, instrument, design-lesson]
aliases: [Accuracy Precision Drift, accuracy vs precision, sensor fusion rationale]
type: concept
---

# Accuracy, Precision, Drift (many transducers, one data model)

A crisp, instrumentation-flavored illustration of "**many transducers, one grounded ontology**," straight from the [[the-rw-to-ontology-pipeline|sketch]] memo:

| Transducer                          | Character                                                            | Starts from  | To get position/accel                 |
| ----------------------------------- | -------------------------------------------------------------------- | ------------ | ------------------------------------- |
| **Camera mocap**                    | high **accuracy**, low **precision** (noisy, scattered around truth) | position     | double-*differentiate* → acceleration |
| **IMU mocap**                       | high precision, low accuracy (smooth but **drifts**)                 | acceleration | double-*integrate* → position         |
| **Hybrid (Kalman / sensor fusion)** | each corrects the other's characteristic error                       | Bootstrapped | cleaner than either alone             |

**The punchline:** all three produce the **same data model with different uncertainty characteristics** (see -  [[metrological-traceability]]) — measurements estimating the same canonical [[ontology-definition|entities]]. The transducer is **interchangeable**; the grounded ontology is **invariant**. This is the [[sensor-grounded-ontology|sensor-grounded ontology]] claim made concrete, and it is an *instrumentation* argument (accuracy, precision, drift, uncert