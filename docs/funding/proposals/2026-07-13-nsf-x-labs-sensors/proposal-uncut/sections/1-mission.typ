
//OFFICIAL INSTRUCTIONS

// [Proposing teams must describe one or more novel platform technologies that the proposed NSF X-Lab is uniquely suited to advance. Successful teams will have a clear vision statement of how their work will result in an end-state that reshapes an entire field of scientific inquiry or a sector of technology, and how their Mission is currently unmet by existing organizational structures and funding mechanisms.]

#import "../helpers/shared.typ": semibold, Dome, Domes, Dome-Mobile
#import "../helpers/xref.typ": collab, flag, suggestion, cut1, cut2, cut3, cut1-block, cut2-block, cut3-block

= Mission <sec-mission>

#let mission_statement = [
Develop and disseminate a new class of scientific instrument called a #semibold([Densely Overlapping Measurement Environment #smallcaps([(Dome)])]) that records the complete perception–action loop of a behaving agent as a single calibrated, uncertainty-tagged measurement, and build the autonomous organization dedicated to the measurement itself to align perceptual and motor neuroscience, musculoskeletal biomechanics, mobile robotics, and embodied AI into a single convergent science of natural behavior.]
 
#block(
  fill: rgb("#ddd"),
  radius: 1pt,
  stroke: (left: 2pt + gray),
  inset: (x: 0.5em, y: 0.5em),
)[#mission_statement]

 

*A New Observable — The Sensorimotor Loop.* Every agent, living or engineered, solves the same problem: sense a thin slice of the world's energy through imperfect transducers and, on that basis, push against the world to move toward its goals — information in, forces out; the brain exists to yank the bones around. We can already measure each component of this loop with extraordinary, ever-improving precision: camera and IMU motion capture for body kinematics, force plates for body–world forces, outward- and inward-facing cameras for the scene and the eyes, EEG and surface EMG for coarse neural and muscular activity in humans, and dense electrode arrays resolving individual spikes in animals. Yet the coherent whole — the shared context each tool illuminates — stays out of reach: occasionally a team stitches several threads together for a heroic integrative study, but the method rarely escapes the Methods section of a few papers spanning a single PhD.

#cut2[Each of these teams set out to answer a question at the edge of their discipline and instead found themselves in the business of tool building. They build these tools because they know the answers to the questions they seek lie in the output of an integrated instrument that does not yet exist. But in an institution that rewards the planting of seeds over the tending of gardens, the long and laborious work of maintaining a novel, complex instrument quickly overwhelms the capacity of an academic lab. Eventually the nascent tool collapses under the weight of its own complexity, and what was meant to be a bridge between two domains of study fades instead into an ever-growing pile of academic abandonware.]

We need a new organization that exists outside of the siloed domains of the Academia that dedicates itself to the #smallcaps[measurement], the development and dissemination of world-class, convivial tools and novel skillsets to explore the landscape the capacity unlocks. That organization is the #semibold[FreeMoCap X-Lab] [FMC-X]. We have already changed the landscape of human-focused research by bringing high-quality motion capture to a global community. With the support of the NSF X-Labs program, we will change the face of science itself.


*A New Instrument — Building the #Dome.* A #Dome is a densely instrumented region of real space engineered to (at some aspirational extreme) record every measurable channel of the agent–environment interaction. In practice, a given #Dome carries a subset of the available instrumentation, yet all #Domes produce the same output. A #Dome is defined by the ontology of its domain rather than its current instruments. A metrologically-grounded record of canonical models defined by their degrees of freedom (DoF), which are hydrated by measurements from whatever instruments are present. A reconstructed `Skull` is assumed to have `Eye`s whether or not an eye tracker measured them, and a `RetinalInput` or `RigidBody` denotes the same quantity whether it came from a human, a ferret, or a marmoset (See @sec-outcomes and @tbl-collaborators).

#cut2[A #Dome is not only an architecture for fusing existing sensors; realizing it forces genuinely new instrumentation. Two transducers do not yet exist at the fidelity the measurement demands, and building them is core to this X-Lab: a binocular eye tracker that resolves ocular torsion and pursues lens accommodation — degrees of freedom commercial trackers omit, yet which set the curl and depth of the image on the retina — and a self-calibrating, actuated camera array that reconfigures its own optics to hold metric calibration across volumes where fixed rigs cannot. Both are built as dense arrays of commodity, phone-grade imagers, so each is a camera-engineering bet rather than a physics one and each rides the falling cost curve of consumer electronics. The #Dome is therefore a new sensing instrument in the literal sense — new transducers, not only a new way to combine old ones.]


*The New Capability.* The same #semibold[Sensor-Grounded Ontology] that lets heterogeneous #Domes share one schema makes the instrument legible to both people and machines: explicit entities and relationships, and typed, grounded data over which a model can build reliable reasoning chains rather than guess at unlabeled streams. That clarity lets a #Dome route its live streams and logs through a local model to assist novices, experts, and developers alike, and lets published results tag back into one shared entity–relationship structure that connects them to the wider body of science.


*Unmet Needs.* #cut2[An instrument like this is unmet by existing organizational structures and funding mechanisms for reasons that are structural, not incidental. Building a scientific instrument is #semibold[a distinct craft, not a downstream application of domain expertise] — mastery of electrophysiology or biomechanics does not transfer to the engineering of a calibrated, maintainable measurement system, and because that difficulty is invisible from outside the craft, integrated measurement is repeatedly scoped as a student side-project, under-resourced, and abandoned when it proves to be a career of engineering rather than a semester of it. The deeper failure is not that these efforts collapse but that #semibold[even their successes do not compound]: a research result and a research instrument are different deliverables, and the second — a one-off tuned to a single rig, undocumented and unmaintained — rarely survives the trainee who built it.]

#cut2[Where durable scientific instruments do exist, they were built by escaping this structure rather than succeeding within it — in institutes engineered for the purpose, or by rare leaders who treated maintenance as first-class against their own career incentives. By Conway's Law, an enterprise of domain-named departments, journals, and grants can only produce domain-scoped instruments, reviewed by people who score work inside a single domain — never the long metrology that turns a proof of concept into shared infrastructure. A tool defined by a research domain partitions its users into specialists; a tool defined by a measurement unites everyone who needs that measurement and becomes a commons precisely because it imposes none of their goals.]

#cut2[The measurement therefore needs its own organization. The PI left a tenure-track position because the institution could not support this work, and founded the FreeMoCap Foundation as a 501(c)(3) whose primary output is open scientific instruments; the X-Lab's operating model follows directly — scope the deliverable to the instrument, hold full-time career engineers for years so the instrument accumulates the mastery that makes it trustworthy, and fan the science out to a standing network of collaborators who use the tools and feed insight back. We know this failure mode because #semibold[we built the thing that does not exhibit it]: a working animal-scale instrument and a global user community, engineered to be installed, run, and extended by people who did not build it — exactly the standard the X-Labs model exists to fund, and one a university appointment cannot sustain.]

#cut2[Platform measurements behave this way once they get cheap. PCR was built to copy DNA and went on to underwrite forensics, diagnostics, and a pandemic response its inventors never imagined; next-generation sequencing became foundational only when it grew cheap and standardized enough for every lab to run, its applications following the price collapse rather than preceding it. The #Dome is built for the same collapse. Its sensing is inexpensive by construction — full-body capture and the eye tracker are commodity-imager arrays on the consumer-electronics cost curve — and because the X-Lab's R&D is grant-funded, the organization carries no dependence on hardware margin and can offer instruments at or near cost. A flagship #Dome targets equivalent-or-better measurement than the PI's ~\$250,000 conventional motion-capture laboratory at a fraction of the price, and a student kit at two orders of magnitude less, the dominant flagship cost being the actuated ground plane rather than the measurement itself. Cost, here, is not a sales point; it is the variable that decides whether world-class measurement lives in a few elite laboratories or in every classroom, clinic, and field site that needs it.]



*The Vision.* The vision of this proposal represents a grand acceleration of movement the FreeMoCap Project has fostered since 2021, and there is no upper limit to our ambition. The global spread of the FreeMoCap software shows that the world has a hunger for this kind of tool, and we intend to feed it. We will build the instrument that will unlock that ability to ask an unknowably vast array of questions, and those questions will carry our tools to every corner of human curiosity. There will be a #Dome in every research lab, every classroom, every Physical Therapy clinic, animation studio,  and athletic facility. Field-deployable wearable #Dome-Mobile systems that provide lab-quality data of humans and animals in the remote wilderness. They will be built into the SCUBA systems of deep sea welders and into the EVA suits and HAB volumes of the ISS. Every country hospital and retirement home will have an AI-enabled, auto-calibrating, self-analyzing Gait/Posture facility that will have plain language conversations with patients about their own movements. There will be  #Domes bolted into the sides of mountains to measure the aerodynamics of hunting hawks, and onto the hulls of shipping boats to understand the mechanics of the dolphins that play in their wake. Every exotic animal enclosure in every zoo could become an automated animal behavior lab, managed through citizen science and then accelerated through auto-training backprojection pipelines. 

#cut1[The analogy we hold in mind is the Internet, which reshaped the world not by making any computer faster but by giving them a shared protocol to relate to one another — turning a disparate array of powerful machines into an interoperable network that changed what it means to be human. We are building the same kind of connective object for the science of behavior.]

We will build the #Dome - The opposite of a space telescope. An empty volume of lenses focused inward on where the body meets the world. We will reveal a new observable and share it broadly to anyone that wants it. We will change our understanding of ourselves, and the ways we interact with the world.




#figure(
  placement: auto,
  // Caption runs in a column BESIDE the image (grid), instead of below it — mirrors
  // the §5 collaborator table. caption: none + manual "Fig. N:" label so the figure
  // is still numbered and @fig-hero still resolves.
  grid(
    columns: (1fr, 0.16fr),
    column-gutter: 1.1em,
    align: (center + horizon, left + horizon),
    =image("../media/2026-07-13-FMC-NSF-XLab-Hero-Figure.jpg", width: 100%),
    [
      #set text(size: 9pt)
      #set par(leading: 0.5em, first-line-indent: 0pt)
      #context [*Fig. #counter(figure.where(kind: image)).get().first(): A Densely Overlapping Measurement Environment (#Dome).* The flagship #smallcaps[Dome-L] physically contains the disseminated #smallcaps[Dome-S] and wearable #Dome-Mobile forms, calibrating every variant against one reference. A centrally controllable camera array and modular force/LED/terrain floor tiles feed calibrated eye, body, world, and force streams into a single model of the sensorimotor loop — segment kinematics, gaze-in-world, and reconstructed retinal input — closing an analysis-to-hypothesis-to-experiment loop inside the same instrument that measures it.]
    ],
  ),
  kind: image,
  caption: none,
) <fig-hero>

