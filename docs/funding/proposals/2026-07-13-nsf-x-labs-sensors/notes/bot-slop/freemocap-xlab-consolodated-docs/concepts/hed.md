---
tags: [concept, landscape, ontology]
aliases: [HED, Hierarchical Event Descriptors]
type: concept
---

# HED — Hierarchical Event Descriptors

The closest thing behavioral neuroscience has to an **event ontology**, and the most important reference for the [[the-ontology-question-in-science|"scientific ontology" question]]. Developed by Kay Robbins, Scott Makeig, Dora Hermes, Arnaud Delorme (BRAIN Initiative–funded); it is **the annotation standard for events in [[bids-and-nwb|BIDS]].**

Its design philosophy is the tell: HED has *implicit ontological/linked-data representations* but a deliberately *more intuitive interface* than formal ontology annotation — a base "standard schema" plus extensible **library schemas** (e.g. HED-SCORE for clinical EEG), so communities add controlled vocabularies without a formal-ontology bottleneck. This is the [[the-ontology-question-in-science|pragmatic-over-formal]] winner, same as [[palantir-ontology|Palantir over OWL]].

**The citable admission `#reframe`:** HED's own authors diagnose that existing ontology frameworks *cannot straightforwardly annotate events in modern, complex real-world scenarios* because of their complexity. Directly useful for the novelty argument.

**Why it isn't what the vision proposes:** HED tags say "*a target stimulus appeared at t=4.2s*." Nothing in this ecosystem says "*this skeleton joint, this gaze vector, this force reading, and this neural event are the same first-class, linked, calibrated entity.*" That is the [[palantir-ontology|object/link/action]] layer — [[the-missing-middle]].

**Related:** [[the-ontology-question-in-science]] · [[bids-and-nwb]] · [[the-missing-middle]]
