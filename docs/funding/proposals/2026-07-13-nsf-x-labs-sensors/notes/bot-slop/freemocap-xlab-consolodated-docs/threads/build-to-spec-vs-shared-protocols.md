---
tags: [thread, architecture, funding-structure, trap, design-lesson, precedent, software-aphorism]
aliases: [Build-to-Spec, shared protocols, the adopt-the-standard trap, Postel, adapter pattern]
type: thread
---

# Build-to-Spec vs. Shared Protocols

The **second trap**, rhyming with the [[composition-over-inheritance|inheritance trap]]:

> **The "adopt the shared standard" trap `#trap`.** When a mature interchange standard exists (OWL, [[lab-streaming-layer|LSL]], HL7, RDF), it feels obviously correct to build *on top of* it. But adopting a general standard means **inheriting its entire model of the world into your core** — its data model, clock assumptions, philosophical commitments, failure modes. The winners at the hard edge repeatedly do the *controversial* thing: **build the core exactly to their own spec, keep it minimal, and add compatibility later, as an adapter, driven by real demand.**

The parallel is exact: a shared protocol is the *interface* equivalent of a base class. Building your core to conform to it is `SkellyCam extends LSL` — the fragile-base-class problem at ecosystem scale. Building to spec and converting later is **composition**: `SkellyCam` owns its own timestamp model and *has-an* optional LSL exporter.

## The named lineage (citable, not vibes) `#precedent`
- **[[palantir-ontology|Palantir explicitly eschewing OWL/RDF]]** — built a proprietary "executable ontology" (object/property/link **+ action**) for governed operational decisions rather than open-world inference. The headline precedent.
- **[[worse-is-better|"Worse is Better" (Gabriel)]]** — ship the small correct core; generalize later. Unix/C.
- **[[narrow-waist|The hourglass / narrow waist]]** — a thin spanning layer (IP) beats a fat standard; the Internet is the solicitation's *own* exemplar.
- **Postel's robustness principle** — strict, exact core (conservative); liberal **[[digital-twin-two-traditions|adapters]]** at the boundary. Literally the Adapter pattern.
- **Premature standardization is a recognized anti-pattern** — standardize *after* "tiny pockets of focused interoperability," not before (xkcd 927).

## [[obo-foundry|OBO]] as the counterweight
OBO is what "do it right, as a governed shared standard" looks like *when it works* — and it took ~25 years, dozens of institutions, an ISO standard, and a resident philosopher. That is the cost of a genuine shared protocol. The instrument's **measurement core** is not trying to be a global public good at the schema layer; it is trying to be an *instrument*. OBO is the model for the eventual [[tiered-dissemination-and-communal-science|shared layer]], not for the core.

## Application (advisory)
- Make the timestamp/sync model **exactly** what a multi-camera scientific instrument needs — own the clock model.
- Treat [[lab-streaming-layer|LSL/XDF]] (and OBO-style tagging) as **boundary adapters** added when a real user needs the bridge.
- **Say so, and cite it** — reframe a *lack* of standard-compliance from weakness into a defended architectural decision.
- Frame the timestamp system as the **[[metrology-and-traceability|metrological core]]** of the instrument, not "middleware." `#say`

**Related:** [[traps-and-anitpatterns]] · [[worse-is-better]] · [[narrow-waist]] · [[lab-streaming-layer]] · [[obo-foundry]] · [[composition-over-inheritance]]
