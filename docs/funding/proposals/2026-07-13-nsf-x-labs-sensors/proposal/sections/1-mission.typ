
//OFFICIAL INSTRUCTIONS

// [Proposing teams must describe one or more novel platform technologies that the proposed NSF X-Lab is uniquely suited to advance. Successful teams will have a clear vision statement of how their work will result in an end-state that reshapes an entire field of scientific inquiry or a sector of technology, and how their Mission is currently unmet by existing organizational structures and funding mechanisms.]

#import "../helpers/shared.typ": semibold

= Mission

#let mission_statement = [
We will create a new scientific observable representing the closed loop of the #semibold()[perceptual, mechanical, and environmental] aspects of goal-directed behavior of freely moving organisms to reshape perceptual/motor neuroscience, muscuskeletal biomechanics, embodied/agentic artificial intelligence, and mobile robotics into a new convergent science of #semibold[sensorimotor control.]]
 
#block(
  fill: rgb("#ddd"),
  radius: 1pt,
  stroke: (left: 2pt + gray),
  inset: (x: 1em, y: 0.5em),
)[#mission_statement]

//================
== Buiding the #smallcaps[Dome] 
We will develop, validate, and broadly disseminate a #semibold()[novel research instrument ]we call a *#smallcaps()[Dome]* _(Densely Overlapping Measurement Environment, Ref - Figure 1 - Hero Figure showing full DOME)_, which unifies a heterogeneous array of multi-modal sensors into single, centrally-controllable, metrologically-validated instrument for the measurement and manipulation of a freely moving agent within a specified 3D volume of real-world space (ref DOME-L, DOME-S, and DOME-Mobile in `3. Outcomes`). 

We will organize our technical development around the technical bottlenecks which limit our ability to combine reconstructions the *eye*, *body*, and *environment* into combined represetations whch trace to activity in the central and peripheral nervous system, tagetting development effort on the target of tracking the body, eye, and world with sufficient precision and accuracy so that the retina-projected real-world stimulus is reliable enough to be targetted by cortical measurements in animal models, and body kinematics and kinetics are reliable enough so that surface and implanted EMG measures match full-body muscuskeletal activation models (e.g. via OpenSim or similar). 

By metrologically tracing masuremnets from the heterogeneous sensors along both the Visual and Motor paths across a core set of cross-validating DOME variants built in the FMC-X flagship facility and fanned out to a network of cross-disciplinary collaborators to 

- Internally consistent and metrologically-grounded data set is defined for auto-improving training (e.g. reprojection error to improve tracking models), 
- backfill prior unmeasured DoFs with models trained on correlations in new DOME measurements that specify that DoF. 
- Upfill data from lower-quality DOMEs (e.g. classrooms) based on models trained on flagship data. 
- Unify research from disparate field through use-directed partially hydrating DOMEs based on research domain. 
- Train next gen of embodied autonomous data from densely overlapping data and metrologically grounded downstream estiamtes i.e. Inverse Reinforcement Learning on human/animal data to infer viable strategies, RL models to guide robots use to design controlled experiemnts on humans)


== Unmet instutional needs
- Conway's Law 
  - Academia too siloed for true cross-disciplinary works
  - Funding mechanisms defined as single-discpline institutions. Impossible to properly target proposals to announcments 
  - Rome-on-top-of-Rome development of academic tools defines complexity ceiling for research tools (SKP-EI to help build to global scale)
- System rewards novel discoveries, not long slow work of proper tool making (Tools should be built by masters and taught to students, not other way around)

=== Vision
- We define ourselves by the tool and the measurement, drive our development by direct needs of collaborator network. 
- Form the boundary object between fields
- DOME - makes 

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
