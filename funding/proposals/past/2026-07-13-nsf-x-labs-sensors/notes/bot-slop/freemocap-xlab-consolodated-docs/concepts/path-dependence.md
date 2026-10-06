---
tags: [concept, funding-structure, trap, anti-pattern, software-aphorism]
aliases: [Path Dependence, lock-in, technical debt, step-zero, QWERTY]
type: concept
---

# Path Dependence (step-zero lock-in) and the refactor escape

JSM's sharpest claim — *the architecture decisions you make at the start, when you understand the constraints least, define the maximum complexity the project can ever handle* — is **path dependence / technological lock-in**, formalized by Paul David (QWERTY, 1985) and W. Brian Arthur (increasing returns, 1989): small early events have disproportionate, non-ergodic long-term effects, and switching costs lock systems into **suboptimal equilibria that persist** even when better options exist. QWERTY is the canonical case.

Two companion laws make the **anti-pattern** mechanical:
- **Lehman's laws** — real ("E-type") software shows *increasing complexity* and *declining quality* **unless work is done to reduce them**. "Keep building Rome on top of Rome."
- **Cunningham's technical debt** — shortcuts must be "paid back promptly with a rewrite," or "interest payments grind the project to a halt." Never paid → **Foote & Yoder's Big Ball of Mud.**

## The escape academia forbids
The only escape is the **blank-page refactor** — endorsed by the field's own foundational text (**Brooks, *Mythical Man-Month*: "Plan to throw one away; you will, anyhow"**). FreeMoCap's 3–4 full refactors are exactly this. `#design-lesson`

**Resolving Spolsky's "never rewrite":** Spolsky's warning is about discarding domain knowledge in a *shipping commercial product under competitive time pressure* — "a 2–3 year gift to competitors." **Precompetitive scientific infrastructure has no market clock.** Remove the clock (what an autonomous X-Lab does) and the healthy-but-unpublishable refactor becomes possible. *The objection becomes the justification.* `#reframe`

**Related:** [[why-this-cant-be-academic-science]] · [[conways-law]] · [[research-software-sustainability]] · [[worse-is-better]]
