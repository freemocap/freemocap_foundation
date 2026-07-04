---
tags: [concept, metrology, instrument]
aliases: [Calibration]
type: concept
---

# Calibration

Per the **VIM** (International Vocabulary of Metrology), calibration is *an operation establishing the relation between an instrument's **indications** and **reference quantity values**, both with their uncertainties, so that a measurement result can be obtained from an indication.*

> Calibration ≠ adjustment. It is the **documented relation + its uncertainty.**

It is the operation that turns a [[sensor-as-transducer|transducer's]] raw output into an SI-referenced quantity, and the first link in [[metrological-traceability|the traceability chain]]. Every act of calibration **adds** uncertainty, which then compounds down the chain (see [[uncertainty-budget]]).

## The concrete first link: camera → 3D
For the capture instrument, **camera calibration** (Zhang's method: intrinsics — focal length, principal point, distortion — plus extrinsics, refined by minimizing **reprojection error**; good calibrations < 1 px) is the metrology of the very first pipeline step, with active work on characterizing *its* uncertainty. Ground truth comes from traceable artifacts (calibrated checkerboards, scale bars, CMM-measured objects). This is where `camera → keypoints → 3D kinematics` earns a real [[uncertainty-budget|uncertainty budget]].

Inter-sensor **synchronization is itself a calibrated, traceable quantity** (sync jitter measured against a traceable clock), which ties the [[build-to-spec-vs-shared-protocols|build-to-spec timestamp core]] directly to metrology.

**Related:** [[metrological-traceability]] · [[uncertainty-budget]] · [[metrology-and-traceability]] · [[accuracy-precision-drift]]
