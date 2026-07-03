// ── 1. Mission ──
#import "../helpers/shared.typ": semibold
= Mission

// ── Mission statement — pick your favorite variant, delete the rest ──

#let mission = [The #smallcaps()[Mission] of the proposed NSF X-Lab is to align _perceptuomotor neuroscience_, _musculoskeletal biomechanics_, and _mobile robotics_ into single convergent science of *sensorimotor control* in *real-world* environments.]


*Funnel:* Interaction with the environment is the most fundamental act of living. Information flows in, forces flow out - the brain exists to yank the bones around. 
// _[TODO - This is a good first sentence- dont  touch it. ]_

*Hedge:* Investigation the sensorimotor control of a human-and-non-human-animal/artificial-agent (HANHA/AA) is fractured across disconnected academic (sub)disciplines, including but not limited to: (perceptuomotor) neuroscience, (musculoskeletal) biomechanics, and (legged) robotics, each of which spawns its own internal set of specializations and hyper-specializations within those.
_[TODO - This is pretty good , but fairly overloaded anc could prob be clarified ]_
*Gap:* 

 This reductionist approach to science is incredibly powerful, and has yielded advanced technologies and incredible precision of measurement and prediction, but has largely failed to deliver on the implied promise that the careful investigation of these gossamer threads of scientific insight would coalesce the patterns of the unified whole 

// [TODO - Tighten, soften 'promise'language (implies blame, hinders "we actually love hyperspecialization and want to give it a *context* in which to thrive" angle. Make more evocative of weaving and webs and nets and meshes and stuff (which will come up later when we talk about Ontology and stuff like quinian web of belief and putnam and stuff))]. 

 
*Hero:* 
  A high quality integrated platform directly designed for the use-case development of complete empirical capture of an awake behaving human-and-non-human-animals (HANHA) would transform the scientific landscape by creating a technical commons whereby specialists and cross-disciplinary researchers can productively interact in service of the shared and unified scientific endeavor.

  // _[TODO - Fix language, make less redundant with surrounding text. make sure to hit the 'instrument not software' and 'technical commons' stuff and Novel Organization and Unmet by current structures thing]_

#block(fill: rgb("#f5f5f5"), radius: 4pt, stroke: (left: 1.5pt + gray),  inset: (x: 1.5em, y: 0.75em))[#mission]
  
// Dumb Acronym Options
// LOOM
// Layered Observed Ontological Mesh
// Layered Observation Ontology Mesh
// L - Linked, Large
// O - Ontology, Observation (all forms, adverbs nouns, etc)
// Mesh, Machine, Manifold (too mathy unless precise), Modalities
// Layered Ontology of Obeserved [Modalities/Measurements/]
// Layered Ontology of Observed Measurements (LOoOM lol jk jk ) 

// Other acronyms, TBD:

// Human And Non-Human Animal / Artificial Agents (HANHA/AA - Meant to say "Yes Humans are animals, but they are special and more important than other animals and also robots count too (functionally equivalent if materially unrelated, use the same EE ), but they are totally not animals so we put them behind a slash")
// Goal Oriented Task Dynamics (GOTD - Parameters of environment that define succuss or failure in a given context, e.g. Hayhoe)
// Empirically Available Environmental Energy (EAEE - a thing that could be measured, e.g. Gibson)
// Complete Empirical Capture Volume (CECV - a densely instrumented region of real-world space asiprationally organized to record all EAEE in a given 3d capture volume, e.g. Matthis et al/Freemocap  )


== Building a  LOOM [Layered Ontology of Observed Measurements]
In service of our Mission, we will build a *densely instrumented capture volume* to record all measurable aspects of the agent/environment interaction (Complete Empirical Capture Volume), including (but not limited to) binocular eye and 3d gaze tracking, full-body kinematics and kinetics, and neural activity in the central and peripheral nervous systems.

[TODO - Something about how complexity IS the target. We want to weave together all these existsing threads, using the technolgoy that exists when we can (e.g. neuropixels, miniscope, ferris EEG, MD's surface/implant EMG that can resolve individual motor unit firings), and building the components that don't as needed (previous target- kinematics (freemocap did it), next step eye trackers). Introduce the concept of composable scale-free complexity managed through modern software philosophy of ontology-based development (e.g. Palantir, Anduril, with their projects (Maven, that HUD thing Anduril makes) as examples of "new instrument derived from sophisticated complexity management" ). Mention @SKP-EI ]

== Novel Organizational Structures: The FreeMoCap Foundation X-Lab (FMCF-X)

The Free Motion Capture (FreeMoCap) Foundation is an 501c3 certified public charity founded by the PI (@SKP-JM - JM) in 2021 in response to two-part realization: (1) that the best way to advance the research program embodied by Matthis et al (2013, 2014,2015, 2017, 2018, and 2022) was to prioritize building tools that allowed others to replicate his real-world sensorimotor control methodology, and (2) the traditional structures of academic research are fundamentally incompatible with high-level tool building due to a perverse incentive structure that near-exhaustively prioritizes publication quantity over quality and impact and the inherent skill-ceiling  associated with the constant labor churn assocaited with doing research within a degree granting institution. 

#pagebreak()

 --

 SCRATCH NOTES BELOW
- 3d volume of densely instrumented real-world space aimed to capture all empirically measurable aspects of the agent/environment interaction
  - All internal and external features of the agent 
    - Biomechanical state
      - Full-body kinematics - Motion Capture
      - Body/Environment Center(s) of Pressure - Force Plates, Modelling
      - Joint torques - Inverse Dynamics
    - Muscle Activity 
      - Muscle/Motor-unit Activation - Surface/Implanted EMG, OpenSim-style modelling
    - Perceptual Inputs 
      - binocular gaze tracking - Custom built binocular eye trackers
      - Retinal input projection  -  World-aligned inverse projective ray tracking @matthis2022
    - 
- Scale free (same ontology for fruitfly mocap as untethered outdoor exploration)
- Truth-preserving sensor-to-model pipelines, grounded in empirical sensors 
- Complexity management as a Top-level Concern. 
  - Pipelines coalesce across functionally equivalent paths
    - Static camera mocap, IMU-mocap, drone-swarm mocap provide multiple estimates of same ontological object

  - Something about #semibold[Accelerate interdisciplinary collaboration through Hypothetical Student design] — Consideration of usage by a Hypothetical Student usage in mind allows collaboration, communication, and movement across hyperspecialized niches (while still allowing hyperspecialized work to flourish-in-context within their contextualized niche)
  - #semibold[Enable Mesoscale Revolution] by celebrating and contextualizing hyperspecialized research niches into use-defined something
  - Something about #semibold['american hegemonic dominance'] by creating the instrumentally-grounded ontological commons within which convergent research program will occur

== Vision Statements 
- #semibold[Fulfill Reductionist's Promise] — Integrate disparate hyperspecialized advancements into a human-outcomes oriented use-inspired research platform
- #semibold[Break the skill-ceiling of academic research] by building a convergent research program organized around communal tool building and shared ontologies rather than an infinite parade of 8-10pg PDFs and 12 minute talks.
- [Some kinda 3rd thing], eg.
  - Something about #semibold["Composable Complexity"] through shared ontology




// // Heilmeier Catechism 
// *What are you trying to do?*

// *How is it done today, and what are the limits*

// *What is new, why will we succeed?* 

// *Who cares? Who will benefit?* 

// *Risks and Payoffs*

// *Milestones and Key Performance Indicators* 