# Proposal Structure — Puzzle Board

*Working map of concepts → sections. Each item is a sticky note, not content. Move freely. Delete freely. Nothing here is settled.*

---

## 1. MISSION (~1.5pp)

Solicitation asks: novel platform tech, clear vision, end-state reshapes a field, why unmet by existing structures/funding.

### The hook
- New *measurement instrument*, not new software
- Analogy: telescope, microscope, MRI — each made something measurable that wasn't before

### The new observable
- Complete empirical capture of agent–environment interaction
- Calibrated, synchronized, semantically-unified record across modalities
- Modalities: kinematics, gaze, neural, force, physiology
- Cross-dimensional: species, scale, time, numerosity, complexity

### Field(s) reshaped
- Behavioral neuroscience, motor neuroscience, embodied cognition
- "A mouse-lab researcher walks into a marmoset lab and uses the same tools"
- Before → after picture (fragmented single-modality → unified multimodal)

### Why unmet by existing structures
- Normal grants → disposable single-modality prototypes (cite sustainability lit)
- No PI's R01 scopes cross-modality integration
- Startups → single-modality vertical products (kinematics OR eye tracking, never fused)
- Standards bodies → archive formats, not operational instruments
- → X-Labs autonomy/IP/full-time model is the structural solution

### Open questions
- How much Palantir/Anduril framing here vs. buried in Landscape?
- Does "complete empirical capture" register as measurement or as data aggregation?
- Too many dimensional domains? Pick one anchor domain?

---

## 2. TECHNOLOGY LANDSCAPE (~1.5pp)

Solicitation asks: current state-of-the-art, how platform accelerates new tech/research, **figure encouraged**.

### The layered stack (candidate figure)
- Transport/sync: LSL — solved as timestamping, not a data model
- Archive: BIDS, NWB — solved as file formats, fragmented by modality
- Physics/modeling: OpenSim — powerful, dominant, notoriously painful to use
- **Missing middle**: calibrated, synchronized, typed operational layer ← THIS IS THE GAP

### The precedent: MoBI
- 15-year peer-reviewed lineage (Makeig, Gramann, Ferris)
- Validates concept is not crankish
- Exposes gap: MoBI is a methodology, not a platform — heroic labs assemble by hand

### Enabling shifts
- Markerless pose estimation crossed threshold (DeepLabCut, SLEAP, FreeMoCap)
- "Naturalistic neuroscience" is the field's stated frontier

### Competitive terrain: why nobody has built this
- Allen Institute: animal-model, single-institute pipeline — not open human platform
- Theia/Move.ai: single-modality kinematics products — no fusion, no semantic layer
- DANDI/OpenNeuro: archival storage — not operational capture
- → The integrated whole falls between every chair

### The Palantir/Anduril/Maven architectural precedent
- Operational semantic layer pattern: fuse heterogeneous streams → typed model → human + AI surface
- MSS: 170+ sources → Ontology → 20K users (proof pattern works at scale)
- Transplant argument: if it fuses SIGINT + satellite + drone feeds, it can fuse kinematics + gaze + neural
- **Hazard:** keep this as engineering credibility, not surface framing — must not read as "enterprise software for labs"

### Open questions
- Where does the quantitative figure go? Layered stack? Competitive positioning chart? Both?
- How much Palantir/Anduril is too much?
- Does OpenSim-bashing help or hurt? (reviewers may include OpenSim people)

---

## 3. OUTCOMES (~1.5pp)

Solicitation asks: high-impact measurable outcomes, 5-7 year timescale, scientific/technical benchmarks.

### Platform outcomes (the instrument)
- Unified capture pipeline: any sensor → calibrated, synchronized, typed record
- Operational semantic layer: object/link/action types for empirical science
- Real-time closed-loop capability (edge-fuse path) + rich queryable archive (materialize path)
- Open protocols + open data models + open-source reference implementation

### Scientific outcomes (what the instrument enables)
- First cross-modal, cross-species datasets that are natively interoperable
- Reproducible multimodal pipelines replacing per-lab bespoke scripts
- Cross-disciplinary research that currently requires heroic integration effort

### Community / ecosystem outcomes
- Workshops → Conferences → Congresses → Hackathons (escalating engagement ladder)
- "Student trained on webcam in low-resource lab is prepared for high-resource lab"
- Maximum spread across resource strata (not just rich labs)

### Benchmarks (quantitative)
- Modalities integrated: [N]
- Cross-species coverage: [N]
- Spatial/temporal calibration precision: [target]
- User base growth trajectory
- Community contributor retention

### Open questions
- 5-7 year timescale: what's realistically achievable vs. aspirational?
- Which benchmarks are measurable in Phase 0/1 vs. Phase 2?
- "Complete" is aspirational — what's the concrete Phase 1 deliverable?

