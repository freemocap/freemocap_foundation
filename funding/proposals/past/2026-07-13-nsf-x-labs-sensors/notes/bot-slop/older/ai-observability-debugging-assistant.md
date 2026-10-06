# The Ontology-Grounded Observability & Debugging Assistant

*Advisory synthesis (bot slop by definition). For JSM. Eleventh in the series; pulls out a thread flagged in the education/AI memo. Builds on [D4] sensor-grounding, [D7] metrology/observability, [D9] tiered dissemination, [D10] AI-navigability. The idea: turn FreeMoCap's heavy logging into a real-time, semantic, AI-driven quality-control and debugging layer by feeding ontology-consistent logs + live sensor streams through an LLM. Cited inline; BibTeX at bottom.*

---

## 1. The problem: high observability produces more than a human can watch

FreeMoCap's design already leans hard into **logging and high observability everywhere** — which is not incidental, it's part of the metrology discipline [D7] (you can't claim traceability you didn't record). But full observability has a cost: it emits **far more log/metric/trace volume than any human can monitor in real time**. The most damaging failures in a multi-camera, multi-modal capture are exactly the *high-level, cross-signal* ones that don't show up as a single red log line:

- someone **bumped a camera** (extrinsics silently shifted → every downstream 3D estimate is now wrong),
- a **calibration drifted** over a session,
- a **stream desynchronized** (clock skew) or dropped frames,
- **lighting/occlusion** quietly collapsed keypoint confidence,
- a sensor is **out of its calibrated range**.

These are invisible to conventional observability (logs, metrics, traces) because no single component *errored* — the system is "fine" locally while the *measurement* is globally corrupt. Catching them requires reasoning across signals in terms of what they *mean*.

## 2. The idea: ontology-consistent logs + live streams → an LLM QC/debug copilot

If the logs **and** the incoming sensor data are emitted in a form **consistent with the shared sensor-grounded ontology** [D4], an LLM assistant can read them live and flag problems **semantically** — in terms of ontological objects and their uncertainty — rather than as raw text:

> not *"log rate on ch.3 dropped 12%"* but *"the left camera's extrinsics look inconsistent with the others — did it get bumped?"*
> not *"variance up"* but *"gaze-vector uncertainty is spiking; pupil tracking may have lost the eye."*

Three modes:

1. **Setup assistant** — guides calibration, catches misconfiguration and implausible parameters before a session starts (lowers the expertise barrier — usability [D4]).
2. **Real-time QC monitor** — watches the live measurement chain and raises **data-quality-loss warnings before the error propagates** downstream into the recorded dataset.
3. **Post-hoc triage** — explains, in ontology terms, what went wrong in a flagged recording and whether it's salvageable.

## 3. Why this is credible now — the landscape

