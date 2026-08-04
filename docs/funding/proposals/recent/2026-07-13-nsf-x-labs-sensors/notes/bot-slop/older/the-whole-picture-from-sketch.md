# The Whole Picture — from real-world energy to grounded ontology to theory

*Advisory synthesis (bot slop by definition). For JSM. Sixth in the series; this one transcribes and coheres the hand-drawn "Real World → Ontology" sketch + its voice memo into a structural whole. First pass — get the picture down; tighten integration later. Cross-refs: [D1] composition/traits · [D4] sensor-grounded ontologies/instrumentation · [D5] `proposal-mapping…`. Not proposal prose.*

---

## 1. The spine: one pipeline across an epistemic gap

The sketch's core is a single left-to-right (and top-right) pipeline that carries **capital-T True Facts** of the world into **testable scientific theory**, crossing a philosophical divide in the middle:

```
   METAPHYSICS  (what IS)              │  EPISTEMOLOGY  (what we believe is true)
                                       │
 Real World (RW)                       │
  = Desiderata / capital-T True Facts  │
        │                              │
   suffused with                       │
   EAEE  (Empirically Available        │
          Environmental Energy)        │
        │  light · force (F=ma / τ=Iα) │
        ▼                              │
   ┌─ SENSOR TRANSDUCTION ─────────────┼──►  measurement estimate
   │   (camera, IMU, electrode, …)     │       │
   │                                   │       ▼
   │                                   │   ONTOLOGICAL MODEL  (hydrated)
   │                                   │       │
   └───────────── the ═══ EPISTEMIC GAP ═══ ───┘
                                       │       ▼
                                       │   scientific theory & experimentation
```

- **Left of the line = metaphysics:** the RW and its true facts — what actually exists, whether or not we measure it.
- **Right of the line = epistemology:** our measurements, our ontological model — what we *believe* is true.
- **The instrument is the bridge across the epistemic gap.** Everything the proposal builds lives on the crossing: turning environmental energy into a defensible, uncertainty-bounded belief about the world. Ontology = "what we think is out there"; measurement is how that belief earns its grounding.

The same pipeline is drawn twice in the sketch — once as a labeled vertical stack on the left (Real World → Measurement → Modeling), once as a clean flowchart top-right (RW → sensor transduction → measurement estimate → ontological model → theory, with a "best guess" feedback arrow). They're the same claim at two resolutions.

## 2. Stage by stage (the left-margin labels)

- **Real World / "Record"** — EAEE impinges on sensors. Light → camera; force/acceleration → IMU. The sensor *transduces* environmental energy into a repeatable electrical pattern [D4].
- **"Reconstruct"** — raw signal → structured estimate. Camera: video → CNN/transformer keypoints → skeleton → full-body kinematics (= FreeMoCap). IMU: accel/gyro/mag → segment orientation → kinematics.
- **"Estimate"** — reconstructed measurements become estimates of the positions/states of **canonical ontological entities**.
- **"Modeling (?)"** — those estimates **hydrate** the ontological / canonical model: a *best-effort, hydrated estimate of the capital-T True Facts*. (The "(?)" is JSM's own flag that this stage's name/kind is still open.)

## 3. Many transducers, one data model (the accuracy/precision point)

A concrete, metrological observation from the memo that's worth keeping sharp:

- **Camera mocap** — *high accuracy, low precision* (noisy estimate scattered around the true value); starts from **position**, double-*differentiate* to get acceleration.
- **IMU mocap** — *high precision, low accuracy* (smooth but **drifts** away from truth); starts from **acceleration**, double-*integrate* to get position.
- **Hybrid (Kalman / sensor fusion)** — each corrects the other's characteristic error; cleaner than either alone.
- **Punchline:** all three produce the **same data model** — measurements estimating the same canonical entities. The transducer is interchangeable; the grounded ontology is invariant. This is the [D4] "sensor-grounded ontology" claim made concrete, and it's an instrumentation argument (accuracy, precision, drift, uncertainty), not a software one.

## 4. The ontology as a scaffold you *hydrate* — layers of precision

The middle of the sketch is the entity/trait ontology from [D1], drawn out for `Human`:

- **Inherited traits (phylogenetic):** Chordata (→ spine, bilateral) → Craniata (→ skull → face → eyes) → Tetrapod (→ limbs → upper extremity → hand → …) → Predator → Biped → Primate.
- **Structural decomposition:** body → segments; hand → many small joints; head → face → eye → {pupil, lens, retina, 3D orientation}.
- **Layers of precision:** every part is an object; you can represent it coarsely or finely (e.g., eye as a 6-DOF rigid body at mocap scale, vs. a soft deformable structure in a musculoskeletal model). Same entity, selectable resolution.

Two ideas here are new enough to name explicitly:

- **"Hydration."** The canonical ontology exists as a *scaffold* independent of any given measurement. A measurement **hydrates** part of it. Unmeasured parts (e.g., muscles) are **presumed present but un-hydrated** — "we can't say anything about them," yet they're structurally there, waiting to be grounded. *"Heads have faces & faces have eyes even if you don't measure them."* This is the productive inverse of the [D1] override logic: overrides remove/replace inherited defaults (cavefish lose eyes); hydration *fills in* defaults with grounded values as sensors are added.
- **Estimation stays grounded.** Even a derived quantity — muscle force from inverse dynamics (OpenSim) off kinematics — is **traced back to the primary sensor** via metrology / NIST-style calibration / uncertainty propagation [D4]. Or you add a transducer that grounds it directly (surface/implanted EMG electrodes) = another hydration layer. Either way the ontology never floats free of a sensor.

