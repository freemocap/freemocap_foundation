// ════════════════════════════════════════════════════════════════════════
//  MISSION SECTION — STRUCTURAL SKELETON + APPROACH OPTIONS   (bot slop)
//  Advisory scaffold for JSM. NOT proposal prose — a composable menu.
//
//  Purpose: give the Mission section a load-bearing skeleton with named,
//  swappable variables (like 1-mission.typ already does), plus 2-3 drafted
//  ANGLES per beat so you can pick a direction and then write the real text.
//
//  Skeleton (agreed):
//     hook → fracture → instrument → build → xlab → vision → mission
//
//  Each beat below is: (a) its JOB — what a reviewer scores it on, mapped to
//  the solicitation; (b) 2-3 drafted ANGLE variants (…_a / …_b / …_c) that
//  take different rhetorical bets; (c) a // PICK note. Assembled composition
//  is at the bottom (see #render).
//
//  These drafts are DELIBERATELY over-written options to react to — the real
//  prose is yours. Sentences here are still too long on purpose; choose the
//  angle first, compress second.
//
//  Selection-criteria map (from NSF-OTASO §11.2 Mission Clarity & Outcomes):
//     C1  ambitious + technically sound + well-defined
//     C2  landscape justifies a dedicated FULL-TIME team
//     C3  aligned with X-Labs strategic objectives (reshape a field)
//  And the exclusion to dodge: "software solutions without practical
//  integration into an instrumentation system" → the INSTRUMENT + BUILD
//  beats must read as measurement hardware, not middleware.
// ════════════════════════════════════════════════════════════════════════

// Self-contained helpers so this scratch file compiles standalone.
// (In the real section these come from ../helpers/shared.typ)
#let semibold(body) = text(weight: "semibold", body)
#let PICK(body) = block(fill: rgb("#fff4e6"), inset: 6pt, radius: 3pt,
  text(size: 8pt)[#semibold[PICK/NOTE:] #body])


// ════════════════════════════════════════════════════════════════════════
//  BEAT 1 — HOOK  (the funnel)
//  JOB: define the phenomenon in one thought-provoking frame. Not yet a
//  problem, not yet a solution. Reviewer should think "…huh, yes, that IS
//  the thing." Keep the voice. This beat is scored indirectly (sets up C3).
// ════════════════════════════════════════════════════════════════════════

// Angle A — the physics-of-living framing (current draft's instinct; keep)
#let hook_a = [Every living and engineered agent solves the same problem:
it senses a thin slice of the energy available in its environment through a limited set of 
imperfect transducers, and on that basis generate reaction forces against an available substrate to propel its toward its goal. Information flows in, forces
flow out; the brain exists to yank the bones around.]

// // Angle B — the "unit of behavior" framing (sharper for an instrument pitch)
// #let hook_b = [The fundamental unit of behavior is not a neuron firing or a
// muscle contracting but a whole agent acting in a whole environment: a closed
// loop of perception and action unfolding in real time and real space. That
// loop is the thing every behavioral science is ultimately trying to measure —
// and the thing none of them can currently capture whole.]

// // Angle C — the shared-object framing (sets up cross-species/robot unity early)
// #let hook_c = [A human crossing a room, a ferret tracking prey, and a legged
// robot picking its way over rubble are, at the level of measurement, the same
// event: an agent transducing environmental energy and returning force to the
// world. We treat them as three sciences. They are three views of one object.]

// #PICK[B is the strongest setup for an *instrument* proposal because it names a
// measurement target ("capture the loop whole") that beats 2-4 then deliver on.
// C front-loads the cross-species payoff but risks over-claiming before you've
// earned it. A is warmest/most on-voice. Consider A→ then a sentence of C.]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 2 — FRACTURE  (hedge + gap, merged, ending on "What is needed…")
//  JOB: (i) respect the vibrant specialized fields, THEN (ii) name the gap
//  with teeth — the concrete thing that cannot currently be measured — and
//  (iii) hinge into the instrument with an explicit "What is needed…" line.
//  This is the seam your current draft is missing. Scores C1 (well-defined
//  problem) + C2 (why no existing structure closes it).
// ════════════════════════════════════════════════════════════════════════

