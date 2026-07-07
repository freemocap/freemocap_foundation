// ════════════════════════════════════════════════════════════════════════
//  MISSION SECTION  —  DOME REORIENTATION DRAFT  (v3, sibling to 1-mission.typ)
//
//  This file is a NEW draft written ALONGSIDE the existing 1-mission.typ.
//  It does NOT replace it and is NOT #included by main.typ. It rebuilds the
//  Mission around the v2.1 reframing outline
//  (notes/bot-slop/2026-07-06-mission-framing-outline.md).
//
//  Same machinery as 1-mission.typ: #let variables per beat, comments carrying
//  strategy/conversation, one #render at the bottom. Prose is written FULL
//  (Jon's instruction: "shove as much as we can in, winnow later"), with
//  [MOVE →§X] tags marking material that belongs in a later section, and
//  [FIT] tags noting where a beat earns a specific NSF criterion.
//
//  Structure:
//     box(mission) → hook → measurement-frame → fracture → DOME(hero)
//        → closed-loop(allude) → why-unmet → vision
//
//  Selection-criteria map (OTASO §11.2 — Mission Clarity & Outcomes):
//     C1  appropriately ambitious + technically sound + well-defined
//     C2  landscape justifies a dedicated, full-time team
//     C3  aligned w/ X-Labs strategic objectives (create/reshape a field OR sector)
//     C4  (template) unmet by existing organizational structures & funding
//
//  Topic-2 register to echo (announcement §3.0):
//     "Every revolution in science has been preceded by a revolution in what
//      we can measure, from the telescope to modern MRI."
//  Topic-2 in-scope examples to name-check:
//     • "instruments intentionally engineered for next-generation AI training
//        pipelines"  → the robot/RL loop AND the pose-estimation data engine
//     • "sensors to resolve whole-brain activity … across long timescales"
//        → the animal-network ephys + longitudinal trackers
//  Topic-2 out-of-scope traps to dodge:
//     • "computational or software solutions without practical integration into
//        an instrumentation system"  → LEAD HARDWARE; ontology demoted to a clause
//     • narrow / not-widely-deployable  → the tiered, open, disseminated DOME-S
//     • incremental advancement          → the new observable + the must-build
//                                           transducers, never "a better mocap tool"
// ════════════════════════════════════════════════════════════════════════

#import "../helpers/shared.typ": semibold


// ════════════════════════════════════════════════════════════════════════
//  BEAT 0 — THE FORMAL MISSION STATEMENT  (boxed, top of section)  [SAY]
//  JOB: one crisp, quotable sentence a reviewer repeats back. Do NOT cram the
//  ontology in — the beats below do that. Scores C1/C3.
// ════════════════════════════════════════════════════════════════════════

// Recommended shape (outline candidate C-1): instrument + organization + end-state.
#let mission_a = [The mission of the proposed NSF X-Lab is to build a new class
of scientific instrument — the #semibold[DOME], which renders the complete,
calibrated, synchronized interaction between an agent and its environment
measurable for the first time — and the open organization that can sustain it,
unifying the study of perception and action across humans, animals, and
machines into a single science of real-world sensorimotor control.]

// ── Alternates kept in source for the drafting decision (Part C of outline) ──
// C-2 names the closed loop up top (use only if Beat 5 needs reinforcing):
#let mission_b = [The mission of the proposed NSF X-Lab is to build the
#semibold[DOME] — the instrument that makes the whole agent-environment loop a
calibrated, cumulative measurable — and the community that sustains it, closing
the loop between measuring natural behavior, modeling it, and manipulating it,
to unify perceptuomotor neuroscience, biomechanics, robotics, and embodied AI
into one science of sensorimotor control.]

// NOTE on "complete": a metrologist reviewer may read "complete … measurable
// for the first time" as over-claim (you cannot measure *everything*). Defensible
// fallback if it snags in review — swap "complete" for "the whole perception-
// action loop": "…renders the whole agent-environment loop calibrated,
// synchronized, and commensurable for the first time…". Keeping "complete" in
// the box for now because it is the brand line; Beat 3 uses the safer framing.


// ════════════════════════════════════════════════════════════════════════
//  BEAT 1 — HOOK: the universal loop  [SAY]
//  JOB: define the topic and hook the reader in one move. This is the one piece
//  the review said already works — keep it.
// ════════════════════════════════════════════════════════════════════════

