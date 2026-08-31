# Sensor-Grounded Ontologies — grounding the instrument in transduced environmental energy

*Advisory research briefing (bot slop by definition). For JSM. Fourth in the series; builds on the composition/ontology, build-to-spec, and organizational docs — does not replace them. This one is the load-bearing one for the solicitation's instrumentation requirement. Grounded in cited measurement-science, sensory-neuroscience, and perception literature. BibTeX block at the bottom.*

---

## The reframe (candidate title)

> **A convergent science of perceptual-motor control through sensor-grounded ontologies.**

The prior three docs risk reading as software philosophy. This one fixes that by naming the physical anchor that makes the whole enterprise **hard-science instrumentation**: the ontology is *sensor-grounded*. Every ontological object bottoms out in a hardware sensor that transduces **Empirically Available Environmental Energy (EAEE)** — light, force, heat, sound, electrical/chemical signal — into a repeatable, calibrated electronic pattern. The complexity-management machinery (entities/traits/overrides, composition, thin waists) is real and necessary, but it is the *middle* of the stack. The bottom is physics and metrology; the top is a human perceiver. Those two empirical brackets are what make this an instrument and not middleware.

The one-sentence defense against the solicitation's exclusion ("computational or software solutions without practical integration into an instrumentation system"): **we do not build software that happens to touch sensors; we build a measurement instrument whose readings are ontological objects, constructed by truth-preserving pipelines from calibrated, traceable transduction of environmental energy.**

---

## 1. A sensor is a transducer of environmental energy — this is the hard-science floor