## 5. Functional equivalence: the "optical sensor" slot (eye ≡ camera)

- An **eye** and a **camera** are mechanically nothing alike, but both are **optical sensors** — both transduce the same EAEE (light) — so they occupy the *same functional slot* in the ontology, with shared properties (lens, focal length, projection, sensor surface) and divergent ones (biological-only vs. CCD/CMOS; spherical vs. linear projection; fixed vs. variable focal length).
- This is [D1] composition-over-inheritance in action: "optical-sensor" is a **composable trait/interface** shared across wildly different entities, not a branch of an inheritance tree. It's also the hinge that lets the same ontology span **biological and artificial** agents (§7).
- The Matthis-2022 retinal-flow work is the worked example: modeling the eye as a spherical-projection optical sensor to construct retinal optic flow [D4].

## 6. The comparative axis: shared vs unshared traits → mechanistic vs functionalist insight

The right side of the sketch is the **scientific payoff structure** — why sampling across the animal tree matters:

- **Shared traits → mechanistic insight.** The closer an organism is to humans (primate eyeballs ≈ human eyeballs), the more directly its mechanisms tell us how *our* system works. "How does OUR system work?"
- **Unshared traits → functionalist insight.** The farther away (bird / bee / octopus vision), the more it reveals about *how the same task gets solved with different machinery*. "How do you solve an equivalent problem with a different mechanism?"
- **The sampling** (the Animalia box): Chordata → Tetrapod → {Bird (guinea fowl), Mammal → {Primate (macaque, marmoset, human), rodent (rat, mouse), ferret}}. Maps directly onto the existing collaborations in [D4] — human, ferret, mouse, guinea fowl — now legible as a *deliberate spread along the shared↔unshared axis*, not an ad-hoc set of projects.
- Neural landmarks noted in the sketch: rodent (disorganized V1), bird (optic tectum), primate (foveal V1, areal columns) — i.e., the same behavioral ontology anchored to very different neural substrates.

## 7. The biological ↔ artificial loop (the embodied-AI bridge)

Bottom of the sketch splits agents into **Biological** (human & non-human animals) and **Artificial** (robots, drones, simulations), and closes a loop between them:

- Grounded multimodal data → **training data** (incl. inverse RL) → **testable control policies** (RL / trajectory optimization).
- Policies extracted from artificial agents are **testable back on biological agents** — a two-way street between measured biology and learned control.
- Robot loop drawn as sense → plan → act (sensor → decoder → motor); sensor-fusion / SLAM as the artificial analogue of the perceptual pipeline.
- **Real World** and **Fully Rendered Simulation** (IsaacGym, MuJoCo, …) sit as mirror sources of the same data model — the sim is the artificial counterpart of the instrument.
- This is the direct hook to Topic-2's in-scope "instruments engineered for next-gen AI training pipelines" [D5]: the instrument's output is exactly the grounded, embodied training data that RL/robotics needs, and the resulting policies are scientific hypotheses testable with the same instrument.

## 8. What's new here vs. what it reinforces

**Reinforces (already in prior docs):** sensor-as-transducer / metrology grounding [D4]; entity-trait-override ontology [D1]; the cross-species collaborations [D4]; the AI-pipeline hook [D5].

**New / sharpened by this sketch:**

- The **metaphysics ↔ epistemology epistemic-gap** framing, with the instrument as the bridge — a clean, citable philosophical spine.
- **"Hydration"** as the positive complement to override: the ontology as a persistent scaffold that measurement progressively fills, with unmeasured parts explicitly present-but-unknown.
- The **accuracy/precision/drift + same-data-model** argument (camera vs IMU vs hybrid) — a crisp, instrumentation-flavored illustration of "many transducers, one grounded ontology."
- The **shared↔unshared trait axis → mechanistic↔functionalist insight** — turns the animal collaborations into a principled sampling design and a scientific-payoff story.
- The **biological↔artificial two-way loop** as an explicit structure (real world ⇄ rendered sim; measured biology ⇄ learned policy).

## 9. Loose joints (don't force these yet)

- **"Modeling (?)"** — JSM's own question mark. Is "hydrate the canonical model" one stage or two (estimate → then model/theory)? The right-hand flowchart splits ontological model from scientific theory; the left stack merges them. Decide before it hits the proposal.
- **EAEE vs Gibson.** The memo equates EAEE with the Gibsonian optic array "but empirically available." Worth deciding how hard to lean on Gibson (ecological-psychology baggage) vs. treating EAEE as a plain metrological term [D4]. Both work; pick a dose.
- **Where the epistemic-gap philosophy lives.** Powerful for framing/oral round, but risks reading as "philosophy of science" rather than instrumentation in an 8-page proposal [D5 say-vs-allude]. Likely allude, don't expound.
- **Artificial-agent loop scope.** The RL/robotics/sim bridge is genuinely exciting and on-hook for Topic-2, but it's a large surface area; risk of diluting the instrument story. Keep as a payoff/impact, not a second mission.
- **"Layers of precision" vs "hydration"** — are these the same axis (resolution) or two (resolution vs coverage)? Coverage = which parts are grounded at all; precision = how finely a grounded part is resolved. Probably two orthogonal axes; worth stating cleanly.
