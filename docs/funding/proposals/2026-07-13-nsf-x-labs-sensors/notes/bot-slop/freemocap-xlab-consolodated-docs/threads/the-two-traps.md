---
tags: [thread, architecture, trap, design-lesson, software-aphorism]
aliases: [The Two Traps, inheritance trap, standard trap]
type: thread
---

# The Two Traps (a synthesis)

Both traps are the **same underlying error: accepting a general structure that looks authoritative, in exchange for surrendering control of your core model.** [[composition-over-inheritance|Composition-over-inheritance]] and [[build-to-spec-vs-shared-protocols|build-to-spec-over-shared-protocol]] are the *same principle at two different altitudes.*

| | **Trap 1 — Inheritance** | **Trap 2 — Adopt the standard** |
|---|---|---|
| Seductive because… | there's an obvious ancestral tree (phylogeny) | there's an obvious mature standard (OWL, [[lab-streaming-layer|LSL]]) |
| The tempting move | model it as **inheritance** | build your core **on top of the standard** |
| What you actually inherit | the whole fragile ancestor chain + implicit conflicts | the standard's data model, clock/transport assumptions, philosophy, failure modes |
| Why it bites | real members violate category defaults ([[shared-vs-unshared-traits|cavefish, ferret-vs-mouse]]) | your instrument's real needs violate the standard's general assumptions |
| The mature move | **composition + explicit override layer** ([[entity-component-system|ECS]]) | **build-to-spec core + adapters**, standardize later ([[worse-is-better]], [[narrow-waist]]) |
| Precedent | ECS, MTG layers, [[obo-foundry|OBO]]'s own composition | [[palantir-ontology|Palantir vs OWL]]; Unix/IP narrow waist |

## Why this is dogfooding
The vault itself is built this way: notes are placed in a shallow folder *tree* (type/topic) but their real structure is **composable [[_tag-legend|trait tags]]** attached across the hierarchy — `#trap`, `#precedent`, `#design-lesson`. We tag the conceptual space the way the instrument tags its measurements: **composition over inheritance, all the way down.**

**Related:** [[composition-over-inheritance]] · [[build-to-spec-vs-shared-protocols]] · [[entity-component-system]] · [[worse-is-better]] · [[narrow-waist]]
