// ── 1. Mission ──
#import "../helpers/shared.typ": semibold
= Mission

// ── Mission statement — pick your favorite variant, delete the rest ──

#let mission = [The #smallcaps()[Mission] of the proposed NSF X-Lab is to align _perceptuomotor neuroscience_, _musculoskeletal biomechanics_, and _mobile robotics_ into single convergent science of *sensorimotor control* in *real-world* environments.]

// // ── 1: Original — inset only, no borders ──
// #block(inset:(x:3em, y:.5em))[#mission]

// #v(0.6em)
// #align(center, line(length: 30%))
// #v(0.6em)

// // ── 2: Two vertical rules (left & right hairlines) ──
// #block(stroke: (left: 0.5pt + gray, right: 0.5pt + gray), inset: (x: 2em, y: 0.5em))[#mission]

// #v(0.6em)
// #align(center, line(length: 30%))
// #v(0.6em)

// // ── 3: Left bar only (blockquote style) ──
// #block(stroke: (left: 1.5pt + gray), inset: (x: 2em, y: 0.5em))[#mission]

// #v(0.6em)
// #align(center, line(length: 30%))
// #v(0.6em)

// // ── 4: Subtle fill + rounded corners (no stroke) ──
// #block(fill: rgb("#f5f5f5"), radius: 4pt,  inset: (x: 1.5em, y: 0.75em))[#mission]



*Funnel:* Interaction with the environment is the most fundamental act of living. Information flows in, forces flow out - the brain exists to yank the bones around. 

*Gap:* 

Investigation the sensorimotor control of a human-and-non-human-animal/artificial-agent (HANHA/AA) is fractured across disconnected academic (sub)disciplines, including but not limited to: (perceptuomotor) neuroscience, (musculoskeletal) biomechanics, and (legged) robotics, each of which spawns its own internal set of specializations and hyper-specializations within those. This reductionist approach to science is incredibly powerful, and has yielded advanced technologies and incredible precision of measurement and prediction, but has largely failed to deliver on the implied promise that the careful investigation of these gossamer threads of scientific insight would coalesce the patterns of the unified whole. 


*Hero:* 
  A high quality integrated platform directly designed for the use-case development of complete empirical capture of an awake behaving human-and-non-human-animals (HANHA) would transform the scientific landscape by creating a technical commons whereby specialists and cross-disciplnary researchers can productively interact in serivce of the shared and unified scientific endeavor.

#block(fill: rgb("#f5f5f5"), radius: 4pt, stroke: (left: 1.5pt + gray),  inset: (x: 1.5em, y: 0.75em))[#mission]
  

== Novel Platform Technology: Complete Empirical Capture Volume (CECV)
In service of our Mission, we will build a *densely instrumented capture volume* to record all measurable aspects of the agent/environment interaction, including (but not limited to) binocular eye and 3d gaze tracking, full-body kinematics and kinetics, and neural activity in the central and peripheral nervous systems.

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