#let hook = [Every living and engineered agent solves the same problem: it
senses a thin slice of the energy available in its environment through a limited
set of imperfect transducers, and on that basis generates reaction forces
against an available substrate to propel itself toward its goal. Information
flows in, forces flow out; the brain exists to yank the bones around. This
loop — perception into action, continuously, in the real world — is the thing we
have never been able to record whole.]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 2 — THE MEASUREMENT-REVOLUTION FRAME + THE UN-INSTRUMENTED FRONTIER  [SAY]
//  JOB: plant the flag in the Topic's own soil so this reads as sensing-and-
//  imaging from sentence one.  [FIT] echoes announcement §3.0 verbatim-ish.
// ════════════════════════════════════════════════════════════════════════

#let frame = [Every revolution in science has been preceded by a revolution in
what we can measure — the telescope, the microscope, and the MRI each made a new
class of phenomenon knowable. Today the un-instrumented frontier is not the very
small or the very distant; it is the whole behaving agent in its natural
environment. The field's own stated ambition — a naturalistic, real-world
science of the brain and body in action — has outrun its instruments: every
thread of the perception-action loop can be measured in isolation, but none of
them can yet be measured together.]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 3 — THE FRACTURE: name what is impossible today  [SAY]
//  JOB: the "new measurable" argument — the load-bearing fitness sentence.
//  Scores C1 (well-defined problem) and sets up the instrument.  [FIT: the
//  fracture-is-in-the-measurement line is the single most important sentence
//  for dodging the software-exclusion.]
// ════════════════════════════════════════════════════════════════════════

// -- 3a. Honor the fields (your reviewers built these instruments) --
#let fracture_hedge = [Perceptuomotor neuroscience, musculoskeletal
biomechanics, and legged robotics have each built superb instruments — silicon
probes and miniature microscopes that resolve neural activity, markerless motion
capture and force plates that resolve kinematics and kinetics, motor-unit
electromyography that resolves muscle activation, mobile trackers that resolve
gaze — and each measures its own thread with extraordinary precision.]

// -- 3b. Name the impossibility (the key sentences) --
#let fracture_gap = [But no instrument captures the loop whole. The threads live
in incompatible coordinate frames, on unsynchronized clocks, under semantic
schemes that do not talk to each other — so the single most basic question,
#semibold[what did this agent see, and what did it therefore do], has no
calibrated, unified answer. The fracture is in the measurement itself, not
merely in the sociology of the fields.]

// -- 3c. The hinge: "What is needed…" --
#let fracture_need = [What is needed is a new class of instrument: one that
captures every empirically available channel of an agent's perception and action
at once — spatially calibrated, temporally synchronized, and rendered directly
commensurable.]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 4 — THE DOME  (HERO 1: the novel platform technology, HARDWARE-FIRST)
//  JOB: name the buildable physical thing; clear the software-exclusion by
//  construction; show the instrument drives its own new-transducer development.
//  Scores C1 + the in-scope "AI-training instrument" adjacency. Longest beat.
//  KEY REORIENTATION: novelty is spread across BOTH sides of the loop
//  (motion capture AND eye tracking) — not concentrated in one sensor — so the
//  "is this just a software/ontology layer?" read is closed on the merits.
// ════════════════════════════════════════════════════════════════════════

// -- 4a. Lead with the physical object, not the ontology --
#let dome_hero = [We call the instrument the #semibold[DOME] — a Densely
Observable Measurement Environment: a densely instrumented region of real-world
space engineered to record every measurable channel of the agent-environment
interaction at once — full-body kinematics and kinetics, muscle and motor-unit
activity, binocular gaze and reconstructed retinal input, and, where feasible,
central and peripheral neural activity — all spatially calibrated, temporally
synchronized, and expressed in one sensor-grounded ontology so the channels are
directly commensurable rather than merely co-recorded.]

