---
tags: [concept, architecture, ontology, biology, reusable-pattern, design-lesson]
aliases: [ECS, Entity-Component-System, entity-component, bag of components]
type: concept
---

# Entity–Component–System (ECS)

The composition doctrine as data architecture: an **entity is "a bag of components."** What an entity *is* is determined by **which components are present**, not by an inheritance type-tree. Components are composable, non-hierarchical; entities can be partial (some present, some missing), so consumers must handle absence robustly. This is exactly the right shape for **heterogeneous, partially-observed multimodal data**.

## Lineage (games → robotics → defense)
- **Scott Bilas, GDC 2002 (Dungeon Siege)** — the founding public ECS talk; ~7,300 object types, 100k+ placed objects assembled from components, not a class tree.
- **Overwatch, GDC 2017** — an OOP→ECS refactor to hold a deterministic 60+ Hz sim as hero complexity grew.
- **Data-Oriented Design (Mike Acton) / Unity DOTS** — structure-of-arrays is also *cache-friendly*; composition wins on hardware, not just maintainability.
- **[[anduril-lattice|Anduril's Lattice]]** — the entity-component model descends from game-engine/robotics ECS, not the Semantic Web.

## The biology payoff
ECS is [[composition-over-inheritance]] in the flesh. An **[[functional-equivalence-optical-sensor|eye and a camera]]** share an `OpticalSensor` component without sharing ancestry; a robot link and a bone segment share a `RigidBody` component. This is why the same ontology can span [[comparative-phylogeny-and-ecs|species]] *and* reach sideways to artificial agents — and why [[shared-vs-unshared-traits|trait-overlap, not lineage]], is the useful axis.

**Related:** [[composition-over-inheritance]] · [[anduril-lattice]] · [[comparative-phylogeny-and-ecs]] · [[functional-equivalence-optical-sensor]]
