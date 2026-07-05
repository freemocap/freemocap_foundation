---
tags: [planning, x-labs, landscape, competition]
aliases: [Technology Landscape planning, Section 2 Landscape]
type: planning
---

# §2 Technology Landscape — planning

> [!quote] What the solicitation asks (§10.1)
> "Provide an analysis of the current technology landscape that justifies how the proposed platform technology would **accelerate the emergence of new technologies and lines of research**. Compare current **state-of-the-art**; provide a clear description of the team's goal to **progress the technology and unlock fundamentally new capabilities**. A plot or other figure to quantitatively depict the current landscape and desired goal(s) may be included here."

**Earns:** Mission Clarity & Outcomes — §11.2b (the landscape justifies a **dedicated, full-time team**). · **Budget:** ~1.25 pg incl. the figure.

## The job of this section
Prove the gap is real, structural, and unfillable by the current players — then place our target in the empty space. Command of the landscape is exactly what §11.2b rewards.

## Beats to hit (outline)
1. **The measurable that's missing.** Restate the unified, calibrated, synchronized whole-agent record as the thing no one has ([[the-missing-middle]]).
2. **Current SOTA, by silo — each excellent, each isolated.** Marker mocap (Vicon/OptiTrack — precise, lab-bound); [[markerless-pose-estimation|markerless pose]] (DeepLabCut/SLEAP — flexible, single-modality, uncalibrated); mobile gaze (Pupil/Tobii — gaze only); neural (Neuropixels/miniscope — exquisite, tethered); force/EMG/IMU/physiology (each its own clock & frame); fusion middleware ([[lab-streaming-layer|LSL]], ROS) & operational ontologies (Palantir/Lattice) — move/relate data, *not grounded scientific instruments*.
3. **The gap = the missing middle.** No cross-modal calibration/sync/semantic commonality; every multimodal study rebuilds bespoke integration → non-cumulative; academic tooling decays ([[research-software-sustainability]]).
4. **Name the competition + the betweenness argument.** [[competitive-terrain]]: institutes (Allen/Bonsai — closed animal pipelines), archives (DANDI/OpenNeuro — post-hoc storage), companies (Theia/Move.ai — single-modality verticals), standards bodies ([[bids-and-nwb|BIDS/HED]] — file formats). The open, human, multimodal, calibrated, semantic, operational instrument falls between every chair.
5. **The quantitative figure (include it).** X = ecological validity (constrained rig → unconstrained natural env); Y = modality integration / semantic unification (single stream → fully fused, calibrated, cross-scale); existing tools hug the axes; **target = empty upper-right**; 3rd dim (species × scale) via marker size/color.
6. **Why credible now.** [[freemocap|FreeMoCap]] seed (open, adopted) + the [[naturalistic-neuroscience|two enabling shifts]] (markerless threshold crossed; naturalistic neuro is the stated frontier).
7. **Why not incremental.** Grounding + metrology + composability + usability = *instrument*, not middleware; differentiator stated in the instrument's own terms.

## Say explicitly `#say`
The missing-middle argument; SOTA-by-silo; the competitors + betweenness; the figure; credible-now; not-incremental.

## Allude only (a clause) `#allude`
[[architectural-paradigm-operational-semantic-layer|Palantir/Anduril]] as an architecture analogy (mind the [[maven-smart-system|framing hazard]]); the [[the-ontology-question-in-science|formal-vs-pragmatic ontology]] history.

## Figure
The single most important visual in the proposal. Confirm axes (see open decisions); make the empty upper-right unmistakable; annotate a few named tools as points.

## Landmines
- Do **not** compete on pure capture accuracy (Theia/Move.ai win that) — the edge is **integration-as-instrument**. [[competitive-terrain]]
- The miltech analogy is a light touch (architecture credibility), not the spine — the physical instrument and the concrete SOTA comparison carry the section. [[the-software-exclusion]]
- Naming competitors is a strength; ignoring them reads as naïveté.

## Open decisions (JSM)
- **Figure axes** — confirm the two-axis choice vs. a modality×naturalness matrix. `#verify`
- How hard to name each competitor vs. group them.

## 1:1 feeders from the landscape
[[the-scientific-landscape-and-the-missing-middle]] · [[the-missing-middle]] · [[mobi]] · [[lab-streaming-layer]] · [[bids-and-nwb]] · [[opensim]] · [[the-ontology-question-in-science]] · [[competitive-terrain]] · [[markerless-pose-estimation]] · [[naturalistic-neuroscience]] · [[freemocap]]

## Current draft state
`proposal/sections/2-technology-landscape.typ` — bullet stub (OpenSim/DeepLabCut, MuJoCo/IsaacLab, operational ontologies, FreeMoCap, laser-skeleton). Advisory only; do not edit prose.

**Related:** [[00-proposal-planning-MOC]] · [[01-mission]] · [[03-outcomes]] · [[say-vs-allude]]
