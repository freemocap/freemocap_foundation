---
tags: [thread, architecture, ontology, biology, design-lesson, reusable-pattern, trap, software-aphorism]
aliases: [Composition over Inheritance, entity-trait-override, the inheritance trap]
type: thread
---

# Composition over Inheritance (entities · traits · overrides)

Across four unrelated fields — **AI knowledge representation, software engineering, game design, and industrial data platforms** — the same architecture keeps getting reinvented to manage runaway complexity:

1. **Entities** — the things (a creature, a soldier, a captured behavioral episode).
2. **Composable traits / components** — small independent units *attached to* entities, not *inherited by* them.
3. **Relations** — explicit typed links (`part_of`, `is_a`, `controls`).
4. **An override / conflict-resolution layer** — an explicit ordered rule system for when traits disagree, letting specific cases *defeat* general defaults.

> **The recurring lesson `#trap`:** inheritance *feels* right — especially for things with an obvious ancestral tree, like biology — but it **does not scale**, and mature systems replace it with **composition + an explicit override layer.**

## Who discovered this (the isomorphism)

| | Entities | Composable units | Override / conflict layer |
|---|---|---|---|
| **KR / AI** | concepts | slots/properties | Minsky frames; default logic (Tweety/penguin); Touretzky's **inferential distance**; defeasible OWL |
| **Software** | objects | components/traits/mixins | LSP; explicit precedence over inheritance; *"favor composition over inheritance"* (GoF) |
| **Games** | game objects | [[entity-component-system|ECS]] components; MTG card types | **MTG's 7-layer + timestamp + dependency** system (Rule 613) — a production-grade conflict resolver |
| **Industry** | [[palantir-ontology|Foundry]]/[[anduril-lattice|Lattice]] objects | properties/components | action layer, permissions, resolution rules |
| **Biology** | organisms, taxa | trait/phenotype terms | **secondary loss = defeated default** (cavefish eyes) |

Named software failure modes to cite: the **fragile base class problem**, the **Liskov / square-rectangle** problem ("inheritance should mean *is substitutable for*, not *is a kind of*"), and Armstrong's **gorilla/banana** ("you wanted a banana, you got a gorilla holding the banana and the entire jungle").

## Biology is the *trap*, not the model `#trap`
Biology is where inheritance looks *most* obviously correct and where the naïve version fails hardest. Cladistics rejects essentialist trait-checklists for shared ancestry; *Astyanax* cavefish **begin** to build eyes then arrest/degenerate them — the default expressed, then **overridden** — convergently, in independent populations. And biology's own largest ontology ([[obo-foundry|OBO/GO]]) uses **composition** of orthogonal terms, not one inheritance tree.

> **The moral:** when there's an obvious inheritance structure, that's the strongest signal to be *careful*, not license to encode it. The tree is a good **narrative** and a bad **data model**, because real members constantly violate their category's defaults — which is the whole scientific point of *measuring* rather than *assuming*. This is exactly why [[shared-vs-unshared-traits|trait-overlap beats lineage]] and why the ontology can reach sideways to [[functional-equivalence-optical-sensor|artificial agents]].

## Proposal safety
On its face this is a *data-model* argument. Keep it anchored to **measurement**: the entity-trait-override idea is the instrument's **measurement model** — analogous to the coordinate frame and unit system of any scientific instrument — "how the instrument makes its measurements commensurable," not middleware. `#allude` See [[the-software-exclusion]], [[say-vs-allude]].

**Related:** [[entity-component-system]] · [[hydration]] · [[build-to-spec-vs-shared-protocols]] · [[the-two-traps]] · [[comparative-phylogeny-and-ecs]]