// -- 4b. The three variants (one instrument, three scales/forms) --
// [FIT C1] DOME-L-contains-DOME-S is the mission-justified reason the footprint
// must be warehouse-scale — a metrology/validation platform, not "bigger is better."
#let dome_variants = [The DOME is one instrument in three forms. The
#semibold[DOME-L] is a warehouse-scale flagship in Boston, built large enough to
physically contain and cross-validate the smaller variants — so it doubles as
the metrology and validation platform for the entire network rather than merely
the biggest capture room. The #semibold[DOME-S] is the standard, lab- and
classroom-scale instrument that other groups actually deploy: the direct
extension of the webcam-based capture volumes the FreeMoCap Foundation already
facilitates worldwide, and the dissemination target the flagship exists to
certify. The #semibold[DOME-W] is the wearable, mobile variant — an inertial
suit with a mobile eye tracker and world camera — that carries calibrated
capture out of the room and into natural terrain, extending the PI's outdoor
gaze-and-gait lineage @matthis2018 @matthis2022.]

// DOME-S validation receipt + the "Ouroboros" cross-scale calibration.
// [MOVE →§5 exact metrics: ~15k users, ~10k GitHub stars, ~3.5k Discord.]
// [MOVE →§3/§5 the calibration method + AC dissertation/preprint citations.]
#let dome_validation = [The validation path is not hypothetical: an earlier
dissertation from the team already benchmarked FreeMoCap against a research-grade
optical system and showed it yields clinically valid kinematics
#semibold[[cite AC dissertation + preprint — keys not yet in .bib]]. The DOME-L
industrializes that experiment — the flagship continuously certifies the
disseminated DOME-S against itself through bootstrapping calibration, closing
the loop between the instrument we build and the instrument the world runs, and
letting us push a metrologically trustworthy tool to the broadest possible
audience.]

// -- 4c. The ontology as HOW IT SCALES, in a clause, not a hero  [ALLUDE] --
// [MOVE →§2 the full hydration mechanics + the sensor-grounded-ontology "web of belief".]
#let dome_ontology = [Because the instrument is defined by its ontology rather
than by any one sensor, different sensor systems hydrate the same model: a
camera-based and an inertial estimate describe the same `Human` kinematics with
different uncertainty and fuse into one, and the model aligns measurements
across sensor generations and across species — a `Head` has `Eyes` whether or
not the participant wore an eye tracker.]

// -- 4d. BOTH SIDES OF THE LOOP get a new-instrument contribution  [SAY, framing] --
// This is the sentence that closes the "one hero sensor" gap.
#let dome_bothsides = [Critically, the DOME is not a fixed rig built around a
single new sensor. We advance the measurement on #semibold[both halves of the
loop] the instrument records — the motor output (motion capture) and the sensory
input (gaze and its retinal consequences) — so the platform's own capability
frontier moves forward across the whole interaction, and the instrument itself
tells us which transducer to build next.]

// ---- MOTION-CAPTURE SIDE: three contributions (co-hero; keep tighter than eyes) ----

// (i) The actuated, self-calibrating measurement-camera array (a new imaging instrument).
// [FIT: imaging instrumentation, not "PTZ cameras".]  [MOVE →§2/§3 engineering detail.]
#let mocap_array = [On the motion-capture side we build three things. The first
is an #semibold[actuated, self-calibrating camera array]: daisy-chainable
Power-over-Ethernet cameras with modular, swappable sensors and controlled
infrared and visible illumination, each on a pitch-roll-yaw mount with
programmatically controllable zoom, aperture, and focus — and, decisively, the
entire array's extrinsics and intrinsics are controllable at once from a single
console. An experimenter selects any sub-volume of the DOME in software and the
whole array re-aims and re-focuses on it. Pan-tilt-zoom cameras exist and
calibrated-but-fixed motion-capture cameras exist; what does not exist is a
camera array that #semibold[moves and stays metrically calibrated as a
coordinated measurement instrument]. The problem is real and lived: in large
capture volumes, physically re-aiming and re-calibrating cameras is so
labor-intensive that rigs simply get frozen in place — making the array
retaskable yet always-calibrated is what lets one instrument serve both
whole-room and zoomed-in measurement, and what makes it shippable to others.]

// (ii) Camera<->IMU sensor fusion that crosses the inverse-dynamics threshold.
// [FIT: measurement-quality/metrology advance.]  [MOVE →§3 the numbers.]
#let mocap_fusion = [The second is #semibold[sensor fusion] that crosses the
threshold to trustworthy inverse dynamics. Clinically valid kinematics is not
the same bar as inverse dynamics — recovering joint torques and muscle forces
demands accuracy that markerless capture does not yet reach, and that inertial
systems only fake through drifty, black-box gap-filling. But the two modalities
fail in opposite directions: an outside-in camera estimate is #emph[accurate but
noisy] (centered on truth, low precision), while an inertial estimate is
#emph[precise but drifting] (smooth, low accuracy). Fuse their complementary
error profiles — an inertial suit worn inside the camera volume — and the joint
estimate beats either alone, carrying explicit uncertainty rather than hidden
guesswork, finally making markerless muscle-force estimation trustworthy enough
for musculoskeletal modeling @delp2007.]

