---
tags: [concept, instrument, biology, say]
aliases: [Ocular Torsion, Listing's Law, torsion during locomotion, VOR torsion]
type: concept
---

# Ocular Torsion and Listing's Law — the forgotten DOF

**Ocular torsion** is rotation of the eye about the line of sight — one of the eye's rotational degrees of freedom, and one **no current tracker measures at any price** ([[next-generation-eye-trackers]], [[dual-purkinje-image]]).

## Why torsion has been ignored
**Listing's law** states that eye orientations during fixation/saccades avoid torsion (they lie on a plane of rotation axes), so torsion is often treated as ≈0 and dropped. That approximation is why torsion has been "forgotten."

## Why the approximation fails during natural behavior (JSM)
Listing's law does **not** hold — or holds differently — when the **vestibulo-ocular reflex (VOR)** is active. During natural locomotion the VOR is engaged essentially **100% of the time** (the eyes counter-rotate to stabilize gaze against head/body motion), so torsion is a **real, active component** of natural eye movements, not a rounding error. Any instrument aiming at naturalistic behavior must measure it.

## Why it matters for this instrument
Accurate **retinal-projection reconstruction** — the world-aligned inverse projective ray-tracing of the [[matthis-corpus|Matthis 2022 retinal-optic-flow]] lineage — depends on the *full* eye orientation, torsion included. Getting the projection right therefore **requires** trackers that can resolve torsion, recoverable from **iris texture** (`@sangi2010`, candidate ref). This is a concrete driver for the [[next-generation-eye-trackers|eye-tracker build]]. `#say`

**Related:** [[next-generation-eye-trackers]] · [[dual-purkinje-image]] · [[matthis-corpus]] · [[the-physical-instrument-boston-flagship-and-network]]
