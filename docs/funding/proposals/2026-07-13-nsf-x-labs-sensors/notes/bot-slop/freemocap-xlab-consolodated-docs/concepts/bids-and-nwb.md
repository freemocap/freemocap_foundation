---
tags: [concept, landscape, dissemination, precedent]
aliases: [BIDS, NWB, Neurodata Without Borders, Brain Imaging Data Structure]
type: concept
---

# BIDS & NWB (the archive layer)

The scientific **archive layer — solved as file formats.**
- **BIDS** (Brain Imaging Data Structure) began as an MRI convention, extended modality by modality — EEG, MEG, PET, iEEG, fNIRS, motion (motion-BIDS), a 2026 eye-tracking extension (BEP20).
- **NWB** (Neurodata Without Borders) is the neurophysiology analog.

Three properties matter, and all three point at [[the-missing-middle]]:
1. **Archival** — built for sharing *finished* datasets, not live operation.
2. **Fragmented** — each modality bolted on by a separate working group over a decade.
3. **Incompletely interoperable** — BIDS lists NWB as only "unofficially-supported."

This is the scientific equivalent of the pre-integration enterprise: every department has its own schema, and they meet only in a shared folder.

## Two faces
- `#precedent` For [[tiered-dissemination-and-communal-science|dissemination]], BIDS/NWB are the **strongest structural precedent** — a community file/metadata standard that made heterogeneous data interoperable, surfaced through federated archives (OpenNeuro, DANDI) under FAIR principles. Copy the governance model.
- `#reframe` But as *annotation/format standards* they **presuppose** an operational semantic layer they can never become. Don't pitch another BIDS; pitch the middle they're missing. See [[the-ontology-question-in-science]].

**Related:** [[the-missing-middle]] · [[the-ontology-question-in-science]] · [[hed]] · [[tiered-dissemination-and-communal-science]]
