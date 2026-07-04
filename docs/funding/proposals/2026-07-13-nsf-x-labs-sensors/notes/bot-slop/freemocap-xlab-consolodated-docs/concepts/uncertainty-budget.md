---
tags: [concept, metrology, instrument]
aliases: [Uncertainty Budget, Measurement Uncertainty, Uncertainty propagation]
type: concept
---

# Uncertainty Budget

The quantitative accounting of **doubt** attached to a measured value, propagated through every step of a pipeline. The framework is the **GUM** (Guide to the Expression of Uncertainty in Measurement); the US version is **NIST Technical Note 1297** (Taylor & Kuyatt 1994).

- **Type A** — evaluated by statistics (repeated observations).
- **Type B** — evaluated by other means (calibration certs, datasheets, physics).
- Combined into a **combined standard uncertainty** via the **law of propagation of uncertainty** (root-sum-of-squares), then scaled by a **coverage factor** *k* (commonly *k*=2 for ~95%) to an **expanded uncertainty**.

## Why it is the milestone engine
Because every claim becomes a **numeric, checkable target**, the uncertainty budget is what turns the instrument's outputs into exactly the "measurable outcomes / performance benchmarks" that [[nsf-x-labs-opportunity-and-fit|§10.1 Outcomes]] demands. Candidate milestone shapes (JSM to set real numbers — see [[_verification-punchlist]]):

- 3D joint-center expanded uncertainty (mm, *k*=2) vs. a traceable ground truth `< X mm` `#verify`
- gaze-in-world angular uncertainty (deg) `< X°` `#verify`
- inter-sensor sync uncertainty vs. a traceable clock `< X ms` `#verify`
- reprojection error `< X px` with a documented budget `#verify`

**Related:** [[metrological-traceability]] · [[calibration]] · [[metrology-and-traceability]] · [[accuracy-precision-drift]]
