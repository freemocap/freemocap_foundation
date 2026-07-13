---
tags: [concept, metrology, instrument, design-lesson, reframe]
aliases: [Metrological Traceability, Traceability, Traceability chain]
type: concept
---

# Metrological Traceability

Per NIST/VIM: *"the property of a measurement result whereby the result can be related to a reference through a **documented unbroken chain of [[calibration|calibrations]], each contributing to the measurement uncertainty**,"* terminating in a reference — ideally an SI unit realized by a National Metrology Institute (NIST).

This is **where "truth-preserving pipeline" gets its teeth.** The precise, non-hand-wavy sentence for the proposal:

> *An [[ontology-definition|ontological object]] in our system is the endpoint of a metrologically traceable, uncertainty-propagating pipeline rooted in a calibrated [[sensor-as-transducer|sensor]].*

That sentence is instrumentation, full stop — it could describe a mass spectrometer or a telescope. It is the strongest single defense against [[the-software-exclusion]].

## The calibration pyramid (why uncertainty grows)
```
SI units → NMI primary standards (NIST) → secondary/accredited → working/reference → field instrument (our camera/IMU/electrode)
   smallest uncertainty ─────────────────────────────────────────────────────► largest uncertainty
```
Each downward step **adds** uncertainty; it compounds along the chain and must be documented at every link (the [[uncertainty-budget]]). This is why a derived object (e.g. muscle force from inverse dynamics) must carry the propagated uncertainty of *every upstream step* back to the primary sensor.

**Related:** [[calibration]] · [[uncertainty-budget]] · [[metrology-and-traceability]] · [[sensor-grounded-ontology]] · [[the-software-exclusion]]
