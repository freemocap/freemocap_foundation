// ════════════════════════════════════════════════════════════════════════
//  MISSION SECTION 
//
//  Structure:
//     funnel/hook → fracture → instrument → build → xlab → vision → mission
//
//
//  Selection-criteria map (from NSF-OTASO §11.2 Mission Clarity & Outcomes):
//     C1  ambitious + technically sound + well-defined
//     C2  landscape justifies a dedicated FULL-TIME team
//     C3  aligned with X-Labs strategic objectives (reshape a field)
//     C4  unmet by existing institutions
// 
//  Official Instructions (from template):
//     Proposing teams must describe *one or more novel platform technologies* that the proposed NSF  X-Lab is _uniquely suited_ to advance. Successful teams will have a clear *vision statement* of how *their work will result in an end-state that reshapes an entire field of scientific inquiry or a sector* of technology, and how their Mission is currently *unmet by existing organizational structures* and  funding mechanisms.
// ════════════════════════════════════════════════════════════════════════

#import "../helpers/shared.typ": semibold



// ════════════════════════════════════════════════════════════════════════
// BEAT 1  -  Funnel/Hook: 
// What are we talking about? Cows? Hurricanes? Nebulae? The first sentence defines the topic, and should 'hook' the reader. "Hey, here's something to think about."
// ════════════════════════════════════════════════════════════════════════

#let hook = [Every living and engineered agent solves the same problem:
it senses a thin slice of the energy available in its environment through a limited set of 
imperfect transducers, and on that basis generate reaction forces against an available substrate to propel its toward its goal. Information flows in, forces flow out; the brain exists to yank the bones around.]


// ════════════════════════════════════════════════════════════════════════
// BEAT 2 -  GAP - (i) respect the vibrant specialized fields, THEN (ii) name the gap  — the concrete thing that cannot currently be measured — and  (iii) hinge into the instrument with an explicit "What is needed…" line.
// ════════════════════════════════════════════════════════════════════════

// -- 2a. HEDGE: honor the fields (your reviewers built these) --
#let gap_hedge = [Perceptuomotor neuroscience, musculoskeletal
biomechanics, and legged robotics have each built vibrant research programs
and technically marvelous instruments — Neuropixels, markerless motion
capture, force-plate gait labs, motor-unit EMG [TODO - Improve this list, focus on measurement rather than company/tool (kinetics, kinematics, binocular gaze, neurons (ephys neuropixel and w/e a 1Photon miniscope does), muscle activity etc, like in `fracture_need_b`)]— around individual threads of the perception-action loop. Each field measures its thread with extraordinary
precision.]

// -- 2b. GAP: name what's actually impossible (two prongs) --
// Prong 1 = TECHNICAL gap (no instrument spans the modalities/scales)
#let gap_technical = [But no instrument captures the loop whole. The
threads are measured in incompatible coordinate frames, on unsynchronized
clocks, under semantic schemes that do not talk to each other, so the single
most basic question — what did this agent see, and what did it therefore do —
has no calibrated, unified answer. The fracture is in the measurement itself,
not just in the sociology of the fields. _[TODO - this sucks, improve it. ok content, needs rewrite. No whole instrument, and individual components rot w/o a context, esp eye tracking. ]_]

// Prong 2 STRUCTURAL gap (why nobody has built it) — sets up XLAB beat
#let gap_structural = [And the instrument that would close it falls
through every existing crack: too integrative for a single-modality grant, too
infrastructural to be a paper, too long-horizon for a graduate degree, too
open to be a product. The academic incentive structure rewards the thread, not
the loom. _[TODO - This also sucks. content ok, needs rewrite. ]_ ]

// // -- 2c. THE HINGE: "What is needed…"  --
#let gap_need_a = [#semibold[What is needed is a new class of scientific
instrument]: a calibrated, synchronized, semantically-unified recording of the
complete agent-environment interaction — every empirically available channel
of an agent's sensory/perceptual input and motor/mechanical output captured, calibrated, and processed with metrologically-grounded, truth-preserving pipelines into a unified scientific ontology _[TODO - Clarity, Awk, Run-on, overloaded]_.]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 3 — INSTRUMENT  (Hero 1: the platform TECHNOLOGY)
// ════════════════════════════════════════════════════════════════════════

