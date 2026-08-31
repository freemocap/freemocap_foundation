---
tags: [thread, instrument, metrology, ontology, design-lesson]
aliases: [QC Copilot, observability assistant, real-time debugging, bumped camera]
type: thread
---

# The Ontology-Grounded QC / Observability Copilot

Turn [[freemocap|FreeMoCap's]] heavy logging into a **real-time, semantic, AI-driven quality-control and debugging layer** by feeding ontology-consistent logs + live sensor streams through an LLM.

## The problem
High observability (itself part of the [[metrology-and-traceability|metrology discipline]] — you can't claim traceability you didn't record) emits **more log/trace volume than any human can watch.** The most damaging failures are the **high-level, cross-signal** ones that don't show up as a single red log line:
- someone **bumped a camera** (extrinsics silently shift → every downstream 3D estimate is wrong),
- a **calibration drifted**, a **stream desynchronized**, lighting/occlusion collapsed keypoint confidence, a sensor out of calibrated range.

Invisible to conventional observability because no single component *errored* — the system is locally "fine" while the *measurement* is globally corrupt.

## The idea `#design-lesson`
If logs **and** sensor data are emitted **consistent with the shared [[sensor-grounded-ontology|ontology]]**, an LLM can flag problems **semantically**:
> not *"log rate on ch.3 dropped 12%"* but *"the left camera's extrinsics look inconsistent with the others — did it get bumped?"*

Three modes: **setup assistant** (catches misconfiguration before a session), **real-time QC monitor** (raises data-quality-loss warnings *before* the error propagates into the archive), **post-hoc triage** (explains what went wrong, in ontology terms, and whether it's salvageable).

## Why credible now — the synthesis is the novelty
**SPC** (Shewhart/CUSUM/EWMA control charts detect sensor drift in ~⅓ the deviation of conventional checks — the metrology-native half) **+ AIOps / LLM log-anomaly detection** (real-time sliding-window setups already meet live latency) **+ a sensor-grounded ontology** (the semantic anchor that cuts hallucination). None of the three alone does this; **the ontology is the piece that fuses them** into a monitor that reasons about the *measurement*, not just the machine. `#verify` (evidence early — treat as advisor, not autonomous gatekeeper).

## Why it's [[the-software-exclusion|instrumentation]], not middleware
Real-time QC **is part of the measurement system** — every serious instrument has it (a mass spec's lock-mass monitor, a telescope's wavefront sensor). Framing the copilot as the instrument's **QC / self-diagnosis subsystem** keeps it on the instrumentation side and strengthens *data trust*, *usability* (the copilot is the "technician who notices a bumped camera" that a [[tiered-dissemination-and-communal-science|classroom tier]] lacks), and *scale* (automated QC is the only way a distributed network stays commensurable). `#say`

**Related:** [[conceptual-cleanliness-four-audiences]] · [[metrology-and-traceability]] · [[sensor-grounded-ontology]] · [[tiered-dissemination-and-communal-science]]
