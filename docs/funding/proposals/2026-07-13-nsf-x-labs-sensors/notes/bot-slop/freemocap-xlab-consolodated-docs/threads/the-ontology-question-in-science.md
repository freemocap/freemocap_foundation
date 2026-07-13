---
tags: [thread, ontology, landscape, architecture, reframe, precedent]
aliases: [Ontology Question in Science, formal vs pragmatic, HED question]
type: thread
---

# The Ontology Question in Science

Neuroscience has split into the **same two ontology camps** the enterprise world did — and the **same pragmatic-over-formal winner** emerged. This is both a validation of the [[palantir-ontology|Palantir architectural bet]] and a guide to what to build. `#reframe`

## The formal-ontology camp (respected, operationally stalled)
OWL-based, Basic Formal Ontology–aligned efforts descended from the Gene Ontology lineage:
- **CogPO** (Cognitive Paradigm Ontology; Turner & Laird; BFO-compliant `.owl` files) — describes experimental conditions.
- **Cognitive Atlas** (Poldrack) — cognitive constructs and the tasks that measure them.
- **NIF/NIFSTD**, **NEMO**.

These describe *experiments and cognitive constructs* — not raw multimodal data. They never achieved operational penetration; they are meta-analysis/annotation aids for specialists.

## The pragmatic-annotation camp (adopted, operational, but shallow)
Where the field actually lives — same pragmatic choice [[palantir-ontology|Palantir]] made over formal RDF/OWL. The flagship is **[[hed|HED]]**, alongside [[bids-and-nwb|BIDS/NWB]] and [[lab-streaming-layer|LSL]].

> **The parallel is exact `#precedent`:** formal Semantic-Web-style ontologies **lost** to pragmatic annotation/format standards wherever adoption and operation mattered — just as RDF/OWL lost to property graphs in the enterprise. Direct ammunition for justifying a pragmatic [[entity-component-system|property-graph / entity-component]] design over formal OWL.

## Why none of these is what the vision proposes
Every one — formal or pragmatic — is an **annotation / metadata layer for experiments and events.** None is an **operational data model for the continuous, calibrated, multimodal interaction stream itself.** [[hed|HED]] tags say "*a target appeared at t=4.2s*"; nothing says "*this skeleton joint, this gaze vector, this force reading, and this neural event are the same first-class, linked, calibrated entity.*"

> **The strongest positioning:** the vision is the **operational semantic layer that [[hed|HED]] and [[bids-and-nwb|BIDS]] presuppose but, as tagging/format standards, can never become.** This is [[the-missing-middle]], stated for the ontology reviewer. Use HED's own [[hed|admission]] that current frameworks can't handle real-world complexity.

**Related:** [[the-missing-middle]] · [[hed]] · [[bids-and-nwb]] · [[palantir-ontology]] · [[composition-over-inheritance]] · [[the-scientific-landscape-and-the-missing-middle]]
