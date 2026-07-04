---
tags: [concept, architecture, ontology]
aliases: [Palantir Ontology, Foundry, Gotham, AIP]
type: concept
---

# Palantir Ontology

Palantir's central abstraction — a "digital twin of an organization," a **semantic + kinetic layer** over integrated data. The single most reusable reference for the [[the-missing-middle|missing middle]]. Platforms: **Foundry** (integration/ops), **Gotham** (intelligence analysis), **AIP** (AI layer); all unified by **the Ontology**.

**The typed primitives (the vocabulary a scientific analog would reinvent):**
- **Object types** → schema for real-world entities/events (≈ a table); **objects** (≈ rows), **properties** (≈ columns).
- **Link types** → typed relationships (≈ joins), traversable via "search-arounds."
- **Action types** → *governed transactions* that edit objects/links in one transaction — the **"kinetics"**, the verbs.
- **Functions** → server-side typed logic over objects.
- **Interfaces** → object-type polymorphism (shared shapes).

**The distinctive choice:** object + link + action + function are bundled as *one governed surface coupled to an application layer* — semantics **paired with** kinetics. Most platforms stop at the read-only semantic layer.

**Reusable design ideas:** separate **registry / instance store / query service** (the single most transferable idea); **security as a propagating data property** (markings flow along lineage — essential for human-subjects data); **materialize-and-index** for consistency + rich query.

**Why *not* RDF/OWL:** Palantir needed *verbs and governance*, closed-world determinism, and materialized speed — so it built a property-graph-flavored, write-capable system. The same split recurs inside neuroscience ([[the-ontology-question-in-science]]).

**Related:** [[architectural-paradigm-operational-semantic-layer]] · [[anduril-lattice]] · [[maven-smart-system]] · [[ontology-definition]]
