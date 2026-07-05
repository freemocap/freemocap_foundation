---
tags: [citation, architecture, trap]
citekey: liskov1994
aliases: [Liskov 1994, Liskov Substitution Principle, behavioral subtyping]
type: citation
verification: carried
---
# Liskov & Wing (1994) — A Behavioral Notion of Subtyping
**Citation:** Liskov, B. H., & Wing, J. M. (1994). A Behavioral Notion of Subtyping. *ACM TOPLAS* 16(6), 1811–1841. `@liskov1994` · doi:10.1145/197320.197383

**What it is:** The formal statement of the **Liskov Substitution Principle**: a subtype must be substitutable for its base type *behaviorally*. The famous counterexample is square-inherits-rectangle, which breaks because `setWidth` on a square must also change its height.

**Why we cite it:** The precise reason **"the cleaner the is-a story looks, the more dangerous it is to encode as inheritance"** — behavior doesn't respect the taxonomy. This is the inheritance trap ([[composition-over-inheritance]], [[the-two-traps]]) stated rigorously, and it maps to biology: the phylogenetic tree is a good narrative and a bad data model.

**Related:** [[composition-over-inheritance]] · [[the-two-traps]] · [[shared-vs-unshared-traits]]
