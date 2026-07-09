// ════════════════════════════════════════════════════════════════════════
//  MISSION SECTION — target length ~1.0 page of the 8-page limit
//
//  Six beats:
//     1. the observable        (what could be seen)
//     2. the gap               (why no one sees it)
//     3. the Dense Observation (the new observable unit)
//     4. the DOME              (the instrument, three scales)
//     5. the must-builds       (hardware that does not exist)
//     6. unmet + vision        (why not academia; the end-state)
//
//  Selection-criteria map (NSF-OTASO §11.2 Mission Clarity & Outcomes):
//     C1  ambitious + technically sound + well-defined   → beats 3,4,5
//     C2  landscape justifies a dedicated FULL-TIME team → beats 2,6
//     C3  aligned with X-Labs strategic objectives       → beats 3,6
//     C4  unmet by existing institutions                 → beat 6
//
//  Discipline: lead every subsection with the measurement/instrument noun.
//  Software, ontology, and philosophy enter only as *why the instrument
//  scales and lasts* — a clause, never a paragraph.
// ════════════════════════════════════════════════════════════════════════

#import "../helpers/shared.typ": semibold

= Mission

#let mission = [
  The #smallcaps[Mission] of the *FreeMoCap Foundation X-Lab (FMC-X)* is to build a  novel platform technology — the *Dense Observation Measuring Environment (#smallcaps[Dome])* —
    an instrument that fuses heterogeneous multi-modal instrumentation into a single  *Dense Observation* representing a a calibrated, synchronized, metrologically traceable,
  uncertainty-tagged record of the _sensory, motor, neural, and environmental_ factors underpinning goal-directed behavior of biological and artificial agents in real-world and naturalistic environments to reshape the fields of perceptomotor neuroscience, muscoloskeletal biomechanics, and mobile robotics.]
  
  
 The #smallcaps[Dome] platform defines a constellation of low-barrier to entry, high skill ceiling instruments
  to measure (and manipulate) the full perception/action loop in  real-world environments, at instrument scales from a \$100 classroom kit to a
  flagship facility, every one of them emitting the same kind of record.
  #semibold[In doing so it will make measurable an object that no existing instrument
  can capture, and open the real-world sensorimotor control of behaving agents to a
  science that is currently unable to observe it.]


#block(
  fill: rgb("#ddd"),
  radius: 1pt,
  stroke: (left: 2pt + gray),
  inset: (x: 1.5em, y: 0.75em),
)[#mission]

// ── BEAT 1 — the observable ─────────────────────────────────────────────
// Concrete, enumerable, sets up the gap. Keep the jogger; she returns at the end.

Imagine a person jogging across a rocky field, and imagine everything you might
measure about her. The kinematics of her body, through camera- or IMU-based motion
capture. The kinetic forces at the boundary between her foot and the ground, through
force plates or pressure-sensing insoles. The activity of the muscles that generated
them, through electromyography. The direction of her gaze, through a mobile eye
tracker; the terrain she is looking at, through photogrammetric reconstruction; the
image cast upon her retina, by composing the two @matthis2022 @muller2023. The neural
activity coordinating all of it, through mobile electroencephalography — or, in a
model organism, through chronic electrophysiology at cellular resolution.

Every one of those measurements has been made. #semibold[None of them have ever been
made together.]

// ── BEAT 2 — the gap ────────────────────────────────────────────────────
// Evidence first (MoBI), then the technical diagnosis. Institutions come later.

This is not for want of trying. Mobile Brain/Body Imaging @makeig2009 has pursued
synchronous brain, body, and environment capture for over fifteen years, and it
remains #semibold[a methodology rather than a platform]: heroic laboratories assemble
it by hand, per study, out of instruments that were never built to compose. Each
instrument was designed inside a discipline, to a tolerance that discipline cares
about, on a clock that discipline trusts, exporting a format that discipline reads.

Ask a visual neuroscientist why the animal is head-fixed before a screen, and she
will tell you it is the only way to know what the retina received. Ask a motor
neuroscientist why the reach is planar and the arm is in a manipulandum, and he will
tell you it is the only way to know the forces. Ask a biomechanist why the walking is
steady-state on a treadmill, and she will tell you it is the only way to close the
loop on the kinetics. Each is describing the same constraint from a different side:
#semibold[the experiment is shaped by the instrument.] Each field has retreated to the
largest region of behavior over which its own measurement stays valid, and those
regions do not overlap. What lies outside all of them — an agent pursuing a goal in
an unconstrained environment, using vision to place its feet — is not a niche at the
edge of these fields. It is the ordinary condition of behavior, and it is the one
condition none of them can measure.

