---
tags: [planning, x-labs, thesis, instrument]
aliases: [Mission planning, Section 1 Mission]
type: planning
---

# §1 Mission — planning

> [!quote] What the solicitation asks (§10.1)
> "Describe one or more **novel platform technologies** that the proposed NSF X-Lab is uniquely suited to advance. Successful teams will have a **clear vision statement** of how their work will result in an end-state that **reshapes an entire field** of scientific inquiry or a sector of technology, and **how their Mission is currently unmet** by existing organizational structures and funding mechanisms."

**Earns:** Mission Clarity & Outcomes — §11.2a (ambitious/sound/well-defined) + §11.2c (aligned with §3.0 objectives). · **Budget:** ~1.0 pg.

## Use the structure that's already on disk
`proposal/sections/1-mission.typ` already frames the section as a **funnel → hedge → gap → hero** narrative arc. That scaffold is good and the funnel/hedge/gap are already well-drafted. **Keep them.** The `hero` block is empty — that's the real work of this section, and it's where we drop the concrete instrument and the Boston build. Plan below mirrors that scaffold beat-by-beat.

> [!tip] Framing note (important)
> Lead with the **physical instrument** and the **concrete Boston work**. The plan we landed on — an instrumented capture volume, custom-built eye trackers, force plates, EMG, Neuropixels/miniscope animal rigs, a drone swarm — is *self-evidently* hardware. So write from confidence, not defense: this is a measurement instrument, full stop. The ontology/software is named only as the connective tissue that makes the hardware scale (a strength), never apologized for. Do **not** open on abstractions like "measurement revolutions" — start concrete, the way the funnel already does.

## The mission statement (the boxed block)
The `.typ` holds a strong variant: *build a constellation of composable, interchangeable scientific instrumentation for the complete empirical capture of the agent/environment interaction, unifying perceptuomotor neuroscience, musculoskeletal biomechanics, agentic AI, and mobile robotics into a convergent science of sensorimotor control.* Keep it instrument-first. Open decision: which variant + whether to name an acronym (CECV / the field).

## Funnel — the hook (keep the existing opening)
Existing: *"Interaction with the environment is the most fundamental act of living. Information flows in, forces flow out — the brain exists to yank the bones around."* Concrete, embodied, thought-provoking — exactly right. This is the **perceptuomotor loop**: perception drives action drives perception. Flesh (optional): the loop is continuous, whole-body, and situated in a real 3D world — the thing all of neuroscience/biomechanics/robotics is ultimately *about*.

## Hedge — respect the prior work (keep + tighten)
Existing: sensorimotor control is **fractured across disconnected disciplines** — (perceptuomotor) neuroscience, (musculoskeletal) biomechanics, (legged) robotics — each spawning its own hyper-specializations. Flesh: give genuine respect to the reductionist triumphs (exquisite single-modality precision — Neuropixels resolving spikes, motor-unit EMG, sub-degree gaze) so the gap doesn't read as a straw man. Each silo is *excellent at its one thing*.

## Gap — the problem (keep + sharpen to the mesoscale)
Existing: reductionism is powerful but **has not delivered on the implied promise** that these gossamer threads would coalesce into the unified whole. Sharpen: the **whole behaving agent in its natural environment falls between every discipline** — no one measures the complete, calibrated, synchronized interaction, so studies stay one-off and non-cumulative ([[the-missing-middle]]). This is the mesoscale gap: the reductionist's promise, unkept. (This is question #2 of [[the-three-load-bearing-questions]] — the field being reshaped.)

## Hero — our solution (WRITE THIS; it's the empty block)
The hero is **concrete physical hardware plus a proven tool**, built and operated by an autonomous org. Beats to hit, grounded:

1. **We already started — FreeMoCap.** The PI built [[freemocap|FreeMoCap]], an open, adopted, markerless motion-capture platform (the kinematics layer, already done and in the world). This is the seed and the proof-of-concept — the [[matthis-corpus|Matthis 2018/2022]] real-world gaze+body methodology, turned into a tool others use.
2. **The instrument: a densely instrumented capture volume in Boston** (the "Complete Empirical Capture Volume"). A physical room where an entire behaving human is recorded across every modality at once, calibrated and synchronized:
   - full-body **kinematics** (markerless mocap) · ground-reaction **forces / center of pressure** (force plates) · joint torques (inverse dynamics)
   - **muscle & motor-unit activation** (surface/implanted **EMG** — M.D.'s motor-unit-resolution expertise)
   - **binocular gaze + retinal projection** (custom eye trackers; world-aligned inverse projective ray-tracking, @matthis2022)
   - **neural activity** where feasible (mobile **EEG** for humans; invasive on the animal side)
   - a **manipulable environment** (VR/AR/XR) inside the volume for experimental control.
3. **Two wings** ([[the-physical-instrument-boston-flagship-and-network]]): Wing A the precision Boston volume; **Wing B** the wearable/outdoor rig (IMU suit + eye trackers + wearable compute + a **coordinated autonomous [[drone-swarm-camera-mocap|drone swarm]]** that grounds the outdoor rig's drift and maps terrain), calibrated against Wing A.
4. **The animal-model network** ([[comparative-phylogeny-and-ecs]]): the *same instrument* at model-organism scale — **ferret** (B.S.: built eye-tracker+mocap+gaze rig, now adding **Neuropixels + miniscope**), **guinea fowl** (M.D.: EMG/mechanics), **mouse** (D.F.: optogenetic), primate TBD. Invasive neural modalities that can't go on humans live here — *already-ongoing, real captures* (de-risking).
5. **The hardware we build.** Ambitious-but-grounded: use existing tech where it's good enough (FreeMoCap, Neuropixels, miniscopes), and **build what doesn't exist yet** — foremost **next-generation [[next-generation-eye-trackers|eye trackers]]** (torsion + lens/accommodation via iris + Purkinje imaging; wireless miniaturized animal trackers). Concrete Phase-1 hardware deliverables.
6. **What makes it one instrument (name it briefly, don't lecture):** every sensor's output is a [[sensor-grounded-ontology|sensor-grounded]], [[metrology-and-traceability|calibrated & traceable]] measurement of the same canonical entities, so modalities/species/scales are commensurable. The [[composition-over-inheritance|composable ontology]] is *how the instrument scales* — the connective tissue, mentioned in a clause, not defended.
7. **Both X-Labs objectives, explicitly:** the instrument = the **platform technology**; the **[[bdfl-governance|FreeMoCap Foundation X-Lab]]** (independent 501c3) = the **new organizational research structure**.
8. **Why unmet (one crisp clause):** normal funding structurally yields disposable single-modality prototypes; this needs full-time, autonomous, IP-owning, sustained engineering + a physical facility — the X-Labs model ([[why-this-cant-be-academic-science]]).

## Say explicitly `#say`
The concrete instrument and the Boston build; the modality list; the two wings + animal network; the hardware we'll build (eye trackers); FreeMoCap as the proven seed; both objectives; the crisp "unmet" clause.

## Allude only (a clause) `#allude`
The sensor-grounded ontology / composability as *how it scales*; [[the-epistemic-gap|epistemic-gap]] philosophy; [[dimensional-domains]]; the [[architectural-paradigm-operational-semantic-layer|Palantir/Anduril]] architecture lineage.

## Landmines (real risks — not the software bogeyman)
- **Don't open abstract.** Start concrete (the funnel is right); earn the abstraction later.
- **"Reshape a field" must be picturable** — the before/after (fractured silos → one cumulative interaction record).
- **Don't overclaim** beyond what [[03-outcomes|Outcomes]] can back with benchmarks.
- *(The old "must prove it's not software" worry is effectively retired — the plan is hardware-obvious. A single instrument-first sentence handles it; no need to be defensive. See [[the-software-exclusion]].)*

## Open decisions (JSM)
- **Name the convergent field** (bolder) vs. describe it? `#verify`
- **Acronym:** adopt "Complete Empirical Capture Volume (CECV)" for the Boston volume? Any name for the field/tool?
- Which **mission-statement variant** from the `.typ`.

## 1:1 feeders from the landscape
[[the-physical-instrument-boston-flagship-and-network]] · [[freemocap]] · [[next-generation-eye-trackers]] · [[comparative-phylogeny-and-ecs]] · [[complete-empirical-capture]] · [[the-missing-middle]] · [[sensor-grounded-ontology]] · [[metrology-and-traceability]] · [[why-this-cant-be-academic-science]] · [[matthis-corpus]] · [[the-thesis-instrument-not-software]]

## Current draft state
`proposal/sections/1-mission.typ` — funnel/hedge/gap drafted, **hero empty**, plus scratch notes (modality list, CECV, FMCF-X org, vision statements). Rich raw material; advisory only, do not edit the prose.

**Related:** [[00-proposal-planning-MOC]] · [[the-three-load-bearing-questions]] · [[say-vs-allude]]