// -- 2a. HEDGE: honor the fields (your reviewers built these) --
#let fracture_hedge = [Perceptuomotor neuroscience, musculoskeletal
biomechanics, and legged robotics have each built vibrant research programs
and technically marvelous instruments — Neuropixels, markerless motion
capture, force-plate gait labs, motor-unit EMG [TODO - Improve this list, focus on measurement rather than company/tool (kinetics, kinematics, binocular gaze, neurons (ephys neuropixel and w/e a 1Photon miniscope does), muscle activity etc, like in `fracture_need_b`)]— around individual threads of the perception-action loop. Each field measures its thread with extraordinary
precision.]

// -- 2b. GAP: name what's actually impossible (two prongs) --
// Prong 1 = TECHNICAL gap (no instrument spans the modalities/scales)
#let fracture_gap_technical = [But no instrument captures the loop whole. The
threads are measured in incompatible coordinate frames, on unsynchronized
clocks, under semantic schemes that do not talk to each other, so the single
most basic question — what did this agent see, and what did it therefore do —
has no calibrated, unified answer. The fracture is in the measurement itself,
not just in the sociology of the fields. [TODO - this sucks, improve it. ok content, needs rewrite]]

// Prong 2 = STRUCTURAL gap (why nobody has built it) — sets up XLAB beat
#let fracture_gap_structural = [And the instrument that would close it falls
through every existing crack: too integrative for a single-modality grant, too
infrastructural to be a paper, too long-horizon for a graduate degree, too
open to be a product. The academic incentive structure rewards the thread, not
the loom.[TODO - This also sucks. content ok, needs rewrite]]

// -- 2c. THE HINGE: "What is needed…" (this is the pivot you asked for) --
// Angle A — instrument-first
#let fracture_need_a = [#semibold[What is needed is a new class of scientific
instrument]: a calibrated, synchronized, semantically-unified recording of the
complete agent-environment interaction — every empirically available channel
of an agent's sensory/perceptual input and motor/mechanical output captured, calibrated, and processed with metrologically-grounded, truth-preserving pipelines into a unified scientific ontology [TODO - Clarity, Awk, Run-on, overloaded].]

// // Angle B — capability-first (leads with what it lets you do)
// #let fracture_need_b = [#semibold[What is needed is the ability to measure the
// whole loop at once] — perception, kinematics, kinetics, and neural activity of
// a behaving agent, jointly and commensurably — which requires not a better
// sensor but a new class of instrument that unifies them.] 

// #PICK[Keep BOTH gap prongs — they are your two selection criteria in miniature
// (technical = C1, structural = C2/the "why a full-time team" argument). The
// hinge is the most important sentence in the section; A states the instrument
// plainly, which is safest against the software-only exclusion. Use A.]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 3 — INSTRUMENT  (Hero 1: the platform TECHNOLOGY)
//  JOB: describe the novel platform technology in INSTRUMENT language. This
//  is the beat that must not read as software. Name the thing, say what it
//  measures, say why it's one instrument and not a pile of sensors.
//  Scores C1 (technically sound + ambitious) hardest. Dodges the exclusion.
// ════════════════════════════════════════════════════════════════════════

// Angle A — the "capture volume" as the instrument (most concrete)
#let instrument_a = [We call the instrument a #semibold[Complete Empirical
Capture Volume]: a densely instrumented region of real-world space engineered
to record every measurable channel of the agent-environment interaction at
once — binocular gaze and reconstructed retinal input, full-body kinematics
and kinetics, muscle and motor-unit activation, and central and peripheral
neural activity — all spatially calibrated, temporally synchronized, and
expressed in a single sensor-grounded ontology so the channels are directly
commensurable rather than merely co-recorded. 
// The term "Complete" is intentionally aspirational; a dream of perfect Knowledge as we compose our own limited set of imperfect transducers to fan-in metrologically-traceable pipelines from hetereogenous sensors into a single fitted model.


 Because the instrument is defined by its ontology rather than its hardware, measurements for differnt sensor systems may hydrate the same model.