- **AIOps + LLM log anomaly detection** is an active, maturing field: LLMs (often with RAG for context) are used to detect anomalies in large operational log streams for real-time reliability engineering, reducing mean-time-to-detect/resolve ([AIOps-for-log-anomaly-detection survey](https://www.sciencedirect.com/science/article/pii/S2667305325001346); [real-world LLM log anomaly detection](https://www.sciencedirect.com/science/article/pii/S2772941926000384)). Real-time sliding-window setups (e.g. ~15 s) already meet live-monitoring latency.
- **Statistical Process Control (SPC)** is the classical, metrology-native half: Shewhart/CUSUM/EWMA **control charts distinguish common-cause noise from special-cause events** and detect **sensor drift in ~⅓ the deviation** of conventional checks — often flagging a drifting instrument *days before* it goes out of calibration ([SPC drift detection](https://www.sciencedirect.com/science/article/pii/S1474667015308739); [SPC for data/OOD drift](https://arxiv.org/pdf/2402.08088)). Real-time multivariate anomaly detection on sensor streams is established practice (e.g., water-quality monitoring, [ref](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10610887/)).
- **Ontology grounding is what makes it semantic and reliable.** Grounding an LLM in a structured ontology/knowledge graph sharply cuts hallucination and raises fact-recall [D10] — so the assistant's alerts are anchored to real ontological objects and their uncertainty budgets [D7], not free-associated.

**The synthesis is the novelty:** SPC (metrology QC) + AIOps/LLM (log reasoning) + a **sensor-grounded ontology** (semantic anchor) = a real-time monitor that reasons about the *measurement*, not just the machine. None of the three alone does this; the ontology is the piece that fuses them.

## 4. Why it's *instrumentation*, not middleware (proposal framing)

Real-time quality control **is part of the measurement system** — every serious instrument has it (a mass spectrometer's tuning/lock-mass monitor, a telescope's guiding/wavefront sensor, an LC's system-suitability checks). Framing the assistant as the instrument's **QC and self-diagnosis subsystem** keeps it squarely on the instrumentation side of the Topic-2 exclusion [D5], and it strengthens three things reviewers care about:

- **Data quality / trust** — errors caught before they contaminate the archive; the traceability story [D7] gets teeth.
- **Usability / accessibility** — the copilot lowers the expertise needed to *run the instrument correctly*, which is what lets the low-resource and classroom tiers actually produce trustworthy captures [D4][D9]. A well-resourced lab has a technician who notices a bumped camera; a classroom doesn't — the assistant is that technician.
- **Scale** — real-time automated QC is the only way a distributed, many-instrument network keeps its data commensurable without a human expert at every node [D9].

## 5. Caveats

- LLM monitors can **false-alarm or miss**; treat the assistant as an **advisor that surfaces candidates**, with SPC thresholds and human confirmation for anything consequential — never an autonomous gatekeeper of data validity.
- The semantic quality depends entirely on **logs actually being emitted ontology-consistently** — this is a design constraint on the instrument software, not a bolt-on.
- Ground-truth thresholds (what *is* "extrinsics look wrong"?) need calibration data to set; this is itself a metrology task [D7].
- Keep scope honest: this is a QC/debug **aid**, not a claim that the system self-validates.

## 6. Deploying in the 8-page proposal (say vs allude)

- **Say (compactly, as an instrument feature):** the instrument includes an ontology-grounded, real-time QC/self-diagnosis assistant that flags measurement-integrity problems (calibration drift, bumped camera, desync) before they propagate — enabling trustworthy capture even at low-resource/classroom nodes.
- **Allude:** the AIOps/SPC lineage in a clause; don't expound.
- **Link it to** the metrology milestones [D7] (QC is how you *maintain* traceability in the field) and the tiered-dissemination accessibility case [D9].

---

```bibtex
@article{aiops_llm_survey2025, title={AIOps for log anomaly detection in the era of LLMs: A systematic literature review}, journal={Journal of Systems and Software / ScienceDirect}, year={2025}, howpublished={\url{https://www.sciencedirect.com/science/article/pii/S2667305325001346}}}
@article{llm_log_realworld2026, title={Log anomaly detection in AIOps: A real-world implementation using Large Language Models}, journal={ScienceDirect}, year={2026}, howpublished={\url{https://www.sciencedirect.com/science/article/pii/S2772941926000384}}}
@article{spc_drift, title={Detection of signal drifts by different control charts}, journal={IFAC-PapersOnLine/ScienceDirect}, howpublished={\url{https://www.sciencedirect.com/science/article/pii/S1474667015308739}}, note={SPC control charts detect sensor drift well before out-of-calibration}}
@article{spc_ood2024, title={Out-of-Distribution Detection and Data Drift Monitoring using Statistical Process Control}, year={2024}, howpublished={\url{https://arxiv.org/pdf/2402.08088}}}
@article{sensor_rt_anomaly, title={Real-Time Anomaly Detection for Water Quality Sensor Monitoring (multivariate deep learning)}, howpublished={\url{https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10610887/}}}
@misc{ibm_aiops_observability, title={What is observability in AIOps?}, author={{IBM}}, howpublished={\url{https://www.ibm.com/think/topics/aiops-observability}}}
```
