# Proposal Content Map — Technology Landscape & Outcomes

*Advisory planning map (bot slop by definition). For JSM. Fifth in the series; builds on the four bot-slop briefings. NOT proposal prose — terse phrase-outlines + a story spine + a page-budget strategy, to be reviewed before any drafting. Cross-refs to the prior docs are marked [D1]–[D4].*

**Prior docs:**

- [D1] `entity-trait-composition-landscape.md`
- [D2] `built-to-spec-vs-shared-protocols.md`
- [D3] `why-not-academia-obo-internet-precedents.md`
- [D4] `sensor-grounded-ontologies-instrumentation.md`

---

## 0. What the solicitation literally asks for (so the outlines map 1:1)

- **Technology Landscape** (§10.1): analyze current landscape → justify how the platform accelerates new tech/research lines · compare current SOTA · describe team's goal to progress the tech & unlock *fundamentally new* capabilities · *optional quantitative figure* of current-vs-goal.
- **Outcomes** (§10.1): high-impact *measurable* outcomes · advance nascent platform · overcome critical bottlenecks · realize field-reshaping vision · Phase 0 must state **5–7-yr target outcomes** + the **performance benchmarks** to get there.
- **Scored on** (§11.2, weighted = to team): ambitious/technically-sound/well-defined · landscape justifies a *dedicated full-time team* · aligned with X-Labs strategic objectives.
- **Topic-2 gifts to exploit:** opens with *"every revolution in science preceded by a revolution in what we can measure"* (telescope→MRI) · explicitly in-scope: *"whole-brain activity at cellular resolution across long timescales"* + *"instruments engineered for next-gen AI training pipelines."*
- **Topic-2 landmines to avoid:** "computational/software solutions without practical integration into an instrumentation system" · narrow/not-deployable · fundamental research w/o platform application · incremental SOTA · already-commercializable.

---

## 1. The coherent story (the spine both sections hang on)

