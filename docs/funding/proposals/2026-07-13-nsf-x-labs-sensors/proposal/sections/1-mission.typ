// // ════════════════════════════════════════════════════════════════════════
// //  MISSION SECTION 
// //
// //  Structure:
// //     funnel/hook → fracture → instrument → build → xlab → vision → mission
// //
// //
// //  Selection-criteria map (from NSF-OTASO §11.2 Mission Clarity & Outcomes):
// //     C1  ambitious + technically sound + well-defined
// //     C2  landscape justifies a dedicated FULL-TIME team
// //     C3  aligned with X-Labs strategic objectives (reshape a field)
// //     C4  unmet by existing institutions
// // 
// ═══════════════════════════════════════

// #emph[ Official Instructions (from template):
//     Proposing teams must describe *one or more novel platform technologies* that the proposed NSF  X-Lab is _uniquely suited_ to advance. Successful teams will have a clear *vision statement* of how *their work will result in an end-state that reshapes an entire field of scientific inquiry or a sector* of technology, and how their Mission is currently *unmet by existing organizational structures* and  funding mechanisms.

  
//   1. #smallcaps()[Describe *one or more novel platform technologies* ]
//     - that the proposed NSF  X-Lab is _uniquely suited_ to advance
  
//   2.  #smallcaps[Clear *vision statement*]
//     - How their work will result in an end-state that reshapes:
//       -  an entire field of scientific inquiry or
//       -  a sector of technology
//     - How their Mission is currently unmet by:
//       - Existing organizational structures
//       - Funding mechanisms.
//  ═══════════════════════════════════════
// ]
#import "../helpers/shared.typ": semibold

= Mission 

#let mission = [
  The #smallcaps()[Mission] of the *FreeMoCap Foundation X-Lab [FMC-X]* is to create  a novel research apparatus called a *Dense Observation Measuring Environment [DOME]* that fuses heterogenous instrumentation for the measurement or manipulation of the _perceptual, motor, and environmental_ factors realting to the Agent/Environment interaction into a single convergent stream of calibrated, synchronized, semantically-coherent measurements through validated, uncertainty-traced, hardware-agnostic, sensor-to-model pipelines developed and disseminated in collaboration with a broad network of cross-disciplinary researchers #semibold()[to build a unified science of the sensory/motor control of biological and articial agents in real-world environments].

]

