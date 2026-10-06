---
tags: [thread, dissemination, funding-structure, precedent, cautionary-tale, design-lesson]
aliases: [Tiered Dissemination, communal science, data commons, publisher-subscriber]
type: thread
---

# Tiered Dissemination & Communal Science

We will produce captures **beyond any single lab's capacity to record.** So the proposal can't read as "a tool that makes datasets" — it must answer: *how does the community capture at maximum density, disseminate outward, and build tools recursively — for decades?* Every field that faced this left a playbook.

## The organizing lens — Eghbal's four project types `#design-lesson`
User-growth × contributor-growth: **Federations** (Linux/Wikipedia — high/high, sustainable), **Clubs** (Astropy — contributors≈users, self-maintaining but small), **Stadiums** (huge passive audience, tiny maintainer core — the **[[research-software-sustainability|burnout/abandonware trap]]**), **Toys**. **Target:** a **club-like core** (users are developers — the antidote to academic abandonware) *engineered toward a federation* (many labs + classrooms as users **and** contributors). Design against the **stadium.**

## Precedents to copy `#precedent`
- **LHC / WLCG** — capture at max density, then a **tiered data grid** (Tier 0 CERN → Tier 1 national → Tier 2 institute → Tier 3 individual); upgrade the instrument (HL-LHC) while the community mines the last run. The tiered grid *is* the high→low-resource dissemination model; the upgrade cadence *is* the multi-phase X-Labs tempo.
- **Astronomy (SDSS/Rubin/MAST)** — data-release model + query/portal layer (SkyServer → Galaxy Zoo citizen science); tiered data rights. *We adapt the incentive-balance to home-lab discretion, not a fixed proprietary clock (§below).*
- **Astropy** — the **software commons on top of the data commons**; "everyone who uses it can fix/extend it."
- **Genomics (PDB, Bermuda Principles)** — **set the sharing culture early**; the HGP mandated 24-hour public release.
- **LIGO/GWOSC** — open data **bundled with open tooling + tutorials** lowers the classroom barrier.
- **Neuroscience commons ([[bids-and-nwb|BIDS/NWB]], OpenNeuro, DANDI)** — **the strongest structural precedent**: a community standard that made heterogeneous data interoperable, in *federated* (not monolithic) archives under FAIR.
- **Human Brain Project — the cautionary tale `#cautionary-tale`.** €1B, top-down simulate-the-brain vision; 800+ neuroscientists revolted. Lessons: don't over-centralize on one PI/vision; don't promise total unification; **stay grounded in measurement, not simulation**; engage bottom-up. *We are, almost point-for-point, the anti-HBP.*

## The model, stated for us
- **Resource tiers (uncertainty scale of tooling):** Tier 0 X-Lab flagship (max density, best calibration) → Tier 1 partner labs → Tier 2 mid-resource universities → Tier 3 classrooms/citizen (cheaper tools, higher uncertainty, **same [[sensor-grounded-ontology|ontology]]** — commensurable because every measurement is [[metrological-traceability|traceable]] and uncertainty-tagged).
- **Dissemination model — home-lab-controlled publisher/subscriber, NO mandated proprietary window.** Each instrument instance has a **home lab** that owns its captures: collects, then **holds → cleans → inspects → and at its own discretion publishes** to subscribers at whatever cleanliness/access tier the stakeholders choose. Refined **exemplar recordings** get distilled and pushed broadly — seeding teaching, publications, proposals. (Resource tiers = *uncertainty scale*; publisher/subscriber = *who owns and releases what* — orthogonal, both hold.)

## National-leadership framing (use the FOA's words, not "dominance")
Echo the solicitation: "maintain global leadership in science and technology" (§2.0), "national competitiveness" (§3.0), "national innovation ecosystem" (§8.0). **Whoever sets the standard anchors the field** (as CERN, NIST, the astronomy archives do). Standard-setting is soft power — US-anchored scientific leadership *without* depending on owning the instruments. Never reintroduce "dominance."

**Related:** [[obo-foundry]] · [[bids-and-nwb]] · [[the-validation-triangle]] · [[bdfl-governance]] · [[why-this-cant-be-academic-science]] · [[conceptual-cleanliness-four-audiences]]
