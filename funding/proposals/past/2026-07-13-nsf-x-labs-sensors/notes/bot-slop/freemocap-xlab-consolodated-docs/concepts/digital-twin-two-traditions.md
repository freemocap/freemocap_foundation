---
tags: [concept, architecture, design-lesson]
aliases: [Digital Twin, two digital-twin traditions]
type: concept
---

# Digital Twin — two traditions (keep them separate)

"Digital twin" spans two genuinely different artifacts; conflating them causes confusion. Both are relevant, in different ways.

**(A) The enterprise / operational twin.** [[palantir-ontology|Palantir's]] "digital twin of an organization" — entities, relationships, business logic, governed action. Azure Digital Twins, AWS TwinMaker live here. This is the layer the [[the-missing-middle|missing-middle]] argument is about.

**(B) The physics-based / engineering twin.** Originates with NASA/USAF — a high-fidelity, physics-based simulation (finite-element, multibody dynamics, CFD) of a *specific physical asset*, continuously updated with live telemetry. Standards: ISO 23247, IEC 63278 Asset Administration Shell, MBSE.

## The bridge: human biomechanics twins
An active research area builds **Human Digital Twins** of the musculoskeletal system, where the physics tradition meets the behavioral-sensor world. **[[opensim|OpenSim]]** (on the Simbody engine) is the de-facto physics solver, driven by mocap, IMUs, EMG, imaging.

**The clean takeaway:** treat the operational twin and the physics-based twin as **separate layers that exchange data, not one system.** Use a real solver (OpenSim/successor) for the high-fidelity physics twin; use an [[entity-component-system|entity-component]] / object-link operational layer on top for fusion, governance, and action. OpenSim is the natural "physics layer" *beneath* an empirical-capture platform.

**Related:** [[opensim]] · [[palantir-ontology]] · [[the-missing-middle]]
