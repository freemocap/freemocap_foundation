# HANDOFF → Consolidation Agent

*Written by the research/advisory agent that produced the `notes/bot-slop/` briefing series, for the next agent whose job is to consolidate it: merge the bibliography, normalize cross-references, run a consistency pass, and assemble a coherent story. Read this first.*

---

## 1. What this project is (30-second orientation)

NSF **X-Labs Initiative, Topic 2 — Scientific Instrumentation for Sensing and Imaging**. Lead org: **FreeMoCap Foundation**. PI: **Jon Matthis (JSM)**. Written-proposal deadline: **July 13, 2026**. The written proposal is **8 pages, hard limit** (5 sections + a separate summary).

**Core thesis:** pitch FreeMoCap not as better motion capture but as a new class of **scientific instrument** — the *complete empirical capture of agent–environment interaction*: a calibrated, synchronized, semantically-unified record across modalities (kinematics, gaze, neural, force, physiology) and across species/scales. Working title under consideration: *"A convergent science of perceptual-motor control through sensor-grounded ontologies."*

**The single most important landmine** (Topic-2 §3.0): the solicitation excludes *"computational or software solutions without practical integration into an instrumentation system."* Everything in the briefing series is engineered to keep the proposal reading as **instrumentation / measurement science**, with the software/ontology/organization ideas positioned as *why the instrument scales and lasts* — never as the thing being funded on its own.

---

## 2. Hard constraints (do not violate)

