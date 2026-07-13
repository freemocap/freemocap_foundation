
//OFFICIAL INSTRUCTIONS

// [Proposing teams must describe one or more novel platform technologies that the proposed NSF X-Lab is uniquely suited to advance. Successful teams will have a clear vision statement of how their work will result in an end-state that reshapes an entire field of scientific inquiry or a sector of technology, and how their Mission is currently unmet by existing organizational structures and funding mechanisms.]

#import "../helpers/shared.typ": semibold, Dome, Domes, Dome-Mobile
#import "../helpers/xref.typ": collab, flag, suggestion

= Mission <sec-mission>

#let mission_statement = [
Develop and disseminate a new class of scientific instrument called a #semibold([Densely Overlapping Measurement Environment #smallcaps([(Dome)])]) that records the complete perception–action loop of a behaving agent as a single calibrated, uncertainty-tagged measurement, and build the autonomous organization dedicated to the measurement itself to align perceptual and motor neuroscience, musculoskeletal biomechanics, mobile robotics, and embodied AI into a single convergent science of natural behavior.]
 
#block(
  fill: rgb("#ddd"),
  radius: 1pt,
  stroke: (left: 2pt + gray),
  inset: (x: 0.5em, y: 0.5em),
)[#mission_statement]

// COMPACTED 2026-07-13 → single green block below; original three paragraphs commented:
// *A New Observable — The Sensorimotor Loop.* Every agent, living or engineered, must solve the same problem - sense a thin slice of available energy in the environment through a limited set of imperfect transducers and on its basis press against the world to propel itself in the direction of its goals. Information flows in, forces flow out; the brain exists to yank the bones around.

// We can measure individual components of this loop with extraordinary precision progressing at the rate of our technology. Camera and IMU based motion capture can track the kinematics of the body, force plates measure the kinetic forces between the body and world. Outward facing cameras can measure the world, and inward facing cameras can track the eyes. For humans, EEG nets and surface EMG record coarse records of patterns of neural activity in the cortex and musculoskeletal system. In animal models, dense electrode arrays resolve the same signals to the precision of individual spikes of neurons and motor units.  

// And yet, despite the extraordinary precision and progress along these individual threads of measurement, access to the coherent whole representing the shared observational context that each of these tools illuminates remains elusive. Occasionally, a research team will reach across disciplinary divides and stitch several threads together for heroic integrative studies, but the methods rarely escape the Methods sections of a small cluster of publications spanning roughly the timescale of a single PhD. 
 

#suggestion()[
*A New Observable — The Sensorimotor Loop.* Every agent, living or engineered, solves the same problem: sense a thin slice of the world's energy through imperfect transducers and, on that basis, push against the world to move toward its goals — information in, forces out; the brain exists to yank the bones around. We can already measure each component of this loop with extraordinary, ever-improving precision: camera and IMU motion capture for body kinematics, force plates for body–world forces, outward- and inward-facing cameras for the scene and the eyes, EEG and surface EMG for coarse neural and muscular activity in humans, and dense electrode arrays resolving individual spikes in animals. Yet the coherent whole — the shared context each tool illuminates — stays out of reach: occasionally a team stitches several threads together for a heroic integrative study, but the method rarely escapes the Methods section of a few papers spanning a single PhD.
]

// CONDENSED 2026-07-13 → green block below. Original:
//   We need a new organization that exists outside of the siloed domains of the Academia that dedicates itself to the #smallcaps[measurement], the development and dissemination of world-class, convivial tools and novel skillsets to explore the landscape the capacity unlocks. That organization is the #semibold[FreeMoCap X-Lab] [FMC-X]. We have already changed the landscape human-focused research by bringing high-quality motion capture to a global community. With the support of the NSF X-Labs program, we will extend our mission and change the face of science.

#suggestion()[
The measurement needs an organization of its own, outside academia's silos: the #semibold[FreeMoCap X-Lab] [FMC-X], which has already brought high-quality motion capture to a global community and, with NSF X-Labs support, will extend that reach across the science of behavior.
]

*A New Instrument — Building the #Dome.* A #Dome is a densely instrumented region of real space engineered to (at some aspirational extreme) record every measurable channel of the agent–environment interaction. In practice, a given #Dome carries only a subset of the available instrumentation, yet all #Domes produce the same output. A #Dome is defined by the ontology of its domain rather than its current instruments. A metrologically-grounded record of canonical models definied by their degrees of freedom, which maybe unspecied or hydrated by measurements from whatever instruments are present. A reconstructed `Skull` is assumed to carry `Eye`s whether or not an eye tracker measured them, and a `RetinalInput` or `RigidBody` denotes the same quantity whether it came from a human, a ferret, or a marmoset (See @sec-outcomes and @tbl-collaborators).

// [TODO - mention eye tracker and sensor array and stuff?]