// (iii) The DOME as a pose-estimation training/correction engine.
// [FIT: THE tightest hit on the in-scope "AI training pipelines" example.]
// [MOVE →§2 the CV-field critique (SMPL / COCO / out-of-distribution).]
#let mocap_pose = [The third turns the instrument on the models themselves. The
calibrated array gives us what the computer-vision pose-estimation field lacks at
scale: physical ground truth. Using #semibold[reprojection error] — the
disagreement between each camera's two-dimensional estimate and the reconstructed
three-dimensional solution — as a correction signal, the DOME improves the
underlying skeleton trackers everyone depends on, both as standalone trackers and
inside a calibrated volume. This matters now because the field has plateaued: it
drifted away from the pixels toward ungroundable targets, and its trackers,
trained against aging benchmark data, still fail on out-of-distribution
movement — patient populations, and extreme athletic motion such as gymnastics
and circus arts. The DOME-L can record exactly those movements with ground
truth, producing corpora and correction signal that measurably improve existing
models — an instrument, in the Topic's own words, intentionally engineered to
produce better AI training data.]

// The drone-swarm follow-cam — allude only, explicitly downstream.  [ALLUDE / DEFER]
#let mocap_drone = [Further out, the same fusion makes a genuinely mobile capture
conceivable — a synchronized swarm of camera drones following an inertially
suited walker outdoors, its drone-borne cameras necessarily lower-fidelity than
fixed walls but still metrically useful once fused with the suit and a
head-mounted stereo pair. We point at this as a consequence of the core work,
not a Phase-1 promise.]

// ---- EYE-TRACKING SIDE: the flagship new transducer (MEATIER hero — most room) ----
// [FIT: the cleanest "sensing and imaging" win; carries the neuroscience-heavy
//  outcomes and the animal-model overlap.]

#let eye_gap = [If motion capture is the mature half we sharpen, the sensory half
is where we build the flagship new transducer. Current mobile eye trackers are
old, closed, and top out near a degree of error — and whole degrees of freedom,
ocular torsion and lens accommodation, go #semibold[unmeasured at any price].]

#let eye_why = [These are not optional refinements. Torsion is active during
essentially all natural locomotion through the vestibulo-ocular reflex, and any
faithful reconstruction of what actually lands on the retina requires it — the
PI's own work on retinal optic flow is the paradigm case @matthis2022 @muller2023
@muller2024.]

// The framing that de-risks it: "camera-quality bet, not a physics bet."
#let eye_bet = [The bet is a #semibold[camera-quality bet, not a physics bet]:
smartphones prove that tiny, fast, cheap, high-resolution imagers exist; eye
trackers simply never adopted them. Put modern imaging behind controlled
illumination and the two "unreachable" degrees of freedom become tractable in a
mobile tracker.]

// The payoff that reads as instrumentation AND data-longevity.
#let eye_payoff = [The payoff compounds. The ontology defines slots — torsion,
accommodation — that no existing sensor fills, so the instrument itself specifies
which sensor to build next; and once built, the archive improves retroactively,
as models trained on the newly measurable channels back-predict them for older
recordings. The instrument gets better at seeing its own past.]

// Credibility anchor — track record, not blue-sky.  [MOVE →§4/§5 specifics.]
#let eye_anchor = [This is track record, not aspiration: the team has already
built plausibly best-in-world eye trackers for ferret and mouse, and is building
the functionally equivalent human, mouse, and ferret instruments that let the
same measurement cross species.]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 5 — THE CLOSED EXPERIMENTAL LOOP  (HERO 2 framing upgrade)  [ALLUDE]
//  JOB: the DOME is not an observation instrument, it is a full EXPERIMENTAL
//  instrument. Converts "agentic AI" from buzzword to closed ecosystem.
//  [FIT: hits the in-scope "AI training pipelines" example a SECOND way, and
//   reaches NSF/TIP's technology-sector mandate.]  Keep tight; §3 develops it.
//  CONFIRMED RETAINED: both the robot/RL angle and ARGPv3.
// ════════════════════════════════════════════════════════════════════════