A **transducer** is a device that converts one form of energy into another; that conversion is **transduction**. A **sensor** is, definitionally, a transducer whose job is to convert a physical environmental quantity (heat, pressure, light, motion, position) into an interpretable — almost always electrical — signal ([Transducer, Wikipedia](https://en.wikipedia.org/wiki/Transducer); [Sensor vs. transducer, Celmi](https://www.celmi.com/en/what-is-the-difference-between-a-transducer-and-a-sensor/)). Transducers sit "at the boundaries of automation, measurement, and control systems, where electrical signals are converted to and from other physical quantities."

This is the crucial framing move: **the boundary between the world and our system is not a software API — it is a physical energy conversion.** A camera pixel transduces photon flux to charge; a load cell transduces force to voltage; an electrode transduces transmembrane ionic current to a recordable potential; an IMU transduces inertial force to a digital rate. The instrument is an **array of transducers**, each converting a distinct band of EAEE into a repeatable pattern in electronics. Everything downstream is the disciplined interpretation of those patterns. That is the definition of an instrument.

## 2. What separates a measurement from a number: metrology (calibration, traceability, uncertainty)

Software produces numbers. **Instruments produce measurements**, and the difference is metrology. A measurement result is a measurement only if it carries **metrological traceability** — "the property of a measurement result whereby the result can be related to a reference through a documented unbroken chain of calibrations, each contributing to the measurement uncertainty" ([NIST, Metrological Traceability](https://www.nist.gov/metrology/metrological-traceability); [Vaisala, Understanding Calibration Traceability](https://www.vaisala.com/sites/default/files/documents/Understanding-Calibration-Traceability-B212197EN.pdf)). Calibration establishes the relation between a transducer's raw indication and an SI-referenced quantity, with uncertainty attached at every step.

**This is where "truth-preserving pipeline" gets its teeth.** In measurement science, a pipeline that builds a derived quantity from raw transduced signals is legitimate only if it is **calibrated and uncertainty-propagating**: each transformation from transduced energy → intermediate quantity → ontological object must carry its uncertainty forward, traceable back to physical standards. So the phrase to use in the proposal is precise, not hand-wavy: *an ontological object in our system is the endpoint of a metrologically traceable, uncertainty-propagating pipeline rooted in a calibrated sensor.* That sentence is instrumentation, full stop — it could describe a mass spectrometer or a telescope. The "truth-preserving" claim is the metrological-traceability claim.

## 3. The deep parallel that makes this *perceptual-motor science*: biological sensory transduction

The reason this instrument is the right instrument for a *science of perceptual-motor control* is that **nervous systems are, at their sensory surface, exactly this — arrays of transducers of environmental energy.** Sensory receptor cells "convert energy in the form of light, chemical, or mechanical into neural signals" via **sensory transduction** ([Transduction (physiology), Wikipedia](https://en.wikipedia.org/wiki/Transduction_(physiology)); [Kandel et al., *Principles of Neural Science*]). Photoreceptors transduce single photons into membrane-potential changes through the phototransduction cascade; cochlear and vestibular hair cells transduce sub-nanometer mechanical deflection into electrical signals in under a millisecond ([Mechanotransduction in mammalian hair cells, ScienceDirect](https://www.sciencedirect.com/science/article/pii/S1044743122000124)).

So the organism and our instrument are doing the **same category of thing**: sampling EAEE and transducing it into a structured internal representation. A science of how animals control action on the basis of sensed information is therefore, at its core, an **instrumentation problem** — to study it you must *measure the same environmental energy the animal samples, and measure the animal's sampling of it (gaze, pose, force), simultaneously and commensurably.* That is not a metaphor; it is the literal experimental requirement, and it is what the instrument array delivers.

### Gibson: environmental energy already carries the information

This is not a fringe framing — it is the core of **J.J. Gibson's ecological approach to perception**. Gibson argued the environment provides ecological information in the form of **ambient energy arrays** (the "ambient optic array" for vision), whose invariant structure directly specifies **affordances** — what surfaces are walk-on-able, graspable, sit-on-able ([Ambient optic array, Wikipedia](https://en.wikipedia.org/wiki/Ambient_optic_array); [Gibson, *The Ecological Approach to Visual Perception*, 1979]). "The environment provides ecological information in terms of ambient energy arrays, which specify the availability of affordances." **EAEE is, essentially, Gibson's ambient energy array named from the instrument's side of the transduction.** The instrument samples the same structured environmental energy the animal's perceptual systems evolved to pick up. This gives the project a principled, citable theoretical spine tying the hardware directly to the science of perceptual-motor control.

## 4. Why "sensor-grounded" is the phrase that defeats the software critique: the grounding problem

Here is the intellectual weapon that turns the software worry inside out. In AI/cognitive science there is a famous, foundational problem — **Harnad's Symbol Grounding Problem (1990)**: symbols manipulated purely by their shapes are meaningless; "how can the meanings of the meaningless symbol tokens … be grounded in anything but other meaningless symbols?" Harnad's own answer is bottom-up: ground symbols in **non-symbolic sensory and categorical features** ([Harnad, *The Symbol Grounding Problem*, 1990](https://philpapers.org/rec/HARTSG)). **Rodney Brooks's Physical Grounding Hypothesis (1990–91)** makes the same move for robotics: intelligence must be **grounded in the physical world through sensors and action**, not built atop abstract symbol manipulation — "the world is its own best model" ([Brooks, *Intelligence Without Representation*, Artificial Intelligence 47, 1991](https://en.wikipedia.org/wiki/Nouvelle_AI); *Elephants Don't Play Chess*, 1990).

The payoff for the proposal is exact and powerful:

> An ungrounded ontology *is* just software — free-floating symbols, the thing the exclusion rightly distrusts. A **sensor-grounded** ontology is the opposite: every object is anchored, through a traceable transduction chain, to a physical measurement of environmental energy. **The grounding is what converts the software concern into an instrumentation strength.** Our answer to "isn't this just a data model?" is Harnad's and Brooks's answer: no — because it bottoms out in transduced physical reality, not in other symbols.

So the entire ontology/complexity-management apparatus from Docs 1–3 is legitimate precisely because it is the *upper structure* on a *grounded base*. The composition-and-override machinery manages complexity; the sensor grounding makes it a measurement instrument. State both, in that order.

## 5. The instrument array in practice — the existing evidence base

The claim is not speculative; JSM's published work already instantiates "combine transducers, build ontological objects via truth-preserving pipelines":

- **Matthis, Yates & Hayhoe (2018), *Current Biology* — "Gaze and the Control of Foot Placement When Walking in Natural Terrain."** An **instrument array**: a mobile eye tracker (optical transduction of gaze) fused with IMU-based full-body motion capture (inertial transduction of body kinematics), recording simultaneously *outdoors on natural rough terrain*. From the fused streams they reconstructed full-body kinematics and 3D gaze and showed walkers tune gaze to terrain complexity with a constant temporal look-ahead ([Current Biology 28(8):1224–1233](https://www.cell.com/current-biology/fulltext/S0960-9822(18)30309-9)). This is the agent–environment-interaction instrument in embryo.
- **Matthis, Muller, Bonnen & Hayhoe (2022), *PLOS Computational Biology* — "Retinal optic flow during natural locomotion."** A textbook **truth-preserving pipeline**: from the measured gaze + kinematics, apply a calibrated **projective-geometry construction** (a spherical pinhole camera model of the eye) to build a *new ontological object* — the retinal optic flow field — then extract scientifically meaningful invariants via **curl and divergence** operators (foveal curl specifies trajectory relative to the gaze point; the point of maximum divergence specifies overground velocity in retinotopic coordinates) ([PLOS Comput Biol 18(2):e1009575](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1009575)). This is precisely "construct an ontological object from transduced measurements, with the transformation grounded in physics." It is the paradigm case for the whole proposal.

The **convergence / cross-domain extension** — the "convergent science" — comes from adding transducer modalities to the same grounded ontology across species and scales (personnel by initials per repo convention):

- **B.S. collaboration (ferrets):** the laser-skeleton (gaze + body) dataset extended with **neural transduction** — Neuropixels electrophysiology (transducing extracellular potentials) and miniature one-photon (miniscope) calcium imaging (transducing fluorescence as a proxy for neural activity).
- **D.F. collaboration (mouse):** optogenetic measurement/manipulation coupled to eye + body kinematics.
- **M.D. collaboration (guinea fowl):** musculoskeletal mechanics and muscle activity (EMG/force transduction) during legged locomotion.

Each collaboration bolts a new class of transducer — neural, optical-physiological, electromyographic, force — onto the same sensor-grounded ontology of agent–environment interaction. That cross-species (human, ferret, mouse, guinea fowl), cross-scale (retina to whole-body), cross-modality (photons to spikes to forces) convergence, unified by a common grounded ontology, *is* the "convergent science of perceptual-motor control." It is exactly the kind of field-reshaping platform the solicitation asks for — and it is unambiguously built on instrumentation.

## 6. The user interface is part of the instrument — cognitive load as a first-order measurement-science problem

An instrument whose readout no one can interpret is not an instrument. Historically, the human-readable interface *is* part of the measurement chain — a thermometer you cannot read, or an aircraft instrument panel that induces error, has failed as an instrument regardless of sensor quality. Treating the scientist-facing interface as first-order is therefore not a UX nicety; it is completing the measurement chain at the human end.

The grounding literature is **Cognitive Load Theory (Sweller, 1988)**: working memory has strictly limited capacity, and **extraneous cognitive load** — demand imposed by poor presentation rather than by the intrinsic difficulty of the material — directly degrades performance ([Sweller, *Cognitive Load During Problem Solving*, Cognitive Science 12, 1988](https://journals.sagepub.com/doi/10.1177/00187208261427867)). CLT is now standard in human-factors and usability evaluation. Applied here: the system under study is effectively infinite-dimensional (multimodal, multi-scale, multi-species agent–environment interaction), so the *intrinsic* load is irreducibly high — which means minimizing *extraneous* load in the interface is the only lever left, and it is decisive for whether the instrument is usable at all.

The strategic point for the proposal: **complexity management and cognitive-load management are the same first-order problem attacked at two ends of the measurement chain** — one facing the sensors (how do we reconcile heterogeneous transduced streams into coherent ontological objects), one facing the scientist (how do we present that ontology within human working-memory limits). Both are why the tool becomes "a scientific instrument people actually use" rather than "another thing too complicated for anyone to use," which is the empirical fate of most academic research software (see Doc 3, C2). Human factors done well is what let usable tools (the light microscope, ImageJ/Fiji, DeepLabCut) reshape their fields; usability is the adoption mechanism for instruments.

## 7. The full stack, and why every layer is instrumentation

| Layer | What it is | Why it's hard-science instrumentation |
|---|---|---|
| **Bottom — grounding** | Sensor array transduces EAEE (light, force, heat, electrical, chemical) into repeatable electronic patterns | Transduction + calibration + metrological traceability to SI, with uncertainty at every step |
| **Middle — complexity management** | Truth-preserving, uncertainty-propagating pipelines construct grounded ontological objects (entities/traits/relations; Docs 1–3) | The construction is a *calibrated measurement transformation*, not free-floating symbol manipulation — sensor-grounded (Harnad/Brooks), so not "just software" |
| **Top — human interface** | The ontology presented to the scientist under managed cognitive load | The human is the final reader in the measurement chain; the readout has always been part of the instrument (human factors / CLT) |

The stack is **bracketed by two empirical anchors**: environmental energy at the bottom, a human perceiver at the top. The software-philosophy content of Docs 1–3 is the necessary connective tissue in the middle — elevated to a first-order concern precisely because *managing the complexity of grounded, multimodal, uncertainty-bearing measurement is itself a problem in measurement science.* That is the sentence that keeps the whole proposal inside the instrumentation lane.

## 8. Proposal-safety synthesis (how this retires the software worry for good)

The exclusion targets "computational or software solutions without practical integration into an instrumentation system." The sensor-grounded framing integrates *by construction*:

1. **Lead with the transducers.** The instrument is an array of sensors converting specific bands of EAEE into calibrated signals. Name the physics.
2. **Make every ontological object a measurement.** Traceable, uncertainty-propagating pipelines from calibrated sensors — cite metrology vocabulary (calibration, traceability, uncertainty), not software patterns, when describing the pipeline.
3. **Use "grounding" as the technical term of art.** Harnad/Brooks give you the vocabulary to say, precisely, why a *sensor-grounded* ontology is instrumentation and an ungrounded one is not.
4. **Frame complexity- and cognitive-load-management as the two ends of one measurement chain**, both first-order, both required for the instrument to function and be used.
5. **Keep the software architecture (Docs 1–3) as the justified middle**, explicitly subordinate to the physical grounding — the reason the instrument can *scale across modalities/species/scales*, never the thing being funded on its own.

Then the perceptual-motor science (Gibson's ecological information; the 2018/2022 gaze-locomotion work; the neural/optogenetic/EMG extensions) is the *use-inspired* payload riding on a genuine, calibrated, multi-transducer instrument — which is exactly what Topic 2 (Scientific Instrumentation for Sensing and Imaging) is asking for.

---

```bibtex
@article{matthis2018gaze,
  author  = {Matthis, Jonathan Samir and Yates, Jacob L. and Hayhoe, Mary M.},
  title   = {Gaze and the Control of Foot Placement When Walking in Natural Terrain},
  journal = {Current Biology},
  volume  = {28},
  number  = {8},
  pages   = {1224--1233.e5},
  year    = {2018},
  doi     = {10.1016/j.cub.2018.03.008},
  url     = {https://www.cell.com/current-biology/fulltext/S0960-9822(18)30309-9}
}

@article{matthis2022retinal,
  author  = {Matthis, Jonathan Samir and Muller, Karl S. and Bonnen, Kathryn L. and Hayhoe, Mary M.},
  title   = {Retinal optic flow during natural locomotion},
  journal = {PLOS Computational Biology},
  volume  = {18},
  number  = {2},
  pages   = {e1009575},
  year    = {2022},
  doi     = {10.1371/journal.pcbi.1009575},
  url     = {https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1009575}
}

@book{gibson1979ecological,
  author    = {Gibson, James J.},
  title     = {The Ecological Approach to Visual Perception},
  publisher = {Houghton Mifflin},
  year      = {1979},
  note      = {Ambient optic array; ambient energy arrays; affordances; ecological information}
}

@book{gibson1966senses,
  author    = {Gibson, James J.},
  title     = {The Senses Considered as Perceptual Systems},
  publisher = {Houghton Mifflin},
  year      = {1966}
}

@article{harnad1990symbol,
  author  = {Harnad, Stevan},
  title   = {The Symbol Grounding Problem},
  journal = {Physica D: Nonlinear Phenomena},
  volume  = {42},
  number  = {1--3},
  pages   = {335--346},
  year    = {1990},
  doi     = {10.1016/0167-2789(90)90087-6}
}

@article{brooks1991intelligence,
  author  = {Brooks, Rodney A.},
  title   = {Intelligence Without Representation},
  journal = {Artificial Intelligence},
  volume  = {47},
  number  = {1--3},
  pages   = {139--159},
  year    = {1991},
  doi     = {10.1016/0004-3702(91)90053-M},
  note    = {Physical grounding hypothesis; ``the world is its own best model''}
}

@article{sweller1988cognitive,
  author  = {Sweller, John},
  title   = {Cognitive Load During Problem Solving: Effects on Learning},
  journal = {Cognitive Science},
  volume  = {12},
  number  = {2},
  pages   = {257--285},
  year    = {1988},
  doi     = {10.1207/s15516709cog1202_4}
}

@book{kandel2021principles,
  author    = {Kandel, Eric R. and Koester, John D. and Mack, Sarah H. and Siegelbaum, Steven A.},
  title     = {Principles of Neural Science},
  edition   = {6th},
  publisher = {McGraw Hill},
  year      = {2021},
  note      = {Sensory transduction: phototransduction, mechanotransduction}
}

@techreport{jcgm2012vim,
  author      = {{Joint Committee for Guides in Metrology (JCGM/BIPM)}},
  title       = {International Vocabulary of Metrology --- Basic and General Concepts and Associated Terms (VIM), 3rd edition (JCGM 200:2012)},
  institution = {BIPM},
  year        = {2012},
  note        = {Definitions: calibration, metrological traceability, measurement uncertainty}
}

@misc{nist_traceability,
  author       = {{National Institute of Standards and Technology}},
  title        = {Metrological Traceability: Frequently Asked Questions and NIST Policy},
  howpublished = {\url{https://www.nist.gov/metrology/metrological-traceability}},
  year         = {2024}
}
```