- **Role = observer & advisor, NOT writer of the proposal.** Do **not** edit the proposal prose: `proposal/main.typ`, `proposal/sections/*.typ`, `proposal/0-summary.md`. Do not rewrite the strategic briefing or the outline text either. You *structure, plan, review, and consolidate the supporting material*.
- **What you MAY edit:** the `notes/bot-slop/` files (advisory notes — that's your workspace) and the bibliography `proposal/FMCF-NSF-XLABS.bib` (Jon explicitly asked for bib consolidation). Meta/guidance files (`CLAUDE.md`) are fair game only if asked.
- **"Bot slop" convention:** per JSM, anything an AI writes is "bot slop by definition" and lives in `notes/bot-slop/`. Keep it there. Every briefing already carries a "(bot slop by definition)" disclaimer — preserve that framing.
- **Typst:** the proposal is written in **Typst** (not LaTeX). If you touch *anything* `.typ` (you shouldn't touch prose, but you may need to understand `#bibliography()` / `@key` usage), **load the Typst skill first** — it documents parameter ownership and common mistakes.
- **Personnel privacy:** the public repo identifies personnel/collaborators by **initials**; there is a local `.env` mapping initials→names. The briefings use initials `B.S.` / `D.F.` / `M.D.` for *unpublished* collaborations (ferret/neural, optogenetic mouse, guinea-fowl EMG) while citing *published* Matthis papers with full author lists. Keep that convention.
- **Verify before asserting** (especially biology, citations, and any present-day facts). Several items are flagged unverified in §6.

---

## 3. What's on disk (inventory + role)

### Core proposal — **DO NOT EDIT PROSE**
- `proposal/main.typ` — page setup + `#include`s the sections; wires in the bibliography.
- `proposal/sections/` — `1-mission.typ`, `2-technology-landscape.typ`, `3-outcomes.typ`, `4-personnel.typ`, `5-team-capabilities.typ`. **NB: this numbering/order is now clean and sequential — CLAUDE.md still describes an older layout (0-mission… with an include-order quirk). CLAUDE.md is stale on file structure; trust the disk.**
- `proposal/0-summary.md` — the 5000-char summary; currently **Lorem ipsum** (stub).
- `proposal/FMCF-NSF-XLABS.bib` — **the existing bibliography, 12 entries**, key style `authorYYYY` (lowercase, no suffix): `matthis2013…2022`, `bonnen2021`, `muller2022/2023/2024`, `warren2006`, `barton2017`. **`matthis2018` and `matthis2022` already exist here** — do not create duplicates.
- `proposal/helpers/`, `proposal/main.pdf`, `proposal/output.pdf` — build artifacts/helpers.
- `typst-cheetsheet.typ/.pdf` (root) — Typst reference.

### Official solicitation — **source of truth** (`official-pdfs/`, each PDF has a `.md` port)
- `NSF-OTASO-FY26-XLabsInitiative.md` — main solicitation. Key facts: 8 pages, 12-pt, 1" margins; two strategic objectives (§3.0: *Build Sector-Defining Platforms* — "beyond traditional outputs like publications and datasets"; *Develop New Organizational Research Structures* — "challenges that lack sufficient incentives within traditional academic and industry labs"); funding Phase 0 ≤ $1.5M (9–12 mo), Phase 1 ≤ $50M/yr (24–36 mo), Phase 2 variable, possible Phase 3; §7.0 lists exemplar platform techs **including the Internet, VLSI, PCR, next-gen sequencing**; selection criteria weight "Team Qualifications & Structure" ≈ "Mission Clarity & Outcomes."
- `NSF-Topic2-FY26-XLabsSensingandImaging.md` — Topic 2. Opens with *"Every revolution in science has been preceded by a revolution in what we can measure"* (telescope→MRI); in-scope examples include *"whole-brain activity at cellular resolution across long timescales"* and *"instruments engineered for next-gen AI training pipelines"*; the exclusion list (the landmine).
- `NSF-OTASO-FY26-XLabsInitiative-AttachmentA.md` — written-proposal template.

### Source / intent material (human-authored or raw) — **cite, don't rewrite**
- `notes/bot-slop/older/Empirical-Capture-XLabs-Strategic-Briefing.md` — **the richest primary strategy source** (Palantir/Anduril analogy, MoBI precedent, missing-middle argument). Predates the briefing series; treat as a key source even though it now sits under `older/`.
- `notes/old/2026-nsf-xlabs-outline.md` — the working outline / scratchpad (voice-transcription quote-blocks are raw intent, not finished prose).
- `notes/bot-slop/older/human-lineage-tree.html`, `outline-structure-puzzle.md` — earlier explorations.
- `notes/handy-*_transcript.txt` / `_video_summary.txt` — JSM voice-memo transcripts (raw intent that seeded several briefings).
- `notes/bot-slop/human-phylogenetic-lineage.md` — the single-branch human tree; **source** for the phylogeny-ECS briefing (not itself part of the numbered series).

### The briefing series you are consolidating (`notes/bot-slop/`, all "bot slop")
The docs use an informal `[D#]` cross-reference scheme = series order. It is **mostly consistent but only partially populated** (not every doc cites every prior). Map:

| Code | File | One-line role |
|---|---|---|
| D1 | `entity-trait-composition-landscape.md` | Composition-over-inheritance & entity/trait/override across KR, software, games (MTG/ECS), ontologies, biology |
| D2 | `built-to-spec-vs-shared-protocols.md` | Build core to spec, add interop later; Palantir-rejects-OWL, worse-is-better, narrow-waist; OBO/LSL "clunky standard" |
| D3 | `why-not-academia-obo-internet-precedents.md` | Why academia structurally can't do this (Lehman/tech-debt/path-dependence/rewrite/Conway); OBO & Internet precedents; long-horizon funding justification |
| D4 | `sensor-grounded-ontologies-instrumentation.md` | The instrumentation anchor: sensors as transducers, metrology, Gibson/Harnad/Brooks grounding, Matthis 2018/2022, UI/cognitive-load |
| D5 | `proposal-mapping-tech-landscape-and-outcomes.md` | **Planning map** — phrase-outlines for Tech-Landscape & Outcomes + 8-page budget + say/allude discipline. **Start here for the coherent-story task.** |
| D6 | `the-whole-picture-from-sketch.md` | Coheres JSM's hand-sketch: RW→EAEE→sensor→measurement→hydrated-ontology→theory; epistemic gap; "hydration"; bio↔artificial loop |
| D7 | `metrology-nist-traceability-milestones.md` | Metrology/NIST (calibration, traceability, uncertainty); domain precedents (JCTLM, ISO 17025, camera calibration, AI-metrology); **milestone menu (numeric targets are placeholders)** |
| D8 | `research-animal-phylogeny-ecs.md` (+ `.html`) | Abridged tree prokaryote→human with research animals grafted; ECS trait table; ferret-vs-rodent "trait≠lineage"; rigid-body-physics attach point. **The `.html` is a rich interactive, data-driven visual.** |
| D9 | `big-communal-science-precedents.md` | LHC/astro/genomics/neuro data-commons case studies; Eghbal quadrants; **home-lab publisher/subscriber dissemination** (no proprietary period); FOA "national leadership" framing |
| D10 | `conceptual-cleanliness-education-ai-kuhn.md` | Ontology's "quadruple duty" (dev/scientist/AI-agent/student); Bloom 2-sigma + AI tutoring; boundary objects; Kuhn + Quine/Putnam web-of-belief |
| D11 | `ai-observability-debugging-assistant.md` | Ontology-grounded real-time QC/debug copilot (SPC + AIOps/LLM-log-anomaly + ontology); "someone bumped the camera" |
| D12 | `physical-facility-and-animal-collaborations.md` | **The concrete deliverable:** two-wing human flagship — **Wing A** Boston instrumented volume (mocap+force plates+eye tracking+AR/VR/MR+EMG) and **Wing B** wearable/outdoor rig (IMU suit + eye tracking + wearable computer + **autonomous drone swarm** for terrain mapping & IMU-drift grounding + egocentric NeRF/Gaussian-splat), cross-calibrated in the volume — plus a **hardware-build program that extends *already-built* world-leading prototypes** (a ferret 3-camera skull-mount + full-body mocap + AR + binocular-gaze + world-cam system = an animal-scale mini-instrument; a ~3–4 g monocular mouse tracker) toward next-gen eye trackers (adding torsion + lens/accommodation via iris + Purkinje imaging; wireless/miniaturized/longitudinal), ongoing animal-model collaborations (B.S. ferret — built rig, now actively integrating Neuropixels + miniscope · M.D. guinea fowl · D.F. mouse · primate TBD), and an annual convening = a **validation triangle**. Ambition-vs-pragmatism: use existing tech (FreeMoCap), build only what's insufficient. Tier-0 node of D9. |

---

## 4. The consolidation task (what JSM wants next)

1. **Bibliography merge.** Each briefing (D1–D4, D7, D9, D10, D11) carries a BibTeX block; D8 and D6 use inline links; others mix. **Collect all entries, dedupe, and merge into the *existing* `proposal/FMCF-NSF-XLABS.bib`** — matching its `authorYYYY` key style (not the `author2018gaze`-style keys used in the briefings). Reconcile duplicates against the 12 existing entries (esp. `matthis2018`, `matthis2022`). Convert load-bearing inline markdown links into proper entries. **Verify DOIs/authors** (see §6). Aim for one clean, canonical `.bib`.
2. **Normalize cross-references.** The `[D#]` scheme is fine internally but partial and opaque to outsiders. Recommend: build a `notes/bot-slop/README.md` (or `_INDEX.md`) mapping codes→files→topics (the table above is a start), and either (a) keep `[D#]` but complete/verify them, or (b) switch to filename references. Make cross-refs bidirectional where useful.
3. **Consistency pass.** Reconcile terminology and recurring caveats across all docs:
   - Terminology to keep uniform: *EAEE (Empirically Available Environmental Energy)*, *sensor-grounded ontology*, *hydration* (vs. override), *capital-T true facts*, *composition-over-inheritance*, *metrological traceability / uncertainty budget*.
   - The **software-exclusion framing** must be consistent (instrument-first everywhere).
   - "**dominance**" was deliberately replaced with the FOA's own words in D9 (*"maintain global leadership in science and technology"* §2.0; *"national competitiveness"* §3.0/§3.1; *"national innovation ecosystem"* §8.0). Ensure no doc reintroduces "dominance."
   - The **dissemination model** is **home-lab publisher/subscriber, NO proprietary period** (corrected in D9) — make sure nothing else implies a mandated proprietary window.
4. **Assemble the coherent story.** Synthesize the series into a single narrative/outline aligned to the 5 proposal sections (Mission, Technology Landscape, Outcomes, Personnel, Team Capabilities) + the summary — **as advisory scaffolding, not as proposal prose.** D5 is the seed; extend it to all sections. Respect the say-vs-allude discipline (deep software/philosophy = allude in ≤1 clause; instrument/measurement = say explicitly).

---

## 5. Recommended order of operations

1. Read this handoff → D5 (the map) → the Empirical-Capture strategic briefing (source) → skim D1–D11 in order.
2. Re-read the two official `.md` solicitation ports to re-anchor on requirements (don't trust memory).
3. Build the `notes/bot-slop/` index/README.
4. Do the bibliography merge into `FMCF-NSF-XLABS.bib` (verify citations as you go).
5. Consistency pass (terminology + caveats + cross-refs).
6. Assemble the section-by-section coherent-story scaffold.
7. Surface open decisions to JSM (see §6) rather than inventing answers.

---

## 6. Verification punch-list (known issues / things NOT to invent)

- **Numeric milestone targets** in D7 §5 are deliberate placeholders (`< X mm`, sync jitter, #adopting labs, etc.). **Only JSM can set these real numbers** — do not fabricate.
- **arXiv "Metrology for AI: From Benchmarks to Instruments" (1911.01875)** — cited without author names; verify authors/venue before finalizing.
- **DOIs** in the briefing BibTeX are standard-format but not all independently confirmed (e.g., Matthis 2018/2022, Sweller 1988, Harnad 1990, Brooks 1991, Zhang 2000, Star & Griesemer 1989). Cross-check against the existing `.bib` and canonical sources.
- **Biology accuracy (D8):** the *lancelet* is the headless chordate; the *lamprey* is a craniate with a head + camera eye but no jaws/true vertebrae — keep this correct if any figure/derived text is generated. "Deuterostomia" monophyly is contested — don't assert it as settled. Predator/prey→eye-placement is a tendency, not a law.
- **The D8 `.html` visual is data-driven** (a `TREE` structure + component dictionary `C` in the `<script>`). If any biology is corrected, edit those structures and the tree/matrix/ledger regenerate. It was validated to render error-free via headless jsdom.
- **CLAUDE.md is stale** on the proposal file structure (describes an older section layout/ordering quirk). Flag to JSM; don't edit it unless asked.
- **Author-lineage facts** in D10 (JSM: philosophy BA → CogSci PhD w/ Fajen in the Gibson/Warren line → Hayhoe → Dynamic Walking) come from JSM's own account; confirm phrasing with JSM/CV before anything public.
- **AI-tutoring & LLM-log-anomaly claims** (D10, D11) are from an early/mixed evidence base — the briefings hedge appropriately; keep the hedges.
- **Facility deliverable (D12) has open decisions for JSM:** buy vs. lease + Boston location + budget/phasing; **primate collaborator initials are TBD**; confirm guinea-fowl lead "D" = **M.D.** against `.env`; IRB/IACUC across the network. Don't invent these.
- **Connectors/MCP:** several bio/design MCP servers appear in the environment but are unauthenticated/irrelevant here; ignore. Web search + fetch are the research tools.

---

## 7. Tone & standing reminders

- Keep the advisor stance: propose structure, flag trade-offs, surface decisions — don't write the proposal.
- Everything you add stays in `notes/bot-slop/`; the `.bib` is the one shared artifact you're cleared to modify.
- When in doubt about scope, ask JSM. The material is rich but several load-bearing numbers and identity/citation details are his to confirm.

*— end of handoff —*
