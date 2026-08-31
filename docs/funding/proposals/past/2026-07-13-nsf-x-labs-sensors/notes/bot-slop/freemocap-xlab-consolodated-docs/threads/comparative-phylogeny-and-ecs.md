---
tags: [thread, biology, ontology, design-lesson, reusable-pattern]
aliases: [Comparative Phylogeny, phylogeny ECS, research-animal tree, minimal agent]
type: thread
---

# Comparative Phylogeny as a Sensor-Grounded Entity-Component Tree

Takes the human lineage, abridges it, and **grafts the lab's research animals at their real branch points** — then hangs an [[entity-component-system|entity-component]] trait system on the nodes. Turns "we study lots of animals" into a **principled comparative design**: any organism is locatable on the tree, and its [[shared-vs-unshared-traits|trait-overlap with humans]] predicts the *kind* of inference it supports.

## The floor: the minimal agent
Go back to a **bacterium** — even a bacterium is agentic: chemoreceptors (sensors) + flagellar motor (actuator) = *transduce [[eaee|environmental energy]] → act.* Agency, and therefore the [[sensor-grounded-ontology|sensor-grounded ontology]], bottoms out here. `#verify` (deliberate framing stretch — flag it).

## Each node adds components; each animal hydrates a subset
Read the tree as: the `Agent` entity accumulates **components** down the branches; a research animal **[[hydration|hydrates]]** the subset its lineage carries, and by which traits it *shares* vs. *doesn't* with humans, yields mechanistic vs. functionalist insight ([[shared-vs-unshared-traits]]).

| Node (component) | Exemplar | Insight |
|---|---|---|
| Prokaryota — ChemoSensor+Motor | bacteria | functionalist (agency degree zero) |
| Arthropoda — CompoundEye | fly, bee, dragonfly | functionalist (non-camera vision) |
| Vertebrata — VertebralColumn | lamprey (jawless craniate: head yes, jaws/vertebrae no) | functional→mech |
| Osteichthyes — **Bone** | zebrafish | **rigid-body kinematics attaches here** (§below) |
| Aves — OpticTectumVision | **guinea fowl** (M.D.) | functionalist (vision) / **mechanistic (obligate-biped gait, `@daley2006` `@daley2007`)** |
| Carnivora — Predator eyes, **ColumnarV1** | **ferret** (B.S.) | mechanistic (cortex) |
| Rodentia — Prey eyes, salt&pepper V1 | **mouse** (D.F.), rat | mixed |
| Primates — Fovea, ForwardEyes, GraspingHand | **marmoset, macaque** | mechanistic (gold standard) |
| Homo sapiens | (target) | the measurand |

Keep biology honest `#verify`: lancelet = headless chordate, lamprey = craniate; Deuterostomia monophyly is contested; predator/prey→eye-placement is a tendency. See [[_verification-punchlist]].

## The sharpest point (the vindication of composition)
**Ferrets are phylogenetically *farther* from us than mice** (Laurasiatheria vs. our Euarchontoglires), yet the ferret's visual system is *more human-like* (columnar V1, binocular predator eyes). Trait-sharing and lineage **dissociate** — the strongest possible argument for a **[[composition-over-inheritance|component ontology over an inheritance tree]]**. See [[shared-vs-unshared-traits]].

The **guinea fowl** is the same move on the *motor* side: phylogenetically very distant and morphologically avian, but an **obligate biped**, so its `BipedalGait` trait maps functionally onto ours even though almost nothing else does — a second, independent instance of biped musculoskeletal control (M. Daley's proximo-distal control work, `@daley2006` `@daley2007`).

## Branching into physics
The physics layer is **trait-conditioned**: `Bone`/`Exoskeleton` present → **rigid-body kinematics is valid** (`camera → keypoints → segment → RigidBody` with position/orientation/velocity/inertia tensor). Soft-bodied agents (C. elegans, soft tissue) need continuum/soft-body models. `RigidBody` is a component you attach *where the trait supports it* — and it's the [[functional-equivalence-optical-sensor|bridge to artificial agents]] (a robot link and a bone segment share `RigidBody`, so the same data model spans measured biology and IsaacGym/MuJoCo bodies). That shared `RigidBody` is what makes the capture **RL-ready** and closes [[the-robotics-ai-loop|the robotics/AI loop]]. Grounding stays [[metrology-and-traceability|metrological]] throughout.

**Related:** [[shared-vs-unshared-traits]] · [[entity-component-system]] · [[composition-over-inheritance]] · [[the-robotics-ai-loop]] · [[the-validation-triangle]] · [[dimensional-domains]] · [[the-rw-to-ontology-pipeline]]
