---
tags: [concept, ontology, biology, design-lesson]
aliases: [Functional Equivalence, optical sensor slot, eye equals camera]
type: concept
---

# Functional Equivalence (eye ≡ camera)

An **eye** and a **camera** are mechanically nothing alike, but both are **optical sensors** — both transduce the same [[eaee|EAEE]] (light) — so they occupy the **same functional slot** in the [[ontology-definition|ontology]], sharing properties (lens, focal length, projection, sensor surface) and diverging on others (biological vs. CCD/CMOS; spherical vs. linear projection; fixed vs. variable focal length).

This is [[composition-over-inheritance|composition-over-inheritance]] / [[entity-component-system|ECS]] in action: `OpticalSensor` is a **composable trait/interface** shared across wildly different entities, not a branch of an inheritance tree.

## Why it's load-bearing `#design-lesson`
It's the **hinge that lets one ontology span biological *and* artificial agents** — and [[shared-vs-unshared-traits|shared vs. unshared species]]. A compound eye (insect), a camera eye (vertebrate), and a CMOS camera (robot) all satisfy `OpticalSensor`; a robot link and a bone segment all satisfy `RigidBody`. That is what makes the same data model span measured biology and simulated bodies (IsaacGym/MuJoCo) — the [[the-rw-to-ontology-pipeline|biological↔artificial loop]] and the Topic-2 AI-training-data hook.

**Related:** [[composition-over-inheritance]] · [[entity-component-system]] · [[shared-vs-unshared-traits]] · [[gibson-ecological-optics]]