#let hero_instrument = [We call the instrument a #semibold[Dense Empirical
Capture Volume]: a densely instrumented region of real-world space engineered
to record every measurable channel of the agent-environment interaction at
once — binocular gaze and reconstructed retinal input, full-body kinematics
and kinetics, muscle and motor-unit activation, and central and peripheral
neural activity — all spatially calibrated, temporally synchronized, and
expressed in a single sensor-grounded ontology so the channels are directly
commensurable rather than merely co-recorded. 


// [TODO - Talk about hardware before software]
 Because the instrument is defined by its ontology rather than its hardware, measurements for differnt sensor systems may hydrate the same model. Camera- and IMU-based motion capture each measure the same `Human` kinematics with very different uncertainty profiles, so sensor-fused estimate will be far more reliable than then either sensor's estmate alone, but all three estimtes (camera, imu, or hybrid) define the exact same `Human` model. The shared ontology aligns across different combinations of sensors, and across different generations of the same transducer. A `Head` has `Eyes` even if the participant did not wear an eye-tracker. An `Eye` defines `Torsion`, and `LensAccomodation`, even if the current era of eye trackers can only estimate `Adduction` and `Elevation.` And then once we build a better eye tracker that *can* record torsion [TODO - Reference `Outcomes` section where we talk about eye tracker plans], we can train a model relating `Torsion` <-> `Adduction` <-> `Elevation` and use it to backfill older data as a way to test next generation of  theories against the previous generation's  data. _[TODO - Good content, some of the detail may want to move to a different section. ] _]



// ════════════════════════════════════════════════════════════════════════
//  BEAT 4 — BUILD  (the concrete deliverable )
// ════════════════════════════════════════════════════════════════════════

// -- 4a. FreeMoCap X-Lab Facility
#let build_flagship = [The FreeMoCap X-Lab will build a flagship facility for a large-scale DECV [DECV-L for Large] facility in #semibold[Boston, MA]. The DECV-L will be a warehouse-scale modular instrument designed for recording full-body kinematics, kinetics, and binocular eye tracking of freely moving humans within configurable open volume (Building on the PI's indoor AR/MoCap history @matthis2013 @matthis2014 @matthis2015 @matthis2017).. Critically, the DECV-L will be large enough to fully cover smaller DECVs representative of the kinds that would be build by other research labs and FreeMoCap users, so the DECV-L can serve both as a flagship representative of the DECV instrument, but also a validation and meta-experimental platform to assist in the dissemination of this platform to downstream consumers. In addition the DECV-L will large enough to assist in the development and validation of a wearable IMU-based mocap suit plus binocular eye tracker and head-mounted world camera (DECV-W for Wearable), buiding on the lineage of the PI's outdoor gaze/gait control @matthis2018 and retinal optic flow research @matthis2022 @muller2023 @muller2024 @muller2022 - something something mention the drone swarm thing or leave to later?)]
//  [TODO - Also need to mention the robot connection DECV feeds Robot models, robot control theory inform human/animal research (tested via environmnet manipulating experimens via ARGP and VR, etc). Each data stream in DECV output is modeled relative to the other, so each included data set helps to learn statstical structures across modalities, so even 
//  single-discipline researchers contribute to coherent whole! ]

// -- 4b. The animal / prosthetic / robotics network (functionally equivalent) --
#let build_network = [Around the human flagship sits a federated network of
partner labs running #semibold[functionally-equivalent instruments] on their
own model systems — the invasive neural modalities that cannot go on humans
(Neuropixels, miniscope calcium imaging) living on the animal branches, plus
prosthetic and robotic platforms as engineered agents in the same ontology.
We have already built plausibly best-in-world eye-trackers for ferret and mouse — a ferret rig fusing three-camera gaze, full-body kinematics, AR display, and world cameras in one calibrated system is, in effect, a miniature animal-scale instance of the whole flagship,
already demonstrated and now integrating electrophysiology [TODO - Also mention MD Guinea fowl and AH Marmoset connections].]

