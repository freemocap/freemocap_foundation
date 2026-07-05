---
tags: [concept, architecture, ontology, reusable-pattern, precedent]
aliases: [Anduril Lattice, Lattice, entity-component model, Lattice Mesh]
type: concept
---

# Anduril Lattice

The same *fuse-into-a-typed-model-then-act* philosophy as [[palantir-ontology|Palantir]], pushed into **hard real time and machine autonomy**. Read as three blocks: **multi-source ingestion → sensemaking (detection, tracking, correlation) → orchestration (task planning, order routing)**. It ingests thousands of sensor/effector streams into a real-time common operational picture.

## The [[entity-component-system|entity-component]] model (the key distinctive)
An **entity = a bag of components**; **no inheritance hierarchy** — presence of components defines the entity. Required components: GUID, liveness flag, expiry, provenance. Three templates via an `ontology` component: **Asset** (controllable, taskable), **Track** (observed, not controlled), **Geo-entity** (zones). This is the pattern most directly applicable to heterogeneous *scientific* sensor data.

## Open, meshed, resilient
- Publishes **open data models as protobuf schemas** on a public registry; gRPC internally, REST for dashboards; SDKs in Go/Java/TS/Python. Third parties integrate by conforming to the entity/task model (a Modular Open Systems Approach).
- **Lattice Mesh** — decentralized; each node shares tracks and relays without a single vulnerable hub (designed for **DDIL**: denied, disconnected, intermittent, limited).

Anduril's own docs concede **"ontology alignment remains a work in progress"** — i.e. the shared vocabulary is the hard part, not the plumbing. A useful, honest note for our own [[the-ontology-question-in-science|ontology question]].

**The scientific mapping:** materialize-and-index ([[palantir-ontology|Palantir]]) vs. edge-fuse-and-mesh (Lattice) = the same **consistency ↔ latency ↔ resilience** triangle as an offline richly-queryable scientific record vs. real-time closed-loop experimentation. A mature platform likely needs both. On *why* we borrow this architecture at all, see [[science-military-coevolution]].

**Related:** [[palantir-ontology]] · [[Science - Military tech alignment]] · [[entity-component-system]] · [[architectural-paradigm-operational-semantic-layer]]
