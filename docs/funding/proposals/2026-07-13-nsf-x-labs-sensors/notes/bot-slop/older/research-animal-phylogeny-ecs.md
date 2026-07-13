# Research-Animal Phylogeny as a Sensor-Grounded Entity-Component Tree

*Advisory synthesis (bot slop by definition). For JSM. Eighth in the series; builds directly on `human-phylogenetic-lineage.md` (the single-branch human tree) and on [D1] composition/traits, [D4] sensor-grounded ontology, [D6] the-whole-picture, [D7] metrology. Takes the beautiful human branch, abridges it, and grafts the lab's research animals at their real branch points — then hangs an entity-component trait system on the nodes. First pass: get the structure down; polish + a real figure later.*

---

## 1. The idea (the plan before the tree)

- Take the human lineage (the existing single-branch tree), **abridge** it (elide minor internal nodes with `⋯`), and **graft the research animals** at the exact points where they branch off the line to humans.
- Go all the way back to the **minimal agent** — a bacterium — because even a bacterium is an agentic system: chemoreceptors (sensors) + flagellar motor (actuator) = *transduce environmental energy → act* [D4 EAEE]. Agency, and therefore the sensor-grounded ontology, bottoms out here.
- Hang an **entity-component system** on the tree: each node **adds components (traits)**; each research animal is an **exemplar that hydrates a particular subset** of the ontology and, by which traits it *shares* vs *doesn't share* with humans, tells us something mechanistic or functionalist [D6 §6].
- **Why this matters for the proposal:** it turns "we study lots of animals" into a *principled comparative design* — any organism is locatable on the tree, and its trait-overlap with humans predicts the *kind* of inference it supports. It also shows the ontology is trait-based (composition), not lineage-based (inheritance) [D1] — which is exactly why it can also reach sideways to **artificial agents** (an eye and a camera share the `OpticalSensor` component without sharing ancestry) [D6 §5].
- **The punchline nuance** (§4): trait-sharing and phylogenetic proximity usually agree but sometimes don't — the ferret is *farther* from us than a mouse, yet its visual system is *more human-like*. That dissociation is the strongest possible argument for a **component** ontology over an **inheritance** tree.

---

## 2. The abridged tree — minimal agent → human, research animals grafted in

`★` = highlighted research animal · `⋯` = elided internal nodes · `[COMPONENT]` = key trait added at that node