// [MOVE →§3 the five-station loop detail + Isaac Lab / MuJoCo specifics.]
#let loop_robot = [Because every stream is modeled into one ontology, DOME
recordings are, with little reshaping, directly consumable by modern
reinforcement-learning and robotics training stacks — a measured bone segment and
a simulated robot link are the same `RigidBody`. This makes the instrument a
source of grounded training data for embodied AI, and it makes the loop close:
the instrument yields structured data, the data trains control models, and
because a system optimized for the same task under the same constraints tends to
converge on the same internal solution, those models become #semibold[testable
hypotheses] about the neural computation behind the behavior
#semibold[[cite Yamins/DiCarlo goal-driven modeling + motor-cortex RNN work —
keys not yet in .bib]].]

// The intervention arm (ARGP) — what makes it an experiment, not just a recorder.
// [MOVE →§3 ARGP V1 published lineage / V2 institutional death → that's §6/§5 evidence.]
#let loop_argp = [The hypotheses are then probed back inside the DOME by
controlled perturbation of the perception-action loop itself. A modular
augmented-reality ground plane — reconfigurable LED floor panels, projection, and
virtual reality that reshape the terrain a real agent navigates #emph[while it is
being measured] — turns passive observation into active experiment, extending an
apparatus the PI first built and published a decade ago @matthis2013 @matthis2014
@matthis2015 @matthis2017. Observation, modeling, and intervention become a single
instrument: the full hypothetico-deductive cycle, in one apparatus.]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 6 — WHY THIS IS UNMET BY EXISTING STRUCTURES  (the X-Lab justification)
//  JOB: the organizational-gap answer the solicitation explicitly demands.
//  FOUR moves, structural/economic register — never grievance, never "students
//  aren't good enough." Scores C2 + C4. Unusually strong: it has a COMPLETED
//  pilot study (FreeMoCap) and first-person evidence (ARGP-V2's death) attached.
// ════════════════════════════════════════════════════════════════════════

// Move 1 — tools must be built by masters, not trainees (an inverted apprenticeship).
// FRAME AS STRUCTURE/INCENTIVE, NOT COMPETENCE. (Jon's original leaned on
// competence; keep the structural version for a room full of professors.)
#let xlab_masters = [An instrument like this cannot be built inside the
institutions that most need it. A trainee's job is to #emph[learn] by doing
science; a research tool's job is to #emph[encode] hard-won mastery so others can
do science without re-learning everything — and these point in opposite
directions. Academia's incentive structure runs the apprenticeship backwards:
the experienced builder is rewarded for novel findings and pushed to offload
infrastructure onto trainees who rotate out on degree timelines, so the shared
instrument never accumulates the mastery that would make it trustworthy. The
result is the well-documented graveyard of abandoned research software
@eghbal2020 @aac2023.]

// Move 2 — the right scope for a shared tool is the MEASUREMENT, not the DOMAIN.
// This is the boundary-object move — what turns a tool into a commons.
#let xlab_commons = [The scope of the tool is what determines whether it becomes
a commons. A tool defined by a research #emph[domain] partitions its users; a
tool defined by a #emph[measurement] unites everyone who needs that measurement,
however different their goals. Scoping the X-Lab to the measurement apparatus —
and deliberately refusing to own any single research question — is what lets
otherwise disjoint communities meet on one instrument @star1989.]

// Move 3 — FreeMoCap already ran this experiment, and it worked (the pilot study).
// [MOVE →§5 the scale metrics + the OpenCap/DeepLabCut foils.]
#let xlab_freemocap = [The FreeMoCap Foundation, founded in 2021, already ran
this experiment. Scoped to the measurement itself — turning cameras and light
into calibrated, usable skeleton estimates, with an obsessive focus on
usability — and refusing to claim a research domain, it became a shared commons
where biomechanists, neuroscientists, roboticists, animators, and game designers
now meet and cross-pollinate. Domain-scoped tools such as OpenCap and DeepLabCut
@mathis2018dlc are excellent and, precisely by being domain-scoped, are the foils
that prove the point. The DOME is that proven model — measurement-scoped,
master-built, open, full-time-maintained — aimed at the far larger target of the
whole interaction loop.]