// CONDENSED 2026-07-13 → green block below. Original:
// *The New Capability.* The same #semibold[Sensor-Grounded Ontology] that lets heterogeneous #Domes express their measurements in one shared schema makes the instrument legible to a human — explicit entities, formalized relationships, and explicit chains of reasoning from sensors to cannonincal objects — also makes  natively legible to a machine: typed, grounded data over which a model can build reliable reasoning chains rather than guessing at unlabeled streams. By treating complexity management as a first-order concern; a #Dome gains a clarity of expression that lets it route its live streams and logs through a local model to assist novices, experts, and developers alike, and that lets published results tag back into one shared entity–relationship structure connecting them to the wider body of science.
// n its own.   (stray fragment removed)

#suggestion()[
*The New Capability.* The same #semibold[Sensor-Grounded Ontology] that lets heterogeneous #Domes share one schema makes the instrument legible to both people and machines: explicit entities and relationships, and typed, grounded data over which a model can build reliable reasoning chains rather than guess at unlabeled streams. That clarity lets a #Dome route its live streams and logs through a local model to assist novices, experts, and developers alike, and lets published results tag back into one shared entity–relationship structure that connects them to the wider body of science.
]

*Unmet Needs.* Building a scientific instrument is a distinct craft, not a byproduct of domain expertise. Integrated measurement is repeatedly scoped as a student side-project and abandoned when it proves to to require a career of engineering rather than a semester of it, and even its successes rarely outlive the trainee who built them. By Conway's Law, an enterprise of domain-named departments, journals, and grants tends to produce only domain-scoped instruments — never the sustained metrology that turns a proof of concept into shared infrastructure. A tool defined by a measurement rather than a domain unites everyone who needs it and becomes a commons precisely because it imposes none of their goals. The measurement therefore needs its own organization, scoped to the instrument and staffed to maintain it for years — what the X-Labs model exists to fund and a university appointment cannot sustain.


// CONDENSED 2026-07-13 → see green block below. Original three Vision paragraphs kept here, commented:
// *The Vision.* The vision of this proposal represents a grand acceleration of movement the FreeMoCap Project has fostered since 2021, and there is no upper limit to our ambition. The global spread of the FreeMoCap software shows that the world has a hunger for this kind of tool, and we intend to feed it. We will build the instrument that will unlock that ability to ask an unknowably vast array of questions, and those questions will carry our tools to every corner of human curiousity.There will a #Dome in every research lab, every classroom, every Physical Therapy clinic, animation studio,  and athletic facility. Field-deployable wearable #Dome-Mobile systems that provide lab-quality data of humans and animals in the remote wilderness. They will be built into the SCUBA systems of deep sea welders and into the EVA suits and HAB volumes of the ISS. Every country hospital and retirement home will have an AI-enabled, auto-calibrating, self-analyzing Gait and Posture facility that will have plain language conversations with patients about their own kinematic data. There will be  #Domes bolted into the sides of mountains to measure the aerodynamics of hunting hawks, and onto the hulls of shipping boats to understand the mechanics of the dolphins that play in their wake. Every exotic animal enclosure in every zoo could become an automated animal behavior lab,managed through citizen science and then accelerated through auto-training backprojection pipelines.

// The Internet did not reshape the world by making computer run faster, it do so by giving them the ability to communicate. In doing, it turned a disparate array of powerful machines, into an interoperate network that changed what it means to be a Human. 

// We will build the #Dome - The opposite of a space telescope. An empty volume of lenses focused inward on where the body meets the world. We will build a new observable and share it broadly to anyone that wants it. We will change our understanding of ourselves, and the ways we interact with the world.

#suggestion()[
*The Vision.* This proposal is a grand acceleration of the movement FreeMoCap has fostered since 2021, and there is no upper limit to our ambition. The global spread of the software already shows the world's hunger for this kind of tool, and we intend to feed it — a #Dome in every research lab, classroom, clinic, and athletic facility; wearable #Dome-Mobile systems that bring lab-quality data to humans and animals in the field; and zoo enclosures turned into around-the-clock behavior labs. The analogy we hold in mind is the Internet, which reshaped the world not by making any computer faster but by giving them a shared protocol to relate to one another — turning disparate machines into a network that changed what it means to be human. The #Dome is the opposite of a space telescope: an empty volume of lenses focused inward on where the body meets the world. We will build a new observable, share it with anyone who wants it, and change how we understand ourselves and act in the world.
]

#figure(
  image("../media/2026-07-12-fmc-xlabs_all_v3.jpg", width: 80%),
  caption: [*A Densely Overlapping Measurement Environment (#Dome).* The flagship #smallcaps[Dome-L] physically contains the disseminated #smallcaps[Dome-S] and wearable #Dome-Mobile forms, calibrating every variant against one reference. A centrally controllable camera array and modular force/LED/terrain floor tiles feed calibrated eye, body, world, and force streams into a single model of the sensorimotor loop — segment kinematics, gaze-in-world, and reconstructed retinal input — closing an analysis-to-hypothesis-to-experiment loop inside the same instrument that measures it.],
) <fig-hero>