```
PROKARYOTA (Bacteria/Archaea) ── [CHEMO-SENSOR + MOTOR] = minimal agent (sense→act)
 └─ EUKARYOTA ── [membrane-bound organelles, cytoskeleton, cilia]
     └─ ⋯ Opisthokonta ⋯ (choanoflagellates = closest non-animal kin)
         └─ METAZOA / Animalia ── [multicellularity, collagen]
             └─ EUMETAZOA ── [true tissues, ★NEURONS, ★MUSCLE] (nervous system origin)
                 └─ BILATERIA ── [bilateral symmetry, cephalization, CNS, through-gut]
                     ├─ PROTOSTOMIA
                     │   └─ ECDYSOZOA ── [molting cuticle]
                     │       ├─ Nematoda ── [compact fixed nervous system, soft/hydrostatic body]
                     │       │   └─ ★ C. ELEGANS  (302-neuron full connectome; chemosensation; no image-forming eye)
                     │       └─ Arthropoda ── [EXOSKELETON, jointed limbs, ★COMPOUND EYE]
                     │           └─ Insecta
                     │               ├─ ★ DROSOPHILA (fruit fly) — motion/optomotor vision, genetic toolkit
                     │               ├─ ★ HONEYBEE — UV/colour vision, navigation, learning
                     │               └─ ★ DRAGONFLY — target-tracking neurons, aerial prey capture
                     └─ DEUTEROSTOMIA  (note: monophyly now debated — see §6)
                         └─ CHORDATA ── [notochord + dorsal hollow nerve cord + pharyngeal slits]
                             ├─ Cephalochordata ── ★ LANCELET/amphioxus = notochord + nerve cord, **NO head/cranium**
                             └─ ⋯ Olfactores ⋯
                                 └─ CRANIATA ── [★CRANIUM/head, neural crest, sensory placodes]
                                     ├─ (Hagfish — craniate, no true vertebrae)
                                     └─ VERTEBRATA ── [segmented vertebral column]
                                         ├─ ★ LAMPREY — jawless craniate: **head yes, jaws no, true vertebrae no** (arcualia); camera eye; locomotor CPG
                                         └─ GNATHOSTOMATA ── [★JAWS, paired fins]
                                             └─ OSTEICHTHYES ── [★MINERALIZED BONE] ◄─── rigid-body kinematics attaches (§5)
                                                 ├─ Actinopterygii
                                                 │   └─ ★ ZEBRAFISH — camera eyes + spine; transparent brain; optic tectum
                                                 └─ Sarcopterygii
                                                     └─ TETRAPODA ── [★FOUR LIMBS + DIGITS, neck, sacrum]
                                                         └─ AMNIOTA ── [amniotic egg]
                                                             ├─ SAUROPSIDA
                                                             │   └─ Aves (birds) ── [★OPTIC-TECTUM-dominant vision]
                                                             │       └─ ★ GUINEA FOWL — lateral eyes (prey), bipedal-locomotion model
                                                             └─ SYNAPSIDA
                                                                 └─ MAMMALIA ── [★NEOCORTEX, fur, milk, 3 ear bones]
                                                                     └─ ⋯ Eutheria → Boreoeutheria ⋯
                                                                         ├─ LAURASIATHERIA
                                                                         │   └─ Carnivora
                                                                         │       └─ ★ FERRET — predator (frontal-ish eyes), columnar V1, visual-development model
                                                                         └─ EUARCHONTOGLIRES
                                                                             ├─ Glires / Rodentia
                                                                             │   ├─ ★ MOUSE  — prey (lateral eyes), "salt-and-pepper" V1, whiskers
                                                                             │   └─ ★ RAT    — prey; navigation/somatosensation
                                                                             └─ PRIMATES ── [grasping hand+foot, nails, fovea, forward eyes]
                                                                                 └─ ⋯ Haplorhini → Simiiformes ⋯
                                                                                     ├─ Platyrrhini
                                                                                     │   └─ ★ MARMOSET — small NW monkey; social; imaging-friendly
                                                                                     └─ Catarrhini
                                                                                         └─ ★ MACAQUE — OW monkey; mechanistic gold standard for human vision
                                                                                             └─ ⋯ Hominidae → Homo ⋯
                                                                                                 └─ ★ HOMO SAPIENS ◄── the target
```

---

## 3. The entity-component layer — what each node adds, and what its exemplar teaches

Read this as: the ontology's `Agent` entity accumulates **components** down the tree; a research animal **hydrates** [D6 §4] the subset present in its lineage. "Insight type" uses the [D6] axis — shared traits → **mechanistic** ("how does *our* machinery work?"); unshared → **functionalist** ("how is the same task solved by *different* machinery?").

