---
tags: [thread, competition, landscape, reframe]
aliases: [Competitive Terrain, competitors, the betweenness argument, white space]
type: thread
---

# Competitive Terrain (the betweenness argument)

The honest answer to "why hasn't this been built" is **not** "nobody is trying." Serious, well-funded players are building **pieces** — the opportunity is that each is **structurally confined to a piece by its own incentives.** Naming them (reviewers know these names) is far stronger than ignoring them, and demonstrates the landscape command X-Labs expects. `#reframe`

## Mapped by layer
**Acquisition / experiment-control:**
- **Allen Institute for Neural Dynamics** — the most sophisticated effort; co-develops **Harp** (real-time DAQ) + **Bonsai** (reactive visual-programming for closed-loop experiments — architecturally the closest existing thing to the operational layer). But it's **animal-model, single-institute pipeline** infrastructure.
- **ONI/ONIX** (Open Neuro Interface) — open multi-instrument hardware standard; **mouse-focused.**

**Archives:** **DANDI** (NWB-based), **OpenNeuro** (BIDS, 20k+ subjects), **EBRAINS**, **Pennsieve** — storage-and-sharing, post-hoc, **not operational capture.**

**Commercial markerless (most direct FreeMoCap competition):** **Theia (Theia3D)** — most-validated markerless system; 124 keypoints; a formidable team including **Peter Loan (architect of SIMM, [[opensim|OpenSim's]] predecessor)** and a DeepMind research director — *take it seriously.* Also **Move.ai** (phone-based), **Captury**, **Moverse**, academic SMPL/SMPL-X pipelines.

## The decisive read `#reframe`
> **Every commercial markerless system is single-modality — kinematics only.** They extract a skeleton from video and sell it into a vertical (sports, clinical, animation). None fuses kinematics with neural, gaze, force, and physiology into a unified calibrated record; none has a semantic layer. Their *incentive* is to perfect one measurement, not integrate all.

## The white space (state it precisely)
The **institutes** build closed multimodal pipelines for their own (animal) science; the **archives** store finished single-modality datasets; the **companies** sell single-modality capture into verticals; the **standards bodies** retrofit file formats. The **open, human, naturalistic, multimodal, calibrated, semantically-unified, operational capture instrument falls between every one of these chairs.** That betweenness *is* the defensibility argument — and [[freemocap|FreeMoCap's]] open, markerless, commodity-hardware lineage is the right starting point for the piece nobody else is incentivized to build.

**The risk to internalize:** the edge is **not** "we capture motion better" (Theia/Move.ai win the pure-capture race) — the edge is the **integration-as-instrument thesis**. Framed this way, the crowded [[markerless-pose-estimation|capture market]] becomes *evidence for* the vision, not a threat.

**Related:** [[markerless-pose-estimation]] · [[freemocap]] · [[the-missing-middle]] · [[opensim]] · [[the-scientific-landscape-and-the-missing-middle]]