Composing these instruments is not an integration exercise to be solved once by a
graduate student. It is a problem in #smallcaps[Metrology]: calibration across
modalities, synchronization across clocks, and the propagation of uncertainty from
transducer to derived value @jcgm2008gum @jcgm2012vim. It must be solved by the
instrument itself, permanently, for everyone who uses it. And some of the constituent
instruments do not exist at any price.

// ── BEAT 3 — the new observable unit ────────────────────────────────────
// The platform technology is the RECORD, not the room.

== The New Observable: the *Dense Observation*

Science advances when a new #semibold[unit of observation] becomes available. The cell
was not discovered by thinking harder about tissue; a lens made it observable, and a
field organized itself around what the lens revealed. The study of behavior has no such
unit. It has _variables_ — a joint angle, a fixation, a spike train, a ground reaction
force — each a projection of the agent/environment interaction onto the measurement
axis of a single discipline. The projections are precise. They do not reassemble.

We define a *Dense Observation* as a single record in which the perceptual, motor,
neural, and environmental state of a behaving agent are not separate datasets to be
aligned after the fact, but #semibold[one measurement]: overlapping heterogeneous
transducers sampling different aspects of the same whole, redundantly and at different
scales, unified on a common spatial and temporal frame, with an unbroken chain of
calibration behind every value and a quantified uncertainty attached to it. Under this
definition gaze and gait are not two experiments to be correlated afterward; they are
two faces of one observed object.

#semibold[The Dense Observation is the platform technology.] The instruments below are
the means of producing one.

// ── BEAT 4 — the instrument ─────────────────────────────────────────────
// Physical, buildable, three scales. The validation triangle makes them ONE instrument.

== The Instrument: *Dense Observation Measuring Environment* (#smallcaps[Dome])

We will develop three cross-validating variants of the #smallcaps[Dome] platform, which
together form a single distributed instrument along three axes — #semibold[precision,
portability, and biological depth]:

- *#smallcaps[Dome]-L* — the flagship instrumented volume, in the greater Boston area. A calibrated, synchronized room in which an entire behaving human is captured across every modality at once: markerless multi-camera motion capture, force plates, gaze, EMG, physiology, mobile EEG, and a manipulable environment (LED floor and wall panels, VR/AR, variable terrain and substrate). Large enough to fully enclose the smaller variants, which is what makes it a metrological reference rather than merely a large room. #semibold[Precision.]

- *#smallcaps[Dome]-S* — the extension of the commodity-camera capture volumes already built and disseminated through the FreeMoCap Project. Representative of the #smallcaps[Dome] a research lab or a classroom would build. #semibold[Reach.]

- *#smallcaps[Dome]-Mobile* — a wearable, self-contained #smallcaps[Dome] producing Dense Observations in unconstrained indoor and outdoor environments, continuing the lineage of the PI's gaze/gait and retinal optic flow work @matthis2018 @matthis2022 @muller2023 @muller2024. #semibold[Portability.]

The variants are not three products; they are one instrument, because
#semibold[a record from a classroom kit and a record from the flagship differ in
uncertainty, not in kind.] This is a claim we can make only because it is earned:
#smallcaps[Dome]-Mobile is calibrated #emph[inside] #smallcaps[Dome]-L before it is
carried outdoors, establishing an unbroken traceability chain from the flagship's
reference measurements to a rig on a runner's back @taylor1994 @possolo2015. The same
chain extends to our collaborating animal-model laboratories, where the invasive neural
modalities that cannot be applied to humans hydrate the parts of the Dense Observation
we cannot reach on our own. #semibold[Biological depth.]

// ── BEAT 5 — the must-builds ────────────────────────────────────────────
// THE topic-fit section. Hardware that does not exist. Lead with the eye tracker.

== What We Must Build

We will buy what exists and build what does not. The clearest must-build is the eye
tracker. Commercial video trackers plateau near one degree of gaze error, and
#semibold[whole degrees of freedom of the eye are unmeasured by any instrument at any
price] — notably ocular torsion and the shape of the lens. Torsion was historically
set aside on the authority of Listing's law, but Listing's law changes under the
vestibulo-ocular reflex, which is active essentially continuously during natural
locomotion. Veridical reconstruction of the retinal image of a moving agent
#emph[requires] it @matthis2022.

