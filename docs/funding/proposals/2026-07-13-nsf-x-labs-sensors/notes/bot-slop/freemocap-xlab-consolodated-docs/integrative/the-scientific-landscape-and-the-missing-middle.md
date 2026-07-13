---
tags: [integrative, landscape, competition, ontology, reframe]
aliases: [The Scientific Landscape, missing middle landscape, the field of incompatible pieces]
type: integrative
---

# The Scientific Landscape & the Missing Middle

The scientific field the instrument must enter is a **field of incompatible pieces**. This is the Technology-Landscape argument: every modality is excellent *in isolation*; nothing unifies them.

## The precedent that validates *and* exposes the gap
**[[mobi|Mobile Brain/Body Imaging (MoBI)]]** (Makeig, ~2009) is the named ~15-year peer-reviewed lineage for synchronous brain+body+environment capture. It **validates** the concept (not crankish) and **exposes the gap**: MoBI is a *methodology, not a platform* — heroic labs assemble it by hand, per study, from incompatible parts. **The absence of the instrument is the bottleneck.**

## The layered stack and the missing middle `#reframe`
The decisive structural insight: **behavioral science independently evolved the same layers as [[architectural-paradigm-operational-semantic-layer|Palantir/Anduril]] — except the middle is missing.** (Full table: [[the-missing-middle]].)
- **Transport / sync — solved as transport:** [[lab-streaming-layer|LSL]] gets samples onto a shared clock but says nothing about what they *mean*.
- **Archive — solved as file formats:** [[bids-and-nwb|BIDS/NWB]] are archival, fragmented, incompletely interoperable — "every department has its own schema, and they meet only in a shared folder."
- **Physics / modeling — dominant but hated:** [[opensim|OpenSim]] has massive penetration and a hostile workflow; the swarm of tools that exist only to wrap it is the tell.
- **The missing middle:** no scientific equivalent of the [[palantir-ontology|Ontology]] / [[anduril-lattice|entity-component model]] — no shared typed representation where a joint, a gaze vector, a force reading, a neural event, and an environmental object are the *same first-class, linked, calibrated entity*. **That gap is the instrument.**

## The ontology question — formal lost to pragmatic (twice)
[[the-ontology-question-in-science|Neuroscience split into the same two ontology camps as the enterprise]] — formal OWL/BFO efforts (CogPO, Cognitive Atlas, NIF) *respected but operationally stalled*, vs. pragmatic annotation ([[hed|HED]], BIDS) *adopted but shallow*. Formal lost to pragmatic wherever adoption mattered — just as RDF/OWL lost to property graphs in the enterprise. But **every one of these is an annotation layer for events**; none is an operational model for the continuous calibrated interaction stream. The vision is **the operational semantic layer HED and BIDS presuppose but can never become.**

## The two enabling shifts — the wind at the back
[[naturalistic-neuroscience|Two shifts make now the moment]]: (1) **[[markerless-pose-estimation|markerless capture crossed the threshold]]** (the supply-side enabler — cheap cameras feed the capture layer), and (2) **"naturalistic / real-world" neuroscience is the field's stated frontier**.

## The competitive terrain — the betweenness argument
[[competitive-terrain|Serious players are building pieces]], each structurally confined by its incentives: the **institutes** (Allen/Bonsai) build closed animal pipelines; the **archives** (DANDI/OpenNeuro) store finished single-modality datasets; the **companies** (Theia/Move.ai — all *kinematics only*) sell single-modality capture into verticals; the **standards bodies** retrofit formats. The **open, human, naturalistic, multimodal, calibrated, semantically-unified, operational capture instrument falls between every chair.** That betweenness is the defensibility — and the crowded [[markerless-pose-estimation|capture market]] becomes *evidence for* the integration-as-instrument thesis, not a threat.

## The optional quantitative landscape figure `#say`
Include it. **X-axis = ecological validity** (constrained rig → unconstrained natural env). **Y-axis = modality integration / semantic unification** (single stream → fully fused, calibrated, cross-scale). Existing tools hug the axes / low-left; **the target region is the empty upper-right.** Annotate a 3rd dimension (species×scale generality) via marker size/color. `#verify` (confirm axis choice — see [[proposal-section-scaffold]]).

**Related:** [[the-missing-middle]] · [[mobi]] · [[lab-streaming-layer]] · [[bids-and-nwb]] · [[opensim]] · [[hed]] · [[the-ontology-question-in-science]] · [[competitive-terrain]] · [[naturalistic-neuroscience]]