| Node (component added) | Exemplar model | What it hydrates / teaches re: humans | Insight |
|---|---|---|---|
| Prokaryota — `ChemoSensor`+`Motor` | (bacteria) | agency degree zero: sense→act loop; EAEE grounding | functionalist |
| Eumetazoa — `Neuron`,`Muscle` | — | the substrate of all neural control | — |
| Bilateria — `CNS`,`Cephalization` | — | head-end concentration of sensing | — |
| Nematoda — `FixedConnectome`,`SoftBody` | ★ C. elegans | complete wiring diagram; chemosensory decision-making; **soft-body physics** (not rigid) | functionalist |
| Arthropoda/Insecta — `Exoskeleton`,`CompoundEye` | ★ fly, ★ bee, ★ dragonfly | vision via ommatidia (≠ camera eye); motion vision, colour/UV, target interception | functionalist |
| Chordata — `Notochord`,`DorsalNerveCord` | ★ lancelet | the chordate body axis **without a head** — the `Head` component not yet present | functionalist |
| Craniata — `Head`,`NeuralCrest` | (hagfish) | origin of the vertebrate head/face | mechanistic-ish |
| Vertebrata — `VertebralColumn` | ★ lamprey | spine + camera eye + **locomotor CPG / reticulospinal** control; jawless | functional→mech |
| Osteichthyes — `Bone` (rigid segments) | ★ zebrafish | camera eyes, spine, **rigid skeleton → rigid-body kinematics** (§5); optic tectum | mixed |
| Tetrapoda — `Limbs`,`Digits` | (→ birds, mammals) | four-limb weight-bearing locomotion; the body plan SkellyCam reconstructs | mechanistic |
| Aves — `OpticTectumVision` | ★ guinea fowl | vision routed through **optic tectum, not neocortex**; lateral/prey eyes; bipedal gait model | functionalist (vision), mechanistic (bipedal locomotion) |
| Mammalia — `Neocortex` | (→ ferret, rodents, primates) | six-layered cortex; the shared mammalian visual-processing substrate | mechanistic |
| Carnivora — `Predator`(frontal eyes),`ColumnarV1` | ★ ferret | binocular overlap; **orientation columns** in V1 (like primates); classic visual-development/plasticity model | mechanistic (cortex), see §4 |
| Rodentia — `Prey`(lateral eyes),`Salt&PepperV1`,`Whiskers` | ★ mouse, ★ rat | panoramic prey vision; **non-columnar V1**; whisker somatosensation; huge genetic toolkit | mixed |
| Primates — `Fovea`,`ForwardEyes`,`GraspingHand` | ★ marmoset, ★ macaque | trichromacy, foveal high-acuity vision, hand control — **closest to human machinery** | mechanistic (gold standard) |
| Homo sapiens | (target) | the measurand everything maps back to | — |

