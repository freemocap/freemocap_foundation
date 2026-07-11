
#import "../helpers/shared.typ": semibold

= Mission

#let mission_statement = [
The #smallcaps()[Mission] of the *FreeMoCap Foundation X-Lab (FMC-X) *is to develop and disseminate the tools to measure a new scientific observable representing the closed loop of the #semibold()[perceptual, mechanical, and environmental] aspects of goal-directed behavior of freely moving organisms to reshape perceptual/motor neuroscience, muscuskeletal biomechanics, embodied/agentic artificial intelligence, and mobile robotics into a new convergent science of #semibold[sensorimotor control in natural environments.]]
 
#block(
  fill: rgb("#ddd"),
  radius: 1pt,
  stroke: (left: 2pt + gray),
  inset: (x: 1em, y: 0.5em),
)[#mission_statement]

//================

== Measurement target



We will organize our technical development around the technical bottlenecks which limit our ability to combine reconstructions the *eye*, *body*, and *environment* into combined represetations whch trace to activity in the central and peripheral nervous system ...


- Best Eye trackers ever made at any price 
- Best Mocap system ever made at any price 
  - (but we'll sell em *real* cheap) 
- Completely new fully integrated platform, exposing entirely new observable defined by densely overlapping measurements from the DOME

- DOMEs *everywhere* 
  - Every human or animal-focused lab
  - Every hospital and PT clinic
  - DOMES on the space station and Vomit Comet rocket (study sensorimotor control and VOR in microgravity)
  - DOMES in athletic centers - Training athletes for high performance through education into their underlying sensorimotor control systems
  - DOMES in mobile robot and drone labs - Align with human research, stop the robot folks from handrolling their own mocap all the time 
  - DOMES at the bottom of swimming pools and integrated into SCUBA systems of underwater welders (and other specialized trades)
  - Mobile DOMES studying animals in natural enviornment, mounted to the bottoms of ships and integrated with ultrsonic sensors to mocap dolphins playing in the wake
  - Tiny DOMEs to study honeybee and dragonfly visual flight control 
  - DOMES in every classroom! 
    - In both science/tech/health classrooms AND animation/game design classrooms (DOMEs for animation mocap, freemocap already proved this works)
    - Always build "cheaper than a textbook" version of all hardware
    - Comensurate data output (with less precision and fewer modalities)
    - Prepare new generation for a future where human and robot centered research is focused on full-body kinematics and 3d binocular eye tracking with retinal projection. 
    - 
// ```
// *(Eye tracker) -> Eye kinematics *------------------------------------------------------------------\
//                                                                                                      \
//                                                                                                       \                               
//                                                                                                        \
// *(Camera-based Motion Capture) -> Body Landmark Trajectories*                                           ------> *Gaze Kinematics*--------------------\
//                                                              \                                         /                                             \
//                                                               -->*|Hybrid Estimate|-> Body Kinematics*-                                                 --> *Retinal Projected Image / Optic Flow, Input to Visual System*
//                                                             /                                         \                                              /
// *(IMU-based Motion Capture) -> Body Segment Orientation* --/                                           -> *Inverse Dynamics -> Muscle Activity*      /
//                                                                                                       -/                                            /
// *World--> Measure --> Ground Reaction Forces (Kinetics)*----------------------------------------------/                                            /
//       |            |                                                                                                                              /
//       |            *-> (Groundplane geometry, terrain floor panels, head-mounted ground scanner(part of eye tracker))*---------------------------/
//       |
//       *--> Manipulate (Experiment Controlled Experiments VR, AR, XR with LED floor panels, magnet gantried fictive prey target in the ferret case)*

// ```

// veridical estimates the #semibold[projected retinal stimulus] in the eye and #semibold()[internal and external reaction mechanical forces] on the body with sufficient accuracy and precision to model and predict the resultant cascades of downstream activation in the peripheral and central nervous systems. 


== Flagship 
We will develop and validate a #semibold()[novel research instrument ]we call a *#smallcaps()[Dome]* _(Densely Overlapping Measurement Environment, Ref - Figure 1 - Hero Figure showing full DOME)_, which unifies a heterogeneous array of multi-modal sensors into single, centrally-controllable, metrologically-validated instrument for the measurement and manipulation of a freely moving agent within a specified 3D volume of real-world space (ref DOME-L, DOME-S, and DOME-Mobile in 3. Outcomes). 





// EDIT/REMOVE - 
// We will package these capacties into a set of convivial tools and hardware- and species-agnostic instrumentation platform and disseminate them to a network of research collaborators and through the existing, gloabally expansive community of FreeMoCap users, and drive our development on the basis of user-reported capacity blocking bottlenecks and limitations. Our organization, the tools we build, and the new observations we unlock will form a boundary object that ]. 
  
 