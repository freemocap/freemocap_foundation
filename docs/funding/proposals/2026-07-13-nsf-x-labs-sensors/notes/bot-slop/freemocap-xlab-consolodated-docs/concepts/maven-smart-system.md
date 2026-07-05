---
tags: [concept, architecture, precedent, proof-at-scale, framing-hazard]
aliases: [Maven Smart System, MSS, Project Maven]
type: concept
---

# Maven Smart System (MSS)

[[palantir-ontology|Palantir's]] Ontology **instantiated for warfighting** — and the single strongest piece of evidence that the operational-semantic-layer pattern **works at scale and is winning.** It descends from Project Maven (2017 DoD computer-vision effort; Google withdrew 2018 after protests; Palantir took over and grew it from imagery analysis into a full C2 platform).

**Scale (the proof-at-scale numbers):** by mid-2025, **20,000+ users** across 35+ military services, a **$1.3B contract ceiling**, **NATO adoption**, fusing **170+ heterogeneous source types** (satellite imagery, SIGINT, ELINT, drone feeds, OSINT, logistics, weather) into one queryable operational surface — used by both human operators *and* LLMs through the same governed typed tools.

## Why it matters for the proposal
It validates every reusable pattern (typed canonical model, composition over inheritance, separated registry/store/query, propagating security, materialize-and-index) at the hardest possible scale.

> If the pattern can fuse satellite imagery, SIGINT, drone feeds, and logistics into a single operational surface for warfighting, the argument that it can fuse **kinematics, gaze, neural, and force** into a single *scientific* surface is not speculation — it is an **architectural transplant from a proven, winning system.**

> [!warning] Framing hazard
> The MSS analogy is a strength for *architecture* and a liability if it makes the work *sound* like enterprise/defense software. Keep it as engineering credibility; keep the surface framing on measurement. See [[say-vs-allude]] and [[the-software-exclusion]].

**Related:** [[palantir-ontology]] · [[anduril-lattice]] · [[architectural-paradigm-operational-semantic-layer]]
