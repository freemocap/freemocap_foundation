---
tags: [citation, architecture, ontology, design-lesson]
citekey: touretzky1986
aliases: [Touretzky 1986, The Mathematics of Inheritance Systems, inferential distance]
type: citation
verification: carried
---
# Touretzky (1986) — The Mathematics of Inheritance Systems
**Citation:** Touretzky, D. S. (1986). *The Mathematics of Inheritance Systems*. Morgan Kaufmann/Pitman. `@touretzky1986`

**What it is:** Formalizes inheritance **networks** where properties flow down an is-a hierarchy but can be **overridden by more specific nodes** — the **inferential distance / specificity ordering** principle (platypus-lays-eggs beats mammals-bear-live-young). Also shows the general inheritance problem is **NP-hard** even for unambiguous acyclic networks — which is *why* practical systems constrain overrides with fixed ordered layers (cf. MTG's Rule 613 in [[composition-over-inheritance]]).

**Why we cite it:** The single closest formal match to the entity-trait-override architecture. Its NP-hardness result justifies the design discipline of a **fixed, ordered override pipeline** rather than ad-hoc conflict resolution.

**Related:** [[composition-over-inheritance]] · [[entity-component-system]] · [[minsky1974]] · [[reiter1980]]
