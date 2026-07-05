---
tags: [citation, landscape, architecture, trap]
citekey: kothe2024
aliases: [Kothe 2024, Lab Streaming Layer, LSL paper]
type: citation
verification: carried
---
# Kothe et al. (2024) — The Lab Streaming Layer for Synchronized Multimodal Recording
**Citation:** Kothe, C., Shirazi, S. Y., Stenner, T., et al. (2024). The Lab Streaming Layer for Synchronized Multimodal Recording. *Imaging Neuroscience*. `@kothe2024` · doi:10.1101/2024.02.13.580071

**What it is:** The formal reference for **LSL** — per-sample timestamps, NTP-derived clock sync over LAN, sub-ms sync on commodity hardware, plus the XDF format. Delivers genuinely; ubiquitous in EEG/BCI labs.

**Why we cite it:** [[lab-streaming-layer|LSL]] is the [[the-missing-middle|transport layer, solved as transport]] — and precisely the standard NOT to inherit into the core ([[build-to-spec-vs-shared-protocols]], [[the-two-traps]]). The paper's own account of XDF encoding "ugly real events" and constant per-stream delay modeling is our evidence that it's a general recorder's assumptions, overhead for a tighter instrument.

**Related:** [[lab-streaming-layer]] · [[the-missing-middle]] · [[build-to-spec-vs-shared-protocols]]