#block(fill: rgb("#f0f"), radius: 1pt, stroke: (left: 2pt + gray ),
inset: (x: 1.5em, y: 0.75em))[#mission]

// A Dense Observation of an Agent/Environment is defined as a multi-modal estimate of a set of of records arising from heterogenous ...blah blah blah 

 
== Dense Observation Measuring Environment
- *DOME-L*: Flagship in Greater Boston area. Large enough to fully encompass smaller DOME-S and DOME-Mobile units to assist development and validation, and stress test ability to calibrate large spaces.
- *DOME-S*: Extension of the USB-camera based motion capture volumes we have been building as part of the FreeMoCap Project. Representative of the kinds of DOME that would be built in a research lab or classrom.
- *DOME-Mobile*: Wearable, mobile DOME, capable of generating the precisely the same model Dense Observations as a static DOME in unconstrained indoor or outdoor environemnts. Contionues the lineage of PI's Gaze/Gait and Retinal Optic Flow research @matthis2018 @matthis2022 @muller2023

== *Targets*
  - *Measurment target* - Verdical estiamtes of retinal projection during real-world locomotion @matthis2022
  - *Integration goal* - Full pathway mapping from photon-retinal transduction on one end, and reaction force detection/generation at the substrate boundary (i.e. the ground)- Buy what we can, build what we can't
  
  - Build as much of the whole thing with off-the-shelf equipment as we can, then build what doesnt exist
  - Let the research questions, research-bottle necking friction, and uncertainty-tracing drive development. 



  - 
  - *Bottlenecks* [TODO - re-org this into a more coherent 'Problem -> Solution' format]
    - *Eye trackers* - No open mobile eye trackers exist. Pupil still makes the Core, but its dev is frozen. No modern eye tracker can measure torsion or lens accommodation at any price. We can build our own eye trackers, but in the mean time we still use the best availavle (Pupil Core)and partially hydrate model with the best data we have.
      - After we make our cool new eye tracker, we use the newly unlocked DoF along with from previously existing DoFs to train a model that lets you backfill old data with estimations of previously unmeasured DoF. 
    - *Centrally Controllable Programmable Capture Volume* - Moving camreas around is a bottlenecking-friction (limits reseach because its too hard to move the cameras), so we build a linked array of centrally and programmatically controllable camera mounts that control extrinsics and intrinsics, to create a system for a self-deploying capture volume (select region in available volume and cameras configer themselves for maximal coverage)
    - *Hybrid Camera/IMU Kinematics* - Outside-in mocap systems (e.g. camera-based) produce high-accuracy/low-precision kinematic estimates (noise estiamte centered on True value), Inside-Out systems (e.g. IMU-suits) produce high-precision/low-accuracy estimates. Their hybrid should be much better than either alone.
      - we will use the DOME-Mobile nested in the DOME-W to develop and validate this sensor-fused hybrid estimate. This way, we can create full interoperability between Human estimates derived from cameras, IMU's or both
    - *Drone-Swarm Mocap* - Drone swarm to create hybrid mocap during outdoor locomotion 

== *Data consumers*
- Train better models using reprojected 3d estimates onto each camera's estimates
- Create validation dataset for consumer labs
- Train new models using new data of extreme movements (fix COCO datasets are old/limited problem)
- Package DOM datasets for RL training in robots, use resultant control theoretically models as testable hypotheses [Cite that thing that says training NN on a task predicts neuron firing for animal performing that task]

== *Environment Manipulation*
- Animals - Like the BS magnet toy gantry
 
- Floor planels
  - 3d terrain - For control, and validating egocentric mapping from head-sensor array 
  - Soft, slippy, sticky substrate 
  - LED floor and/or Wall Panels 
    - for ground and walls (Like a CAVE, ARGPv3 @matthis2013 matthis2014 matthis2015 matthis2017)
    - Stimulus manipulation and gameification tasks (bug squishing, stepping stone, obstacle avoidance, dual-attention, etc)
- VR/Projector - Build equivalent methods in LED, VR, and Projector methods - measure uncertainty at those simulation boundaries (i.e. people step weird in VR, can we figure out why using VR + LED comparison?)

== Vision 
The perception/action loop of biological and artificial agents follows the same pattern: sample a thin slice of the available environmental energy through a limited set of imperfect transducers, then generate reaction forces against a substrate in service of some goal. Information flows in, forces flow out; the brain exists to yank the bones around.

Many disciplines within the broad vehicle of science point their lenses at key components of this complex exchange sensation, perception, decision, and action. Perceptual neuroscientists built magnificently precise tools and theories to measuring and explicating the neural mechanisms behind the cascade of neural activity which follows the absorbtion of a photon by a opsin molecule in the retina. Musculoskeletal biomechanists have characterized the stretch/strain curves the winding `titan` filaments in our muscle spindles and mapped them to the full-body muscle activity of human movement [TODO - rewrite so its F&B reaching - photon - retina - V1 - etc, GRF - GTO - Muscle, motor - spine - muscle - force, or something]. 

Each member of these individual research clades understands that their work is contextualized in a broad and deeply cross-disciplinary domain of inquiry, and each strives to reach out across those disciplinary divides to their allies in nearby fields. But in practice, most of those threads fail to connect. Walk through the poster session of a visual neuroscience conference, you will mostly encounter variations of two-alternative-forced-choice-center-out-fixation tasks in non-mobile, head-fixed animal models. At the motor neuroscience conference, it will be single-joint planar reaching movements through a force field. At the biomechanics conference, its steady state walking on a treadmill. Each clade builds beautifully nuanced and complex theories in their domain of inquiry, but the pieces never quite fit together to form a coherent whole. Each group occupies a different room in the tower of Babel. They learned the nuances of different instruments, mastered different branches of mathematics. They are motivated by different kinds of arguments and ground their assertions in different flavors of statistics. They call out to each other in the first and last paragraphs of their research articles, the distant call of an unmet ally echoing across the yawning darkness between the fields. 

And yet we are a species of explorers and we are drawn to those dark spaces. Each new generation of scientist builds new tools for their exploration; most dig down within their specialized niche, but some brave few build outwards towards the distant glowing shapes in the fog. Some of those even succeed, building new intergrations of previously disjointed theory - shedding light on new territory and the promise of new science at the intersections between deep domains of existing knowledge. But the discoverer cannot stay there. As reward for their success, they are bundled up and shipped to a new lab across the world with a rubber stamp on their forhead that reads #smallcaps["This One Knows Neuroscience."] 

Except they don't really, do they? Their expertise is in Neuroscience *and* Biomechanics *and* Robotics *and* the a few other disparate skillsets as well. They know more about each of those topics than _almost_ anyone in the world... except for the all the people who will be evaluating their progress, scoring their grants, and reviewing their papers. To a specialist, cross-disciplinary research 


// The tools their discovery - built through years of hard battles and tough lessons - are handed off the latest, least experienced member of the research group with the instruction "Pick up where they left off." And sometimes they do - bolting new complexity on an inherted pile of technical debt - until eventually it collapses under its own weight and is thrown onto an ever-growing pile of academic abandonware - unique and powerful tools that could have changed the face of science and human society... but never made it across the hall. 


Mentorship-based academic research has it backwards - Tools should be built by masters and taught to students, not the other way around. We should bake the wisom of our experise and long experience into the tools put into the hands of students and other researchers. Most users of the tool will never notice the myriad ways whey have been gently guided away from pinch points and spinning blades of empirical research, and the ones that do may become the next generation of tool builders. 

We must separate the building of tools from the usage of them, 



