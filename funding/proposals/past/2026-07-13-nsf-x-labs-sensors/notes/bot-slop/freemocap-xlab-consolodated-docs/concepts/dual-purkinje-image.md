---
tags: [concept, instrument, metrology, design-lesson, verify]
aliases: [Dual Purkinje Image, DPI, Purkinje imaging]
type: concept
---

# Dual-Purkinje-Image (DPI) and the reachable eye DOFs

The physics that lets a next-generation [[next-generation-eye-trackers|eye tracker]] reach degrees of freedom **no current tracker measures at any price** — notably **ocular torsion** (rotation about the line of sight) and **lens shape / accommodation**.

- **DPI** compares the **1st (corneal) and 4th (back-of-lens) Purkinje reflections** for very-high-resolution oculomotor measurement, and can be extended to track **accommodation**. Open-source *digital* DPI on **consumer-grade cameras** now exists: **Yates et al., OpenIrisDPI (2025)**, `@yates2025` — 500 Hz binocular DPI on commodity hardware (the direct evidence for the [[next-generation-eye-trackers|smartphone-camera thesis]]).
- **Iris-feature tracking** recovers **torsion** from stable iris features (`@sangi2010`) — see [[ocular-torsion-and-listings-law]].

Engineering high-quality, high-speed eye imaging + controlled IR illumination makes iris features (→ torsion) and higher-order Purkinje images (→ lens/accommodation) trackable.

## Why it's the textbook [[hydration]] story
With today's tools the eye model hydrates only to **elevation + abduction** (2 rotational DOF); **torsion and lens shape stay un-hydrated because the instrument can't reach them.** A better tracker **hydrates those slots** — and pays off backward: once the sensor exists, models can **back-predict** torsion/lens for older recordings, so *the archive improves as the instrument improves*. `#say`

> [!note] `@yates2025` (OpenIrisDPI) is web-verified this session. Other arXiv/bioRxiv IDs cited in [D12] for this thread still need checking — see [[_verification-punchlist]].

**Related:** [[next-generation-eye-trackers]] · [[ocular-torsion-and-listings-law]] · [[hydration]] · [[the-physical-instrument-boston-flagship-and-network]]
