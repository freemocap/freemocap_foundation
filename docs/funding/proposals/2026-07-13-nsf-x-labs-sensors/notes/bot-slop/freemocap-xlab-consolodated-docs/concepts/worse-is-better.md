---
tags: [concept, architecture, funding-structure, design-lesson, precedent, trap, software-aphorism]
aliases: [Worse is Better, build to spec, rough consensus and running code]
type: concept
---

# Worse is Better (build-to-spec, standardize later)

Richard Gabriel's essay (1989/1991) contrasts the **MIT "do the right thing"** philosophy (interface correctness/completeness first, even if implementation is complex) with the **New Jersey "worse is better"** philosophy (implementation simplicity first; ship the small correct core, let it spread, generalize later). Thesis: the simple-core design **ships first, spreads, and wins** while the "right thing" is still being specified. Unix and C are the examples.

This is the **direct philosophical license** for the [[build-to-spec-vs-shared-protocols|build-to-spec]] move: build the instrument's timestamp/sync core to be *exactly and only what a multi-camera scientific instrument needs*, ship it, and **don't gate it on conforming to a general standard** ([[lab-streaming-layer|LSL]], OWL). Add interoperability later as adapters, driven by real demand.

Sibling precedents in the same family:
- **[[narrow-waist|The Internet hourglass]]** — a thin spanning layer (IP) beats a fat standard.
- **"Rough consensus and running code"** — IETF standards emerged *after* working implementations. NSF's own [[obo-foundry|Internet lineage (NSFNET)]] is the flagship the solicitation itself names.
- **Postel's robustness principle** — strict core (conservative), liberal adapters at the boundary.

> [!note] Proposal framing
> Present the timestamp system as the instrument's **metrological core** (the thing that makes cross-modality measurements commensurable), not as "middleware." Then build-to-spec reads as "we engineered the instrument's measurement standard to be exact."

**Related:** [[narrow-waist]] · [[build-to-spec-vs-shared-protocols]] · [[obo-foundry]] · [[the-two-traps]]