Camera- and IMU-based motion capture each measure the same `Human` kinematics with very different uncertaintain profiles, so sensor-fused estimate will be far more reliable than then either sensor's estmate alone.  . A `Head` has `Eyes` even if the participant did not wear an eye-tracker. An `Eye` defines `Torsion`, and `LensAcomodation`, even if the current era of eye trackers can only estimate `Adduction` and `Elevation.` And then once we build a better eye tracker that *can* record torsion, we can train a model relating `Torsion` <-> `Adduction` <-> `Elevation` and use it to backfill older data as a way to test next generation of  theories against the previous generation's  data. _[TODO - Good content, some of the detail may want to move to a different section. Should allude to the concept of 'partial hydration' when talking about the Head/Eye/Torsion thing, like incomplete data partially hydrates the complete model] _]

// // // Angle B — the "what makes it ONE instrument" framing (the integration claim)
// #let instrument_b = [The novelty is not any single sensor but the
// #semibold[integration itself]: what turns a room full of instruments into one
// instrument is a shared, metrologically-traceable pipeline that carries every
// measurement — from raw sensor to fitted model — with its coordinate frame, its
// timestamp, its uncertainty, and its semantic identity intact, so that a gaze
// vector and a joint torque measured by different hardware describe the same
// event in the same terms.]
// Gotta get the word "metrologically-traceable" in here somewhere

// Angle C — the "scale-free ontology" framing (sets up the cross-species build)
#let instrument_c = [Because the instrument is defined by its ontology rather
than its hardware, it is #semibold[scale-free]: the same entity/trait structure
describes a tethered fruit-fly rig and an untethered human walking outdoors.
Different sites realize it at different tiers of precision and uncertainty —
but in kind, not in category, they are the same measurement.]

// #PICK[A = the object, B = why it's one instrument (the anti-software argument),
// C = the bridge to the BUILD beat. Recommend A then B then a compressed C — the
// three together are the whole platform-technology claim and each answers a
// different reviewer objection ("what is it / how is it one thing / how does it
// generalize").]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 4 — BUILD  (the concrete deliverable — YOUR MISSING PIECE)
//  JOB: turn the abstraction into a building and a network. Names, places,
//  species. This is where "software" dies and "instrument" lives. Also your
//  proof of the scale-free claim (same ontology, fly → outdoor human) and
//  your de-risking ("already built" prototypes). Scores C1 + C2 hard.
//  Source: notes/bot-slop/physical-facility-and-animal-collaborations.md
// ════════════════════════════════════════════════════════════════════════

// -- 4a. The human flagship (Boston), two wings --
#let build_flagship = [The X-Lab builds and operates the human flagship in
#semibold[Boston], in two wings that validate against each other.
#semibold[Wing A] is a fixed, room-mounted instrumented volume — maximum
precision, a manipulable environment, the calibration reference for everything
else. #semibold[Wing B] is a wearable/outdoor system extending the PI's
2018/2022 outdoor-gaze lineage, made portable and productizable, with a
coordinated autonomous drone swarm that follows the subject to ground inertial
drift and estimate the terrain. Running Wing B inside Wing A first gives the
portable rig a traceable calibration chain before it goes outdoors.]

// -- 4b. The animal / prosthetic / robotics network (functionally equivalent) --
#let build_network = [Around the human flagship sits a federated network of
partner labs running #semibold[functionally-equivalent instruments] on their
own model systems — the invasive neural modalities that cannot go on humans
(Neuropixels, miniscope calcium imaging) living on the animal branches, plus
prosthetic and robotic platforms as engineered agents in the same ontology.
These are not hypothetical: we have already built plausibly best-in-world
eye-trackers for ferret and mouse — a ferret rig fusing three-camera gaze,
full-body kinematics, AR display, and world cameras in one calibrated system
is, in effect, a miniature animal-scale instance of the whole flagship,
already demonstrated and now integrating electrophysiology.]

