---
tags: [concept, landscape, architecture, trap]
aliases: [LSL, Lab Streaming Layer, XDF]
type: concept
---

# Lab Streaming Layer (LSL)

The de-facto standard for synchronized multimodal recording in human neuroscience: per-sample timestamps, clock sync across a LAN (NTP clock-filter), sub-millisecond sync on commodity hardware, companion format **XDF**. Reference paper: Kothe et al. 2024. It genuinely delivers — which is why it's everywhere in EEG/BCI labs.

## It is transport, not a data model
LSL gets samples onto a shared clock; it does **nothing** about what those samples *mean* or how they relate. It is the [[the-missing-middle|transport layer, solved]] — and the reason the *middle* is still missing.

## Why it's a base class you don't want to inherit `#trap`
Adopting LSL as the *core* timing substrate means **inheriting its assumptions**: an NTP-over-LAN clock model, its network transport, XDF's need to encode ugly real events (a device disappearing on a battery swap), constant per-stream delay modeling. Those are *correct for a general recorder* and *overhead for an instrument* whose synchronization may be hardware-triggered and provably tighter.

> The boundary decision: LSL belongs on the **outside** as an import/export adapter, **not** on the inside as the thing your timestamps are defined in terms of. This is the [[build-to-spec-vs-shared-protocols|build-to-spec]] / [[narrow-waist|narrow-waist]] move; it is one half of [[traps-and-anitpatterns]].

**Related:** [[build-to-spec-vs-shared-protocols]] · [[traps-and-anitpatterns]] · [[the-missing-middle]] · [[bids-and-nwb]]
