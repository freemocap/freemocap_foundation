---
tags: [thread, ontology, philosophy, instrument, coinage]
aliases: [The Pipeline, RW to Ontology, the sketch, from sketch]
type: thread
---

# The RW → Ontology Pipeline (the whole picture, from the sketch)

Coheres JSM's hand-drawn "Real World → Ontology" sketch into a structural whole: one left-to-right pipeline carrying [[capital-t-true-facts|capital-T True Facts]] into testable theory, crossing [[the-epistemic-gap|the epistemic gap]] in the middle.

```
 METAPHYSICS (what IS)              │  EPISTEMOLOGY (what we believe is true)
 Real World = True Facts            │
   suffused with EAEE               │
   (light · force F=ma / τ=Iα)      │
        ▼                           │
   SENSOR TRANSDUCTION ─────────────┼──►  measurement estimate
   (camera, IMU, electrode…)        │        ▼
        └──── the ═ EPISTEMIC GAP ═ ┘   ONTOLOGICAL MODEL (hydrated)
                                    │        ▼
                                    │   scientific theory & experimentation
```

The instrument is the **bridge across the gap** — turning [[eaee|environmental energy]] into a defensible, uncertainty-bounded belief about the world.

## Stage by stage
- **Record** — [[eaee|EAEE]] impinges on [[sensor-as-transducer|sensors]] (light→camera; force/accel→IMU).
- **Reconstruct** — raw signal → structured estimate (video→CNN keypoints→skeleton→kinematics = [[freemocap|FreeMoCap]]; IMU→segment orientation).
- **Estimate** — reconstructed measurements become estimates of canonical [[ontology-definition|ontological entities]].
- **Model** — those estimates [[hydration|hydrate]] the canonical model: a best-effort hydrated estimate of the True Facts. *(JSM's own "(?)" flags this stage's name as open.)*

## Many transducers, one data model
The [[accuracy-precision-drift|accuracy/precision/drift]] point: camera mocap (accurate, imprecise, differentiate), IMU (precise, drifting, integrate), and hybrid Kalman fusion all produce the **same data model**. The transducer is interchangeable; the grounded ontology is invariant — an *instrumentation* argument, not a software one.

## The ontology as a scaffold you [[hydration|hydrate]]
Drawn out for `Human`: inherited phylogenetic traits (Chordata→spine; Craniata→skull→face→eyes; Tetrapod→limbs→hand; Predator; Biped; Primate), structural decomposition (body→segments; head→face→eye→{pupil,lens,retina,3D orientation}), and **layers of precision** (eye as 6-DOF rigid body vs. soft deformable structure). **Hydration** fills grounded slots; unmeasured parts are *present but un-hydrated*. Even derived quantities (muscle force via OpenSim) trace back to the primary sensor via [[metrology-and-traceability|metrology]].

## Two structural payoffs the sketch adds
- **[[functional-equivalence-optical-sensor|Functional equivalence]]** (eye ≡ camera) — the same `OpticalSensor` slot across biological and artificial agents.
- **The biological ↔ artificial loop** — grounded multimodal data → training data (incl. inverse RL) → testable control policies (RL / trajectory optimization) → *testable back on biological agents*. Real World and Fully Rendered Simulation (IsaacGym/MuJoCo) are mirror sources of the same data model. This is the direct hook to Topic-2's "instruments engineered for next-gen AI training pipelines."

> [!warning] 8-page discipline
> The epistemic-gap philosophy is powerful for framing/oral round but risks reading as "philosophy of science" in 8 pages — likely [[say-vs-allude|allude, not expound]]. `#allude`

**Related:** [[the-epistemic-gap]] · [[hydration]] · [[sensor-grounded-ontology]] · [[accuracy-precision-drift]] · [[comparative-phylogeny-and-ecs]] · [[functional-equivalence-optical-sensor]]