// -- 4c. What binds them into ONE distributed instrument --
#let build_binding = [The flagship wings and the partner labs are a single
distributed instrument, not a consortium, because they share one
sensor-grounded ontology, one metrological traceability chain (every site's
measurements uncertainty-tagged and commensurable across species and equipment
tiers), one comparative design, and one annual convening that keeps the
federation aligned.]

// #PICK[This whole beat is your strongest material and your best exclusion
// defense — keep it concrete and named. The "already built" ferret/mouse
// prototypes are the "demonstrated record of success" the reviewers reward; do
// not bury them. Decide how much of the drone swarm to promise in Phase 1 (it's
// the highest-risk element) — name it as ambition, scope it carefully.]


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
built to develop open scientific instruments as its primary output.]

// Angle B — the "we already proved the model" framing (evidence-first)
#let xlab_b = [The FreeMoCap Foundation has already demonstrated the model at
smaller scale: an open-source markerless motion-capture instrument, built and
maintained outside academia, now used by thousands of researchers who could
not otherwise access the capability. The X-Lab is that proven approach —
open, tool-first, community-grounded — applied to the far larger target of the
complete capture volume, at a scale that only dedicated, autonomous funding
can reach.]

// #PICK[Lead with B (evidence that the org model works) then A (why academia
// structurally can't) — evidence before critique reads as confident, not
// resentful. This beat is also where the Team Capabilities / governance section
// gets set up; keep it to the "why a dedicated lab" claim and let §5 carry the
// governance detail so you don't duplicate across the 8 pages.]


// ════════════════════════════════════════════════════════════════════════
//  BEAT 6 — VISION  (the reshaped-field end-state)
//  JOB: the "reshapes an entire field" claim the solicitation demands and
//  scores as "appropriately ambitious." One clear end-state. Scores C3.
// ════════════════════════════════════════════════════════════════════════

// Angle A — the unification framing (the four fields → one science)
#let vision_a = [The end-state is a single empirical science of sensorimotor
control. Today, perceptuomotor neuroscience, musculoskeletal biomechanics,
mobile robotics, and agentic AI study the same loop with incompatible tools
and vocabularies. A shared instrument makes their measurements commensurable —
a finding in one becomes evidence in another — collapsing four parallel
literatures into one cumulative field studying real-world behavior in real and
naturalistic environments.]

// Angle B — the "reductionist's promise" framing (more provocative)
#let vision_b = [Reductionist science has delivered exquisite measurement of
each isolated thread while quietly deferring the promise that the threads would
one day reassemble into an understanding of the whole behaving agent. The
instrument is how that promise is finally kept: a commons where hyper-
specialized advances are woven, in context, into a shared, cumulative picture
of the acting organism.]

// #PICK[A is the concrete, scorable "reshapes a field" statement — use it as the
// spine. B is a better closing flourish. Consider A as the vision beat and fold a
// compressed B into the funnel or the final mission line for rhetorical bookend.]


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

// #PICK[A is the formal statement; B is what A was distilled from — keep B only
// as a source note. A formal mission line should be re-quotable in one breath;
// if a reviewer can't repeat it, it's carrying too much.]


// ════════════════════════════════════════════════════════════════════════
//  COMPOSITION — assemble chosen variants in skeleton order.
//  Swap the variable names to audition different angle combinations.
// ════════════════════════════════════════════════════════════════════════

#let render = [
  #hook_a

--

  #fracture_hedge 
  
  #fracture_gap_technical 
  
  #fracture_gap_structural

-- 


  #fracture_need_a

--

  #instrument_a

// --

//    #instrument_b

// --

  #build_flagship 
  
  --

  #build_network 
  
  --
  
  #build_binding

--

  #xlab_b 

--

  #xlab_a

--

  #vision_a

--

  #block(fill: rgb("#f5f5f5"), radius: 4pt, stroke: (left: 1.5pt + gray),
    inset: (x: 1.5em, y: 0.75em))[#mission_a]
]

#render