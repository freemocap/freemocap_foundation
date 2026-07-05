---
tags: [concept, architecture, funding-structure, design-lesson, precedent]
aliases: [Narrow Waist, Thin Waist, Hourglass Model]
type: concept
---

# Narrow Waist (the hourglass model)

The Internet scaled because it put a **thin, minimal spanning layer (IP)** at the waist: many technologies below, many applications above, one small dumb interface in the middle. Constraining the waist to be *simple and general* is what made both layers independently evolvable — Micah Beck's **"Deployment Scalability Trade-off"**: simplicity/generality at the waist beats rich featureful designs on real-world adoption.

**Design guidance:** *if there's going to be a shared interface, make it a thin waist you control, not a fat standard you import.* A minimal, exact capture/timestamp representation **is** a narrow waist; [[lab-streaming-layer|LSL/XDF]] is a fat waist that ossifies the core.

## Why it's on-message, not a stretch
The X-Labs solicitation itself lists **the Internet** among exemplar platform technologies (§7.0), and NSF *stewarded the Internet's backbone (NSFNET, 1986–1995)* precisely because it was foundational precompetitive infrastructure the market wasn't yet building — the exact gap-filling role X-Labs describes. So the narrow-waist story uses the program's **own chosen reference class**.

**Related:** [[worse-is-better]] · [[build-to-spec-vs-shared-protocols]] · [[obo-foundry]] · [[why-this-cant-be-academic-science]]