- Measurement revolutions precede scientific revolutions — *the Topic's own framing*.
- The un-instrumented frontier = **the whole behaving agent in its natural environment**.
- Today: every modality (pose, gaze, neural, force, physiology) measurable *in isolation*, mostly *in constrained rigs*; **no calibrated, synchronized, semantically-unified record of the whole interaction**.
- The instrument = **array of transducers** sampling Empirically Available Environmental Energy, unified by a **sensor-grounded ontology** + **truth-preserving (traceable, uncertainty-propagating) pipelines** → commensurable measurements across modality, scale, species [D4].
- The innovation is not a new sensor — it's **making agent–environment interaction a first-class, calibrated, cumulative measurable** (the "missing middle").
- Payoff: a **convergent science of perceptual-motor control**; and the grounded multimodal corpora that **embodied AI** needs (Topic's own AI-pipeline hook).
- Feasible now because a seed exists (FreeMoCap/SkellyCam, open, adopted); field-reshaping because it makes today's one-off studies cumulative & comparable.
- Requires an X-Lab (not a university lab) because **complexity-management and usability are first-order problems** needing sustained, non-market stewardship [D3]; precedent: OBO (25-yr durable science ontology) + Internet (thin waist, NSF-stewarded) [D2][D3].

**One-liner:** *We are building the instrument that turns the complete empirical capture of agent–environment interaction into a calibrated, shareable measurement — the measurement revolution behind a convergent science of perceptual-motor control.*

---

## 2. Technology Landscape — phrase outline (~1 page + figure)

- **Hook** — measurement→science revolutions (telescope, MRI); next frontier = behaving agent in the wild.
- **The measurable that's missing** — unified, calibrated, synchronized whole-agent–environment record.
- **Current SOTA, by silo** (each excellent, each isolated):
  - Marker mocap (Vicon/OptiTrack) — precise; lab-bound, encumbered, sparse.
  - Markerless pose (DeepLabCut, SLEAP, MediaPipe) — flexible; single-modality, uncalibrated, no uncertainty.
  - Mobile gaze (Pupil, Tobii) — gaze only; decoupled from body/world.
  - Neural (Neuropixels, miniscope) — exquisite; tethered, decoupled from natural behavior.
  - Force / EMG / IMU / physiology — each its own silo, its own clock, its own coordinate frame.
  - Fusion middleware (LSL, ROS) & operational ontologies (Palantir/Lattice) — move/relate data; *not grounded scientific instruments* [D2][D4].
- **The gap = the "missing middle"**:
  - no cross-modal calibration / sync / semantic commonality.
  - every multimodal study rebuilds bespoke integration → non-cumulative, non-comparable.
  - academic tooling decays to abandonware; step-zero choices cap complexity [D3].
- **Quantitative figure** (the optional plot — include it):
  - X-axis = ecological validity (constrained rig → unconstrained natural env).
  - Y-axis = modality integration / semantic unification (single stream → fully fused, calibrated, cross-scale).
  - existing tools = points hugging the axes / low-left; **target region = upper-right, empty**.
  - annotate a 3rd dim (species×scale generality) via marker size/color.
- **Team's goal / new capability** — occupy the empty region: instrument + grounded ontology that makes agent–environment interaction a calibrated, cross-domain measurable.
- **Why credible now** — FreeMoCap/SkellyCam seed: open-source, real adoption, prior published multimodal captures [D4: Matthis 2018/2022].
- **Why not incremental** (defuse the exclusion): grounding + metrology + composability + usability = *instrument, not middleware*; differentiator stated in the instrument's own terms.

## 3. Outcomes — phrase outline (~1 page)

- **End-state vision (5–7 yr)** — agent–environment interaction routinely measured, calibrated, shared across labs/species/scales; a convergent perceptual-motor science.
- **Measurable outcome targets** (each carries a benchmark axis):
  - *Instrument*: N synchronized modalities; sub-ms sync; published spatial/temporal calibration + uncertainty budget; cost/accessibility target.
  - *Grounded standard*: open sensor-grounded schema; M modality adapters (incl. import from LSL/DLC/Neuropixels) [D2 adapters]; ≥X external adopting labs.
  - *Reference corpora*: flagship validated datasets — human terrain locomotion+gaze; ferret gaze+neural; mouse optogenetic; avian EMG/mechanics — as community benchmarks.
  - *Scientific unlocks*: retinal-optic-flow-class analyses [D4: Matthis 2022] routine & cross-species; enumerated new questions opened.
  - *AI payload*: grounded multimodal corpora for embodied-AI training (Topic hook).
- **Performance benchmarks (how measured)** — calibration accuracy; sync jitter; uncertainty quantification; #modalities fused; #adopting labs; cost; dataset scale; cross-site reproducibility.
- **Critical bottlenecks overcome** — cross-modal calibration/sync; semantic commensurability; the complexity ceiling (refactorability by design) [D1][D3]; usability/cognitive-load barrier to adoption [D4].
- **Impact / field-reshaping** — one-off rigs → cumulative comparable science; new convergent field; widespread use + investment via open ecosystem + foundation stewardship. (Maps §7.0 example outcomes: foundational platform → downstream breakthroughs; bottleneck solved reshapes a field; prototypes industry won't fund.)
- **Phasing** — Phase 0: prove metrological spine + org design + Phase-1 milestone plan · Phase 1 (24–36 mo): scale modalities + drive external adoption · 5–7 yr: the standard + the field.

---

## 4. Eight-page budget & say-vs-allude strategy

**Rough page allocation** (8 pp total, incl. figures; COI excluded):

| Section | Pages | Notes |
|---|---|---|
| Mission | ~1.0 | vision + "unmet by existing structures" clause |
| Technology Landscape | ~1.25 | incl. the landscape figure |
| Outcomes | ~1.25 | targets + benchmarks table |
| Senior/Key Personnel | ~1.75 | later |
| Team Capabilities | ~1.75 | incl. governance/autonomy; later |
| slack / figures | ~1.0 | — |

**Say explicitly** (these earn the score / clear the exclusion):
- instrument = array of transducers; calibration, traceability, uncertainty [D4].
- the landscape gap + the quantitative figure.
- measurable 5–7-yr targets + benchmarks.
- one crisp sentence on why it needs a full-time X-Lab (org rationale).

**Allude to (a clause, not a paragraph)** — the depth lives in the oral round / backup, not the 8 pp:
- composition/override, worse-is-better, thin-waist [D1][D2] → "designed for composability and refactorability," no lecture.
- academic-incentive critique [D3] → compress into the "unmet by existing structures" clause.
- OBO / Internet precedents [D2][D3] → one-line analogies max.

**Do not** — anything that reads as enterprise/middleware software; jargon dumps; over-claiming beyond benchmarks; explaining the philosophy at the cost of the physics.

**Framing rule of thumb:** lead every subsection with the *measurement/instrument* noun; let the software/organization ideas enter only as *why the instrument scales and lasts*.

---

## 5. Open questions to resolve before drafting

- Landscape figure axes — confirm the two-axis choice above vs. a modality×naturalness matrix; pick one.
- Which flagship datasets are citable/committed vs. aspirational (affects Outcomes benchmark realism).
- Concrete Phase-0 numeric benchmarks (sync jitter target? #modalities? #adopting labs?) — need JSM's real numbers.
- How hard to name the "convergent science of perceptual-motor control" as a *new field* vs. describe it (naming is bolder, scores ambition, but must be defensible).
