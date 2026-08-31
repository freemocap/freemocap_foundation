---
tags: [planning, x-labs, metrology, instrument]
aliases: [Outcomes planning, Section 3 Outcomes]
type: planning
---

# §3 Outcomes — planning

> [!quote] What the solicitation asks (§10.1)
> "Deliver **high-impact, measurable outcomes** that advance a nascent platform technology, **overcome critical bottlenecks**, and realize the team's vision to reshape an entire area... Phase 0 proposals should describe the team's **ambitious target outcomes over a 5- to 7-year timescale** and the **scientific and technical performance benchmarks** needed to get there."

**Earns:** Mission Clarity & Outcomes — §11.2a (measurable, ambitious, well-defined). Maps to the §7.0 example-outcome types. · **Budget:** ~1.25 pg incl. a benchmarks table.

## The job of this section
Convert the vision into **numeric, checkable targets** with benchmark axes and a phasing story. This is where [[metrology-and-traceability|metrology]] pays off: every claim becomes a milestone. **The numbers are JSM's to set** — placeholders below are `#verify`.

## Beats to hit (outline)
1. **End-state (5–7 yr).** Agent–environment interaction routinely measured, calibrated, and shared across labs/species/scales — a convergent perceptual-motor science.
2. **Measurable outcome targets, grouped:**
   - *Instrument:* N synchronized modalities; sub-ms sync; published spatial/temporal calibration + [[uncertainty-budget|uncertainty budget]]; a cost/accessibility target.
   - *Grounded standard:* open [[sensor-grounded-ontology|sensor-grounded]] schema; M modality adapters (incl. import from LSL / DeepLabCut / Neuropixels); ≥ X external adopting labs.
   - *Reference corpora:* flagship validated datasets — human terrain locomotion+gaze; ferret gaze+neural; mouse optogenetic; avian EMG/mechanics — released as community benchmarks (the "Standard Reference Capture" idea, [[metrology-and-traceability]]).
   - *Scientific unlocks:* [[matthis-corpus|retinal-optic-flow-class]] analyses made routine and cross-species; enumerate 2–3 new questions the instrument opens.
   - *AI payload:* grounded multimodal corpora for embodied-AI training — the [[the-rw-to-ontology-pipeline|Topic-2 AI-pipeline hook]].
3. **Performance benchmarks (how measured)** — see table.
4. **Critical bottlenecks overcome:** cross-modal calibration/sync; semantic commensurability; the complexity ceiling (refactorable by design, [[path-dependence]]); the usability/[[conceptual-cleanliness-four-audiences|cognitive-load]] adoption barrier.
5. **Impact / field-reshaping:** one-off rigs → cumulative comparable science; a new convergent field; widespread use + investment via open ecosystem + [[tiered-dissemination-and-communal-science|foundation-stewarded tiered dissemination]].
6. **Phasing:** Phase 0 = prove the metrological spine + org design + Phase-1 milestone plan · Phase 1 (24–36 mo) = scale modalities + drive external adoption · 5–7 yr = the standard + the field.

## Benchmark table (shape — fill real numbers `#verify`)
| Outcome | Metric | Target | How measured |
|---|---|---|---|
| 3D joint-center accuracy | expanded uncertainty (mm, k=2) | < X mm | vs. traceable ground truth (robot/phantom) |
| Inter-sensor sync | jitter vs. traceable clock | < X ms | time-metrology comparison |
| Gaze-in-world | angular uncertainty (deg) | < X° | known fixation targets |
| Camera calibration | reprojection error (px) | < X px | traceable artifact |
| Adoption | # external labs on the schema | >= N | registry entries |
| Reproducibility | cross-site agreement | within stated uncertainty | round-robin (ISO 17025 model) |
| Reference corpora | # released, uncertainty-tagged | >= K | public release |

## Say explicitly `#say`
The 5–7 yr targets; the benchmark table; the milestone menu; phasing; the AI-training-data payload.

## Allude only (a clause) `#allude`
[[composition-over-inheritance|Composability/refactorability]] as "designed for it"; the deep metrology apparatus beyond the headline numbers.

## Landmines
- Numbers must be **real and defensible** — under-promise beats a challenged claim.
- Don't promise datasets that aren't committed (mark committed vs. aspirational).
- Don't let Outcomes read as a neutral **data warehouse** — keep the scientific vision visible (the [[tiered-dissemination-and-communal-science|anti-HBP]] point).

## Open decisions (JSM)
- **Every benchmark number.** `#verify`
- Which flagship datasets are **committed vs. aspirational**.
- Which 2–3 **new scientific questions** to enumerate as unlocks.

## 1:1 feeders from the landscape
[[metrology-and-traceability]] · [[uncertainty-budget]] · [[the-physical-instrument-boston-flagship-and-network]] · [[next-generation-eye-trackers]] · [[comparative-phylogeny-and-ecs]] · [[the-rw-to-ontology-pipeline]] · [[tiered-dissemination-and-communal-science]] · [[matthis-corpus]]

## Current draft state
`proposal/sections/3-outcomes.typ` — "SkellyBox" multiscale-arena bullets + `helpers/timeline-milestones.typ`. Advisory only; do not edit prose.

**Related:** [[00-proposal-planning-MOC]] · [[02-technology-landscape]] · [[the-three-load-bearing-questions]]
