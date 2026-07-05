---
tags: [citation, architecture, design-lesson]
citekey: postel1981
aliases: [Postel 1981, RFC 793, robustness principle]
type: citation
verification: carried
---
# Postel (1981) — RFC 793 (TCP) / the Robustness Principle
**Citation:** Postel, J. (1981). *Transmission Control Protocol*. IETF RFC 793. `@postel1981`

**What it is:** The TCP spec, source of **Postel's robustness principle**: "be conservative in what you send, be liberal in what you accept."

**Why we cite it:** Read architecturally: the **core** should be strict and exactly-specified (conservative); **compatibility with the outside world** lives in liberal adapters at the boundary — literally the [[gof1994|Adapter pattern]]. "Build the timestamps exactly, add an [[lab-streaming-layer|LSL]] exporter later" is textbook conservative-core + liberal-adapter ([[build-to-spec-vs-shared-protocols]]).

**Related:** [[build-to-spec-vs-shared-protocols]] · [[gof1994]] · [[the-two-traps]]