The physics of reaching these degrees of freedom is known and unpackaged: ocular
torsion from iris texture, and accommodation from higher-order Purkinje reflections,
now demonstrated at 500 Hz binocularly on commodity hardware.
// TODO [#verify] — cite Yates et al. 2025 (OpenIrisDPI) and Sangi et al. 2010 (iris
// torsion). Neither key is yet in FMCF-NSF-XLABS.bib. Do not cite until confirmed.
#semibold[This is a camera-quality bet, not a physics bet.] Smartphones proved that
tiny, fast, high-resolution, inexpensive cameras exist; eye trackers never adopted
them. We have already built what are plausibly the world's best eye trackers for
ferrets and mice — the ferret rig integrates a three-camera skull-mounted tracker with
full-body motion capture, binocular gaze, world cameras, and augmented-reality display,
all calibrated as one system. #semibold[It is a working animal-scale instance of the
flagship instrument.] // [#verify] confirm phrasing + collaborator attribution w/ B.S.

Three further instruments do not exist and must be built:

- *A programmatically reconfigurable capture volume.* Moving cameras is the friction that limits what an experiment can ask. A linked array of centrally controlled mounts governing extrinsics and intrinsics turns a capture volume into an addressable resource: designate a region, and the array configures itself for maximal coverage.

- *Hybrid outside-in / inside-out kinematics.* Camera-based capture yields estimates that are accurate but imprecise; IMU-based capture yields estimates that are precise but drift. Their principled fusion should exceed either, and #smallcaps[Dome]-Mobile nested inside #smallcaps[Dome]-L is the apparatus that develops and validates it.

- *A coordinated drone swarm.* Camera-carrying drones that follow an agent outdoors, avoiding obstacles and maintaining view, whose fused telemetry grounds the wearable rig's inertial drift and reconstructs the terrain the agent is traversing.

Every one of these deliverables terminates in a number: reprojection error, joint-center
expanded uncertainty at $k = 2$, gaze-in-world angular uncertainty, inter-sensor
synchronization jitter against a traceable clock. // TODO [#verify] — JSM to set targets; see §3 Outcomes.
#semibold[The instrument is engineered so that every claim it makes is falsifiable.]
That same discipline is what makes a Dense Observation machine-learning-grade —
uncertainty-annotated at every sample, geometrically self-consistent across views — an
instrument built from first principles for next-generation AI training pipelines
@yamins2014 @yamins2016.

// ── BEAT 6 — unmet + vision ─────────────────────────────────────────────
// Instruments first, institutions second. Conway's Law explains the absence.
// [#allude] — compress hard. Full argument lives in §5 Team Capabilities.

== Why This Is Unmet

These instruments do not exist because no existing structure is built to produce them.
Serious, well-funded groups are building #emph[pieces] and each is confined to its piece
by its own incentives: the institutes build closed, single-species pipelines; the
archives store finished, single-modality datasets @gorgolewski2016; the commercial
markerless systems sell kinematics — and only kinematics — into verticals; the standards
bodies retrofit file formats onto instruments that have already been built. The open,
multimodal, calibrated, traceable capture instrument falls between every chair.

Conway's Law holds that organizations produce systems mirroring their own communication
structures @conway1968. An enterprise of departments, journals, and funding programs
named after specialized domains of inquiry will produce instruments that measure single
domains, evaluated by reviewers who can only score work that sits inside one. It will
not produce the long, unglamorous, cumulative labor of metrology — of turning a proof of
concept into a #smallcaps[Tool] that others can trust. Tools should be built by masters
and given to students, not the reverse. Building this instrument requires an
organization designed to build it: full-time, autonomous, owning its own intellectual
property, and funded on a horizon measured in years rather than grant cycles.

== Vision

In seven years, the jogger crossing that rocky field is a routine measurement. Her
kinematics, her forces, her muscle activity, her gaze, the terrain beneath her, and the
image on her retina are recorded as one object, with a defensible uncertainty on every
value, by an instrument that a graduate student can operate. The same record is produced,
at lower coverage and higher uncertainty but not in a different kind, by a classroom in
Ohio and by a ferret hunting in a laboratory in #emph[[collaborator institution]] — and the
three can be compared, because every value in each of them is traceable to the same
references.

Because the record is a scaffold rather than a fixed schema, it improves in arrears:
once torsion is measured jointly with the degrees of freedom that older instruments
captured, it can be estimated backward into recordings made before any instrument could
measure it. #semibold[The archive appreciates.]

We will build \$100 three-camera kits for students, mobile eye trackers that measure
degrees of freedom invisible to current technology, field-deployable gait laboratories,
and wearable research environments — all of them interoperable, all of them producing the
same kind of record. Heterogeneous arrays of bleeding-edge and made-to-spec instruments
built into vast industrial buildings: #semibold[the opposite of a space telescope, its
lenses pointing inward to the place where the body meets the world.]