// -- 4c. What binds them into ONE distributed instrument --
#let build_binding = [The flagship wings and the partner labs begin to resemble a world-spanning
distributed instrument, with distributed groups of researchers pouring sensor-grounded estimates one metrological traceability chain (every site's measurements uncertainty-tagged and commensurable across species and equipment
tiers).[TODO - Again, nice thoughts, words need cleaning]]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 5 — XLAB  (Hero 2: why this can't be done inside existing structures)
//  JOB: the organizational-gap answer the solicitation explicitly asks for
//  ("how the Mission is unmet by existing organizational structures and
//  funding mechanisms"). Frame as structural/economic, NOT grievance — your
//  reviewers are academics. Scores C2 (justifies a dedicated full-time team).
// ════════════════════════════════════════════════════════════════════════

// Angle A — the incentive-mismatch framing (structural, not bitter)
#let xlab_a = [An instrument like this cannot be built inside the institutions
that need it. Sustained tool-building does not amortize over the paper-and-
grant cycle: it needs full-time engineers held for years, not students
rotating out on degree timelines, and it needs a home whose success metric is
a working, shared instrument rather than publication count. The FreeMoCap
Foundation was founded in 2021 precisely to occupy this gap — a 501(c)(3)
built to develop open scientific instruments as its primary output.[TODO - Again, nice thoughts, words need cleaning]] 


// Angle B — the "we already proved the model" framing (evidence-first)
#let xlab_b = [The FreeMoCap Foundation has already demonstrated the model at
smaller scale: an open-source markerless motion-capture instrument, built and
maintained outside academia, now used by thousands of researchers who could
not otherwise access the capability. The X-Lab is that proven approach —
open, tool-first, community-grounded — applied to the far larger target of the
complete capture volume, at a scale that only dedicated, autonomous funding
can reach. [TODO - Again, nice thoughts, words need cleaning]]

// ════════════════════════════════════════════════════════════════════════
//  BEAT 6 — VISION  (the reshaped-field end-state)
//  JOB: the "reshapes an entire field" claim the solicitation demands and scores as "appropriately ambitious." One clear end-state. Scores C3.
// ════════════════════════════════════════════════════════════════════════

// Angle A — the unification framing (the four fields → one science)
#let vision_a = [The end-state is a single empirical science of sensorimotor
control. Today, perceptuomotor neuroscience, musculoskeletal biomechanics,
mobile robotics, and agentic AI study the same loop with incompatible tools
and vocabularies. A shared instrument makes their measurements commensurable —
a finding in one becomes evidence in another — collapsing four parallel
literatures into one cumulative field studying real-world behavior in real and
naturalistic environments.]

// ════════════════════════════════════════════════════════════════════════
//  BEAT 7 — MISSION  (the formal, quotable statement)
//  JOB: ONE crisp sentence a reviewer can repeat. Do NOT cram the whole
//  ontology in — the surrounding beats did that. Boxed, short, memorable.
// ════════════════════════════════════════════════════════════════════════

// Angle A — short/quotable (recommended shape)
#let mission_a = [The mission of the proposed NSF X-Lab is to build a new class
of scientific instrument — the complete, calibrated, synchronized empirical
capture of agent-environment interaction — and the open organization that can
sustain it, unifying the study of perception and action across humans, animals,
and machines into a single science of real-world sensorimotor control.]

// Angle B — the current long-form (kept for reference; too dense as a formal line)
#let mission_b = [The mission of the proposed NSF X-Lab is to build an
enterprise-scale, usability-focused research platform for user-defined,
composable, multi-instrumented capture volumes that record all relevant
empirically available environmental energy associated with the sensory,
motor, environmental, and neural activity of humans and non-human animals, to
unify perceptuomotor neuroscience, musculoskeletal biomechanics, mobile
robotics, and agentic AI into a single science of sensorimotor control.]



// ════════════════════════════════════════════════════════════════════════
//  COMPOSITION 
// ════════════════════════════════════════════════════════════════════════

#let render = [

  #block(fill: rgb("#ddd"), radius: 4pt, stroke: (left: 5pt + gray ),
  inset: (x: 1.5em, y: 0.75em))[#mission_a]

  // HOOK
  #hook

  // GAP 
  #gap_hedge 
  
  #gap_technical 
  
  #gap_structural

  #gap_need_a


  // HERO 
  #hero_instrument


  #build_flagship 
  

  #build_network 
  
  
  #build_binding

  #xlab_a

  #xlab_b 

  #vision_a

]

#render 


