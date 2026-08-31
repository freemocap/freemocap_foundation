---
tags: [thread, instrument, metrology, design-lesson]
aliases: [Next-Generation Eye Trackers, eye-tracker build, the must-build]
type: thread
---

# Next-Generation Eye Trackers (the clearest "must-build")

The proposal must be **ambitious but grounded**: use existing tech where it's good enough ([[freemocap|FreeMoCap]] is a solid adopted tool), and **build new hardware only where what exists is genuinely insufficient.** The clearest must-build is **eye tracking**.

## Why current trackers aren't good enough
Commercial video trackers top out around **~1° of gaze error** and trade spatial for temporal resolution — and worse, **whole degrees of freedom of the eye are unmeasured by any tracker at any price**: notably **ocular torsion** (rotation about the line of sight) and **lens shape / accommodation.** The physics to do better is known but unpackaged — see [[dual-purkinje-image|DPI + iris-feature tracking]].

## The smartphone-camera thesis (the core bet) `#say`
The bet is explicitly a **camera-quality bet, not a physics bet.** Smartphones prove that **tiny, fast, high-resolution, lightweight, cheap cameras exist** — we all carry several — yet **eye trackers have not adopted them.** Put smartphone-grade imaging (plus controlled IR illumination) into a head-mounted tracker and the two "unreachable" DOFs become tractable *in mobile trackers*, not just benchtop rigs:
- **Torsion** from **iris texture** (`@sangi2010`) — see [[ocular-torsion-and-listings-law]].
- **Accommodation / lens shape** from higher-order **Purkinje reflections** — the "**DPI on consumer cameras**" result is already demonstrated: **Yates et al., OpenIrisDPI (2025)**, `@yates2025` (500 Hz binocular DPI on commodity hardware). See [[dual-purkinje-image]].

## Why torsion is not optional (JSM)
Torsion was historically dropped because of **Listing's law** — but Listing's law breaks (or changes) under the **VOR**, which is active essentially **100% of the time during natural locomotion**, so torsion is a real, active component of natural eye movements. Accurate **retinal-projection reconstruction** ([[matthis-corpus|Matthis 2022]]) *requires* it. Full argument: [[ocular-torsion-and-listings-law]]. `#say`

## The textbook [[hydration]] story `#design-lesson`
With today's tools the eye model hydrates only to **elevation + abduction** (2 rotational DOF); **torsion and lens shape stay un-hydrated because the instrument can't reach them.** A better tracker **hydrates those slots** — and pays off *backward*: once the sensor exists, models can **back-predict** torsion/lens for older recordings. **The archive improves retroactively as the instrument improves** — a strong data-longevity argument. `#say`

## Animal trackers — extending what's *already built* (not from scratch)
This is the credibility anchor: **we have already built plausibly the best-in-world eye trackers for ferrets and mice.**
- **Ferret (with B.S.):** a **three-camera skull-mounted head rig** integrated with full-body mocap + AR displays + binocular gaze + world cameras, *all calibrated in one system* — effectively **a miniature animal-scale instance of the entire flagship instrument, already demonstrated** — and **actively advancing now** (integrating [[comparative-phylogeny-and-ecs|Neuropixels + one-photon miniscope]]). A live program, not a finished artifact.
- **Mouse (D.F. lineage):** a **built (not-yet-deployed) monocular** tracker at the **~3–4 g** limit (tethered). Target: fully-integrated wireless package, low-power Bluetooth, trickle-charged by a conductive floor in an instrumented home cage → effectively **indefinite recording.** (For scale: ultralight rodent head-cams already run ~1.3 g single-camera; the target is hard, not fantasy `#verify`.)
- **Ferret un-tethering** (longitudinal), **rat** (communal-housing robustness bar), **marmoset/primate** (push quality + wireless).

## Be explicit about the build `#say`
This is ambitious, large-scale, long-term hardware R&D — *exactly what X-Labs wants*. Existing tech as substrate; clear-eyed candor about the real hardware we must build, eye trackers first, as concrete Phase-1 deliverables. A vivid, self-contained example of [[hydration]] and the whole [[sensor-grounded-ontology|instrument]] thesis.

> [!warning] `#verify` Some arXiv/bioRxiv IDs cited for this thread in [D12] look post-cutoff — confirm before citing. Per-species Phase-1 scope (which DOFs to promise) is JSM's call. See [[_verification-punchlist]].

**Related:** [[dual-purkinje-image]] · [[ocular-torsion-and-listings-law]] · [[hydration]] · [[the-physical-instrument-boston-flagship-and-network]] · [[comparative-phylogeny-and-ecs]]