**Two component splits worth stating explicitly (Jon's examples):**

- **`OpticalSensor` is a shared component across radically different machinery.** Compound eye (insects), camera eye (vertebrates), and camera (artificial) all satisfy the `OpticalSensor` interface — transduce light (EAEE) — while differing in every mechanical detail [D6 §5]. This is composition-over-inheritance in the flesh [D1].
- **`Predator`/`Prey` conditions the `EyePlacement` and downstream visual components.** Lateral eyes (prey: mouse, rat, guinea fowl) → panoramic field, minimal binocular overlap; frontal eyes (predator: ferret; and primates) → binocular overlap for depth ([predator/prey eye placement & visual field](https://www.frontiersin.org/journals/neuroscience/articles/10.3389/fnins.2017.00619/full)). One ecological trait flip propagates through the whole visual ontology.

---

## 4. The sharpest point: trait-sharing ≠ lineage (ferret vs rodent)

A subtlety the phylogeny forces, and it *strengthens* the whole framework:

- **Phylogenetically**, within placental mammals the split is **Laurasiatheria** (carnivores incl. **ferret**) vs **Euarchontoglires** (rodents **+** primates). So **mice and rats are on the *same* branch as us; the ferret is on the *sister* branch — i.e., ferrets are phylogenetically *farther* from humans than mice are.**
- **Functionally**, the ferret's visual system is *more human-like*: frontal-ish predator eyes with binocular overlap and **orientation columns in V1** — like cats and primates — whereas mouse/rat V1 is non-columnar "salt-and-pepper." Bird vision, on a much more distant branch, is routed through the **optic tectum** rather than neocortex entirely ([optic tectum vs mammalian cortex](https://pmc.ncbi.nlm.nih.gov/articles/PMC3729728/)).
- **Therefore:** the useful axis is **trait-overlap, not raw ancestry.** Convergence (predator vision evolved separately in carnivores and primates) means a **component/trait ontology** captures "what maps to humans" better than the inheritance tree does. This is the biological vindication of composition-over-inheritance [D1] and the precise justification for the [D6] "shared vs unshared traits" framing being about *traits*, not *distance*.

---

## 5. Branching into physics — where rigid-body kinematics attaches

The ontology's **physics layer is itself trait-conditioned** — the right mechanical model depends on which body components an animal has:

- **`Bone`/`Exoskeleton` present → rigid-body kinematics is valid.** Once a segment is rigid (endoskeletal bone at **Osteichthyes**, or exoskeletal sclerite in **arthropods**), the measurement pipeline is: `camera → keypoints → segment → RigidBody`. A `RigidBody` component carries **position, orientation (quaternion), linear & angular velocity/momentum, and an inertia tensor** — the full Newton–Euler state. This is exactly what appears "once you have bones and SkellyCam."
- **Soft-bodied agents need a different model.** C. elegans (hydrostatic), soft tissue, and unmeasured deformable structures don't reduce to rigid links — they need continuum/soft-body or musculoskeletal-deformation models. So `RigidBody` is a component you attach *where the trait supports it*, and fall back otherwise.
- **Grounding stays metrological [D7]:** the segment estimate is a traceable measurement (camera calibration → keypoint uncertainty → triangulated joint centers → segment pose), and the rigid-body quantities (momentum, angular momentum) are *derived* objects carrying propagated uncertainty back to the primary optical sensor [D6 §4]. Rigid-body kinematics is the physics **hydration** of the skeletal ontology.
- **This is also the bridge to artificial agents** [D6 §7]: a robot link and a bone segment share the `RigidBody` component, so the same kinematic data model spans measured biology and simulated/《IsaacGym/MuJoCo》 bodies.

---

## 6. Caveats & open questions (advisory — flagging, not forcing)

- **Lamprey vs lancelet.** In the memo the "spine but no head" animal was the lamprey; biologically the **headless** chordate is the **lancelet/amphioxus** (notochord + nerve cord, no cranium). The **lamprey** *is* a craniate — it **has a head/brain and a camera eye**, but **no jaws and no true vertebrae** (only cartilaginous *arcualia*) ([lamprey](https://en.wikipedia.org/wiki/Lamprey); [jawless craniate model](https://pmc.ncbi.nlm.nih.gov/articles/PMC3995830/)). I placed both correctly above; worth deciding which one you actually want to feature (lamprey is the richer motor-control model — locomotor CPG).
- **Deuterostome monophyly is now contested.** Recent phylogenomics finds weak/equivocal support for Deuterostomia as a clade (Protostomia is robust) ([Science Advances 2021](https://www.science.org/doi/10.1126/sciadv.abe2741)). Doesn't change the research-animal placements, but don't lean on "Deuterostomia" as rock-solid.
- **Predator/prey → eye placement is a strong tendency, not a law** (owls, primates are frontal-eyed; exceptions exist). Frame as a design pressure, not a rule.
- **Dates approximate**, per the source tree.
- **Bacteria as "agent"** is a deliberate stretch to anchor EAEE at the floor — defensible and evocative, but flag it as framing.

---

## 7. Next step

This is the text version of the thing. The natural companion is a **visual**: a real phylogenetic tree figure with the research animals at their branch points and the component annotations — either a clean SVG for the repo (like the existing `human-lineage-tree.html`) or a proposal-ready figure. Say the word and I'll draft it; I'd want your call on the two axes to emphasize (lineage vs trait-overlap) and how much ECS annotation to show without clutter.

---

### Sources
- [Animal phylogeny / Bilateria–Protostomia–Deuterostomia](https://pmc.ncbi.nlm.nih.gov/articles/PMC7978419/) · [Ecdysozoa (nematodes + arthropods)](https://academic.oup.com/mbe/article/22/5/1246/1066923)
- [Optic tectum vs mammalian visual cortex; eye placement](https://www.frontiersin.org/journals/neuroscience/articles/10.3389/fnins.2017.00619/full) · [optic chiasm / eye-hand coordination](https://pmc.ncbi.nlm.nih.gov/articles/PMC3729728/)
- [Lamprey (jawless craniate, arcualia)](https://en.wikipedia.org/wiki/Lamprey) · [lamprey as jawless-vertebrate model](https://pmc.ncbi.nlm.nih.gov/articles/PMC3995830/)
- [C. elegans 302-neuron connectome](https://pmc.ncbi.nlm.nih.gov/articles/PMC5015834/) · [Drosophila ~800 ommatidia / honeybee compound eye](https://www.sciencedirect.com/topics/immunology-and-microbiology/compound-eye) · [zebrafish transparent-brain model](https://www.nature.com/articles/s41598-021-90335-y)
- Prior series docs: `human-phylogenetic-lineage.md`, [D1] `entity-trait-composition-landscape.md`, [D4] `sensor-grounded-ontologies-instrumentation.md`, [D6] `the-whole-picture-from-sketch.md`, [D7] `metrology-nist-traceability-milestones.md`