// Move 4 — the operating model: X-Lab builds the tool; the network does the science.
// This is Jon's re-emphasis, and the answer to "how do you stay scoped & solvent."
// [FIT C2 + §11.1 "novel partnerships across academia, industry, gov, philanthropy".]
#let xlab_fanout = [This fixes the operating model, too. The X-Lab aggressively
scopes its own deliverable to the #emph[instrument] and fans the science out to a
standing network of collaborators — human perception-and-action researchers,
robotics and prosthetics groups, visual neuroscientists, and animal labs spanning
mouse, ferret, and guinea fowl — who use the tools we build and maintain. The
community then convenes semi-annually to share findings, feed insight back into
the instrument, and co-plan the next development cycle: a research culture
organized around a shared, evolving apparatus rather than a stream of
disconnected papers.]

// The tool-not-science -> field-reshaping BRIDGE (do not skip; a C3 reviewer
// must not read "we only build the measurement" as "no scientific impact").
#let xlab_bridge = [Building the tool and leaving the science to others is not a
retreat from impact; it is the mechanism of it. The instrument reshapes the field
by making its measurements commensurable and cumulative, and the closed loop is
the proof of what the tool makes possible — while the X-Lab's own success metric
stays a working, shared instrument rather than a publication count. That metric,
and the full-time career engineers held for years that it requires, is precisely
the X-Labs model and precisely what a university cannot provide.]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 7 — VISION: the reshaped end-state  [SAY]
//  JOB: the "appropriately ambitious," reshapes-a-field/sector claim. TWO-SIDED
//  (a field AND a technology sector) — deliberately claims both halves the
//  template offers and echoes a named in-scope Topic example. Scores C3.
// ════════════════════════════════════════════════════════════════════════

// The scientific end-state (a field).
#let vision_field = [The end-state is a single empirical science of sensorimotor
control. Perceptuomotor neuroscience, musculoskeletal biomechanics, mobile
robotics, and embodied AI today study the same loop with incompatible tools and
vocabularies; a shared instrument makes their measurements commensurable, so a
finding in one becomes evidence in another — collapsing four parallel literatures
into one cumulative science of real-world behavior.]

// The technology end-state (a sector) — claims the "sector of technology" half
// and echoes the in-scope "AI training pipelines" example. [FIT: NSF/TIP mandate.]
#let vision_sector = [On the very same measurements sits the second end-state: the
metrologically grounded, uncertainty-tagged corpora that embodied AI and robotics
need to learn real-world sensorimotor behavior — an instrument intentionally
engineered for the next generation of AI training pipelines. One apparatus,
reshaping a field of science and seeding a sector of technology at once.]


// ════════════════════════════════════════════════════════════════════════
//  COMPOSITION
//  Order: box → hook → frame → fracture → DOME(hero) → loop(allude)
//         → why-unmet(4 moves) → vision.  ~1.5–2pp target; everything tagged
//         [MOVE →§X] is a winnowing candidate once we test the budget.
// ════════════════════════════════════════════════════════════════════════

#let render = [

  #block(fill: rgb("#ddd"), radius: 4pt, stroke: (left: 5pt + gray),
  inset: (x: 1.5em, y: 0.75em))[#mission_a]

  // BEAT 1 — HOOK
  #hook

  // BEAT 2 — MEASUREMENT FRAME
  #frame

  // BEAT 3 — THE FRACTURE
  #fracture_hedge

  #fracture_gap
  
  #fracture_need

  // BEAT 4 — THE DOME (hardware-first hero)
  #dome_hero

  #dome_variants
  
  #dome_validation
  
  #dome_ontology
  
  #dome_bothsides
  
  #mocap_array
  
  #mocap_fusion
  
  #mocap_pose
  
  #mocap_drone
  
  #eye_gap
  
  #eye_why
  
  #eye_bet
  
  #eye_payoff
  
  #eye_anchor

  // BEAT 5 — THE CLOSED LOOP (allude)
  #loop_robot
  #loop_argp

  // BEAT 6 — WHY UNMET (four moves + bridge)
  #xlab_masters
  #xlab_commons
  #xlab_freemocap
  #xlab_fanout
  #xlab_bridge

  // BEAT 7 — VISION (two-sided)
  #vision_field
  #vision_sector

]

#render
