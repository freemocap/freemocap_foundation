---
tags: [concept, architecture, ontology]
aliases: [Ontology, ontological object, ontological model, Gruber definition]
type: concept
---

# Ontology (as used in this project)

Two senses meet in this word, and the project deliberately uses the **engineering** one grounded by the **metaphysical** one.

- **Metaphysics:** ontology = the study of *what exists and how things categorize*. Here it points at the [[capital-t-true-facts]] — "what we think is out there."
- **Computer science / KR:** the canonical definition is **Tom Gruber's (1993): "an explicit specification of a conceptualization."** A typed model of entities, their properties, and their relations.

In this project the ontology is the **canonical model of the agent–environment interaction** — a body, a joint, a gaze vector, a tracked object, a neural event, a force reading, an agent — that captures from any [[sensor-as-transducer|transducer]] estimate (the [[hydration]] target).

## The load-bearing qualifier: *sensor-grounded*
An **ungrounded** ontology is just software — free-floating symbols, the thing [[the-software-exclusion|the exclusion]] distrusts. A **[[sensor-grounded-ontology|sensor-grounded]]** ontology is the opposite: every object anchors, through a traceable [[metrological-traceability|transduction chain]], to a physical measurement. The grounding converts the software concern into an instrumentation strength (see [[symbol-grounding-problem]]).

## Which flavor: pragmatic, not formal
The design follows [[palantir-ontology|Palantir]]/[[anduril-lattice|Anduril]] property-graph / entity-component patterns, **not** formal OWL/RDF — because in both the enterprise *and* neuroscience, formal Semantic-Web ontologies lost to pragmatic operational models wherever action, latency, and adoption mattered. See [[the-ontology-question-in-science]].

**Related:** [[sensor-grounded-ontology]] · [[entity-component-system]] · [[composition-over-inheritance]] · [[hydration]]