---

## 4. SENIOR/KEY PERSONNEL QUALIFICATIONS (~1.5pp)

Solicitation asks: technical expertise, commercialization experience, past efforts.

### Core team (to define)
- JSM — FreeMoCap creator, NEI K99/R00, leaving TT faculty
- [Person 2] — role, key qualification
- [Person 3] — role, key qualification
- [Person N] — role, key qualification

### Domain expertise coverage needed
- Markerless motion capture (have: JSM/FreeMoCap)
- Eye tracking
- Neural recording (ephys, imaging, EEG)
- Biomechanics / musculoskeletal modeling
- Software architecture at scale
- UX/UI / developer experience
- Community building / open-source governance

### Commercialization / entrepreneurship track record
- [TBD — critical gap relative to solicitation emphasis]
- FreeMoCap's organic adoption as proxy signal? (15k users, 150 countries)

### Open questions
- Who are the actual named people? Initials aren't enough for a proposal.
- Who brings commercialization/entrepreneurship cred?
- Does the team have the "complementary expertise in strategic leadership" the criteria demand?

---

## 5. TEAM CAPABILITIES STATEMENT (~1.5pp)

Solicitation asks: complementary expertise, governance structure, autonomy plan, partnerships.

### Governance & autonomy story
- Lead org: FreeMoCap Foundation, Inc.
- Phase 0: hosted by [TBD] while building independent structure
- Phase 1 target: full Autonomy Factor Test compliance
  - Independent leadership board (not shared with parent)
  - Full IP ownership (parent holds none)
  - Hiring/salary independence
  - Decision velocity: days, not weeks

### Existing networks / community
- 15k users from 150+ countries
- 10k GitHub stars
- 3.5k Discord members
- → Evidence of demand and community-organizing capability

### Collaborator ecosystem
- [BS] — ferrets, visual/perceptual neuroscience, ephys
- [MD] — guinea fowl, musculoskeletal biomechanics
- [DF] — mice, systems biology
- [AH] — marmosets/NHP, ephys
- [MH] — human vision
- [Mayo Clinic] — human brain scans, implanted sensors
- [BD/GN/CH/JH] — robots, fabrication, control theory
- [AA] — physical facilities, rapid iteration

### Partnerships (to develop)
- Industry partners (sensor manufacturers, compute)
- Philanthropic (CZI? Kavli?)
- Government labs

### Open questions
- Is FreeMoCap Foundation legally real and independent enough?
- The autonomy story is the hardest structural argument — needs concrete plan, not aspirations
- Collaborators are academics — where are the industry/nonprofit/lab partners the solicitation asks for?
- How does a team of academics credibly claim "decisions in days not weeks"?

---

# FLOATING PUZZLE PIECES — not yet placed

Concepts that could fit multiple sections. Need placement decisions.

- **"Sanctity of the data" / raw data philosophy** — Mission philosophy? Landscape? Or cut for being too abstract?
- **Student as design target** — Outcomes (accessibility)? Mission (who the instrument is for)?
- **Dimensional domains taxonomy** (species/scale/time/numerosity/complexity) — Mission scope statement? Outcomes framework? Or cut to avoid overclaim?
- **HED admission about real-world complexity** — Landscape (ontology question)? Mission (problem statement)?
- **Palantir architecture details** (object types, link types, CDC, etc.) — Landscape only? Or scattered?
- **LSL's documented pain points** — Landscape (gap evidence)? Mission (why current tools fail)?
- **OpenSim's roadmap admission of poor UX** — Landscape (foil)? Outcomes (what we fix)?
- **Consistency ↔ latency ↔ resilience triangle** — Landscape (architecture depth)? Too much?
- **Community growth metrics** — Team Capabilities? Outcomes?
- **"Science as collective tool-building"** — Mission philosophy? Too abstract for 8 pages?

---

# KEY STRUCTURAL TENSIONS — to resolve

1. **Instrument vs. infrastructure framing.** Every section inherits this choice. Mission sets the register. Hazard: Palantir analogy pulls toward infrastructure.

2. **Breadth vs. depth.** Five modalities × five dimensional domains = 25 cells. In 8 pages. Pick a lead modality? Pick a lead domain? Or keep breadth and rely on the figure?

3. **Engineering credibility vs. reviewer vocabulary.** The architecture story works but uses words ("ontology," "semantic layer," "entity-component model") NSF reviewers may pattern-match to "enterprise software." Need translation layer.

4. **Team autonomy story.** Weighted equally with Mission. Currently the weakest structural piece. Hard to fix in prose alone — needs real organizational decisions.

5. **The figure.** Landscape section explicitly invites a quantitative plot. This could carry disproportionate weight for limited page real estate. What's the most compelling single visual?

---

*Last updated: 2026-06-30*
