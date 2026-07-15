// ════════════════════════════════════════════════════════════════════════
//  calculus.typ
//
//  A standalone, no-background-assumed explainer for the DOME measurement
//  chain, read as a channel calculus. Every value is a bundle of channels
//  (degrees of freedom); each channel carries a status on two orthogonal
//  axes — measured/inferred now, and (if unmeasured) build-target/could-build.
//  Propagation is the pushforward of input channel-supports through each
//  operator; projection Π is the only operator that maps input DOF onto
//  output channels. There is no operator grade.
//
//  Compile:  typst compile calculus.typ
// ════════════════════════════════════════════════════════════════════════

#import "fmcx-dome-flow-chart.typ": mark-ok, mark-inf, mark-build, mark-could, ink, tagink, headink, hairline

#set page(paper: "us-letter", margin: (x: 1.7cm, y: 1.5cm), numbering: "1")
#set text(size: 9.3pt, fill: ink)
#set par(leading: 0.6em, justify: true)

// ── channel glyphs ──────────────────────────────────────────────────────
#let g-ok = text(fill: mark-ok, weight: "bold")[●]
#let g-inf = text(fill: mark-inf, weight: "bold")[◐]
#let g-build = text(fill: mark-build, weight: "bold")[★]
#let g-could = text(fill: mark-could, weight: "bold")[◇]

#let H(t) = block(above: 1.0em, below: 0.5em)[#text(size: 9.5pt, weight: "bold", fill: headink, tracking: 0.4pt, smallcaps(t))]
#let Hsub(t) = block(above: 0.7em, below: 0.35em)[#text(size: 9pt, weight: "bold", fill: ink, style: "italic")[#t]]
#let term(t) = text(weight: "bold")[#t]
#let note(t) = text(size: 8.4pt, fill: tagink)[#t]

// judgment table: label · math · channel marks · note
#let jt(..rows) = table(
  columns: (auto, 1fr, auto, 1.15fr),
  stroke: none,
  inset: (x: 0.4em, y: 0.32em),
  align: (left + horizon, left + horizon, center + horizon, left + horizon),
  ..rows.pos(),
)

// ════════════════════════════════════════════════════════════════════════
#align(center)[
  #text(size: 15pt, weight: "bold")[A calculus of grounded measurement]
  #v(-0.35em)
  #text(size: 9.5pt, fill: tagink)[
    how a #smallcaps[Dome] turns raw physical energy into the two signals the nervous system actually uses
  ]
]
#v(0.3em)
#line(length: 100%, stroke: 0.5pt + luma(200))

This figure is a #term[boundary object]: a neuroscientist, a biomechanist, a computer-vision
engineer, and a control theorist all read the same pipeline but name its parts differently. The
little algebra below gives them one precise, shared way to read it; nothing here assumes prior
background. The one idea to carry through: *every box is a bundle of channels (degrees of freedom),
each channel carries its own status, and every arrow is a typed operation.* Crucially, the only
operation that can turn a well-measured input into a corrupted downstream feature is #term[projection];
everything else either passes information through or combines it. That single fact is what lets the
chart say not just *what* is missing, but *which downstream signal it breaks* and *which instrument
would fix it.*

#H[1 · The three ingredients]

#Hsub[Energies — what a sensor is physically sensitive to]
A sensor does not perceive objects; it converts one form of physical #term[energy] into numbers,
and that choice fixes what it can and cannot know.
#[
  #set par(leading: 0.5em)
  #grid(columns: (auto, 1fr), column-gutter: 0.9em, row-gutter: 0.4em,
    $cal(P)$, [#term[photons] — light. Cameras, the eye tracker, and the terrain scanner live here.],
    $cal(I)$, [#term[inertial] — the specific force and angular rate felt by a small body (an IMU's accelerometer + gyroscope).],
    $cal(M)$, [#term[mechanical contact] — the forces and torques where the body meets the ground (a force plate).],
  )
]

#Hsub[Values are channel vectors — not single grades]
A reading is a #term[typed value], and a value is a *bundle of channels* (degrees of freedom, DOF).
Status lives *per channel*, so no value is uniformly good or bad. The types:
#[
  #set par(leading: 0.5em)
  #grid(columns: (auto, 1fr), column-gutter: 0.9em, row-gutter: 0.42em,
    $RR^n$, [$n$ numbers — e.g. a 3-D point, or a 6-number #term[wrench] (three forces + three torques).],
    [reference frame], [a coordinate system rigidly attached to a thing (eye, head, room) — distinct from a *video* frame. Position only means anything relative to one.],
    $"SO"(3)$, [an #term[orientation] — three channels (e.g. for the eye: elevation, abduction, torsion).],
    $"SE"(3)$, [a full #term[pose] — orientation *and* position, six channels; a rigid body's complete placement.],
    $q_(a b)$, [a #term[relative pose], “$a$ in $b$” — e.g. eye-in-head is the eye's orientation relative to the skull.],
    $frak(G)$, [scene #term[geometry] — the surrounding surfaces and the groundplane.],
  )
]
Worked all the way through, the *eye's* contribution to retinal input is five channels in two families —
orientation {elevation, abduction, #term[torsion]} and optics {pupil, #term[accommodation]}. Three are
measured well today; two (torsion, accommodation) are not. That per-channel split is the whole correction.

#Hsub[Operators — how channels move]
Three operations combine values. Only one of them can move information *between* channels.
#grid(columns: (auto, 1fr), column-gutter: 1.0em, row-gutter: 0.55em,
  $plus.o$, [
    #term[compose poses] — #term[transparent.] Chain relative poses; the shared inner reference frame
    telescopes, $q_(a b) plus.o q_(b c) = q_(a c)$. It carries each input channel's status through
    *unchanged* and injects no new uncertainty — exact once the reference frames are jointly calibrated.
  ],
  $join$, [
    #term[fuse] — #term[union of measured subspaces.] Combine two estimators of one quantity with
    complementary error (camera: accurate-imprecise $join$ IMU: precise-drifting). The fused value is
    measured on the *union* of what either measures — the point of complementary fusion.
  ],
  $Pi$, [
    #term[project] — #term[the only injector.] A forward model mapping a state onto an observable, via its
    Jacobian. A downstream channel is #g-ok #term[measured] iff it loads *only* on measured DOF, and
    #g-inf #term[inferred] iff it loads on *any* unmeasured DOF. This is where priors enter and where
    reachability is decided.
  ],
)
Two more relations sit at the ends of the chain. $cal(E) tack.r s$ — *transduce* — is the one physical
step: a sensor *yields* ($tack.r$) a raw signal $s$ (image, inertial stream, force) from an energy $cal(E)$;
everything after it is $arrow.r$ — *derive* — data turned into data. And $v approx v^star$ says $v$ estimates
the true latent $v^star$. When a needed DOF is unmeasured, we compute the *conditional* estimate under an explicit
#term[prior] on it; the estimate is trustworthy on the subspace the measured DOF span and biased on the
complement by however far the true DOF strays from the prior — and that bias lands in *named, disjoint
channels*, not smeared across the output.

#Hsub[The two axes — what a channel mark means]
Replace the single grade with a status on two orthogonal axes:
#[
  #set par(leading: 0.5em)
  #grid(columns: (auto, 1fr), column-gutter: 0.9em, row-gutter: 0.35em,
    [*present*], [#g-ok #term[measured] directly and well #h(1.2em) #g-inf #term[inferred] — reconstructed under an explicit prior; only as good as the prior holds.],
    [*build*], [#g-build #term[build target] — an unmeasured DOF a committed instrument targets, because it is *load-bearing* #h(0.8em) #g-could #term[could build] — a feasible instrument, but nothing needs it yet.],
  )
]
A channel can be both at once: torsion is #g-inf#g-build (inferred under a prior now; a build target),
accommodation is #g-inf#g-could (inferred now; buildable but not yet load-bearing). Nothing here is
“unreachable at any price” — the marks track *instruments and priors*, never math difficulty.

#pagebreak()

#H[2 · The three paths, per channel]

#Hsub[Path A — Vision: from photons to the retinal stimulus]
#jt(
  [Eye tracker → eye keypoints], $cal(P) tack.r "image" arrow.r "keypoints"$, g-ok,
    note[transduce photons into an *image* ($tack.r$), then *derive* ($arrow.r$) pupil/iris/limbus keypoint tracks. Mature.],
  [Eye kinematics (5 channels)], [elev #g-ok #h(0.4em) abd #g-ok #h(0.4em) torsion #g-inf#g-build #h(0.4em) pupil #g-ok #h(0.4em) accom #g-inf#g-could], [],
    note[the *estimate* from those keypoints: eye-in-head. Orientation {elevation, abduction} and pupil are measured; #term[torsion] (roll about the line of sight) and #term[accommodation] (focal state) are unmeasured — inferred under priors.],
  [Scene geometry], $cal(P) tack.r "depth" arrow.r frak(G)$, [gnd #g-ok · surf #g-inf],
    note[groundplane is known/controllable (LED floor, actuated terrain — *manipulable*); distal surfaces are #g-inf.],
  [Gaze in world], $g = q_"eye" plus.o q_(h w)$, [orient #g-ok · tors #g-inf#g-build],
    note[$plus.o$ is transparent: gaze inherits the eye's channels unchanged (plus head pose from Path B). *This is why the eye and body cannot be separate instruments — gaze literally contains head pose.*],
  [Retinal image & optic flow], $rho = Pi(g, frak(G), dot(x)_h) approx rho^star$, [see below],
    note[$Pi$ maps the input DOF onto the retinal channels; worked out in §2.5. #term[Afferent] input to the visual system — #term[Desideratum \#1].],
)

#Hsub[Path B — Body: two motion-capture streams fused into kinematics]
#jt(
  [Camera mocap → body keypoints], $cal(P) tack.r "images" arrow.r p : RR^(3 times K)$, g-ok,
    note[transduce photons into *images*, then *derive* $K$ body keypoint positions by triangulation — accurate in absolute placement, but *imprecise* (jitter).],
  [IMU mocap], $cal(I) tack.r "accel, gyro" arrow.r R : "SO"(3)^S$, [rate #g-ok · abs #g-inf],
    note[body-worn IMUs: angular *rate* is measured precisely; absolute orientation is its drifting integral → #g-inf.],
  [Body kinematics (Hybrid)], $X = p join R : "SE"(3)^S$, [transl #g-ok · orient #g-ok],
    note[$join$ unions measured subspaces: camera positions anchor IMU drift, IMU rate smooths camera jitter → translation and orientation both #g-ok once fused. The head-in-world $q_(h w)$ is just the head segment's entry of $X$. The *fusion instrument itself* is a #g-build build target (synchronization), not the arithmetic.],
)

#Hsub[Path C — Kinetics: from contact forces to the muscle drive]
#jt(
  [Force plates & insoles], $cal(M) tack.r "force" arrow.r w : RR^6$, g-ok,
    note[transduce contact into a *force* reading, then resolve the ground reaction #term[wrench] $w$ (3 forces + 3 torques) and centre of pressure — near-direct.],
  [Inverse dynamics], $tau = "ID"(X, w; frak(I))$, g-inf,
    note[Newton–Euler mechanics from motion $X$, wrench $w$, and an #term[inertial model] $frak(I)$ (segment masses/inertias, BSP). Exact operator; the joint-torque channels are #g-inf because $frak(I)$ is a prior, not a measurement.],
  [Muscle forces & activation], $a = upright(M)(tau) join "EMG"$, [model #g-inf · EMG #g-ok],
    note[the model estimate $upright(M)(tau)$ is #g-inf (muscle *redundancy* → solved under an optimization prior); EMG senses activation *directly* (#g-ok). Two estimates of one latent → a fusion and a cross-check (§4). #term[Efferent] drive — #term[Desideratum \#2].],
)

#Hsub[Cross-links — why the three paths are one instrument]
#[
  #set par(leading: 0.5em)
  #grid(columns: (auto, 1fr), column-gutter: 0.9em, row-gutter: 0.35em,
    [#term[head pose] (B→A)], [gaze needs head-in-world from body kinematics.],
    [#term[self-motion] (B→A)], [retinal optic flow needs the head/eye translation $dot(x)_h$, again from B.],
    [#term[kinematics] (B→C)], [inverse dynamics needs the same body motion $X$.],
  )
]

#Hsub[2.5 · Worked example — the retinal node is not one grade]
Pull the retinal observable back through $Pi$. It has two channel families.

#block(inset: (left: 0.8em))[
  #term[Geometric (first-order optic flow).] The local flow field decomposes into four differential
  invariants: #term[divergence] (looming / time-to-contact), #term[curl] (rotation about the viewing axis),
  and two #term[deformation] (shear) components. Torsion is eye rotation *about the line of sight* — it is
  precisely the #term[curl] generator. So unmeasured torsion contaminates *exactly the curl channel*;
  divergence is invariant to it, and the deformation magnitude is invariant (only its axis rotates).

  #term[Optical (photometric).] #term[Pupil] (measured) sets the aperture → retinal illuminance and
  depth-of-field: #g-ok. #term[Accommodation] (unmeasured) sets the focal plane → the defocus-blur map:
  #g-inf#g-could.
]
So the retinal node is:
#align(center)[
  #box(inset: (y: 0.3em))[
    div #g-ok #h(1.2em) def #g-ok #h(1.2em) #term[curl #g-inf#g-build] (torsion) #h(1.2em) illum #g-ok #h(1.2em) #term[defocus #g-inf#g-could] (accommodation)
  ]
]
Two missing DOF, two *disjoint* corrupted features, two distinct future instruments — far more honest, and
more useful, than one $star$ on the box.

#H[3 · The propagation law]
There is no scalar “meet over the cone,” and operators carry no grade. A node's channel-status is the
#term[pushforward] of its inputs' channel-supports through its operator:

#align(center)[#box(stroke: 0.5pt + luma(170), inset: 0.7em, radius: 3pt)[
  $plus.o$ carries supports through unchanged #h(1em) · #h(1em)
  $join$ unions the measured subspaces #h(1em) · #h(1em)
  $Pi$ maps DOF → channels by its Jacobian
]]

Read it as: *pull an observable back through $Pi$; whichever input DOF a channel loads on decides its mark —*
#g-ok if it touches only measured DOF, #g-inf if it touches any unmeasured DOF (and it inherits that DOF's
#g-build / #g-could). Because $plus.o$ and $join$ never inject uncertainty, *every* #g-inf in the chart
traces to a specific unmeasured DOF at a specific $Pi$ — which is exactly the thing an instrument can fix.

#H[4 · The loop this unlocks — the real thesis]
This is the payoff, and it is *selective*: it says *when* a missing DOF matters and when it can be ignored.

#box(fill: rgb("#f7f7fb"), stroke: 0.5pt + hairline, radius: 3pt, inset: 0.8em, width: 100%)[
  #set enum(numbering: "1.", spacing: 0.7em)
  + #term[Estimate] the downstream quantity under an *explicit prior* on the unmeasured DOF. #note[(Retinal flow reconstructed with an eye tracker giving elevation + abduction only; torsion set by Listing's law.)]
  + #term[Find which output channels drive the behaviour or science.] #note[(Curl comes out as a load-bearing feature of the flow field.)]
  + #term[Pull those channels back through $Pi$: do they depend on an unmeasured DOF?] #note[(Curl ← torsion. Yes.)]
  + #term[Decide.] #note[*Yes* → the prior is load-bearing; that DOF is your next instrument (build the torsion-resolving tracker). *No* → the missing DOF does not touch what matters here; you are already as good as possible and can ignore it honestly (pure looming / time-to-contact lives in divergence → torsion irrelevant).]
]
The subtle point: step 2's finding that *curl matters* is *simultaneously* a proof that *the torsion prior is
load-bearing* — because curl's error *is* the gap between true torsion and Listing's law. The analysis does not
just produce an estimate; it *justifies building the instrument.* (Matthis 2022 is the worked instance.)

#H[5 · Endpoints, and a built-in observability check]
The chart terminates at exactly two boxes because there are exactly two places where the measurable body meets
the nervous system: the #term[retinal stimulus] (#term[afferent] — what *enters* the visual system) and the
#term[muscle drive] (#term[efferent] — what *leaves* the motor system). Everything upstream is machinery for
reaching those two with *known* error.

Muscle drive is special: it is both a #term[projection target] ($a = upright(M)(tau)$, inferred under the
redundancy prior) *and* #term[directly sensed] (EMG). Two independent estimates of one latent give a
consistency check on the $Pi$ from torque, and a candidate $join$ fusion — the same “a downstream projection
target that is also directly measured” pattern that makes the eye story rigorous. Wherever the chart offers
both a projected and a measured route to a channel, it can validate itself.

#Hsub[Closing the loop — one instant in time]
Those two peripheral signals are the *input* to the #term[central nervous system] (cortical and subcortical,
reciprocally coupled), whose #term[efferent] output is a motor command that re-aims the eye and re-drives the
body. The whole chart is therefore a single instant $t$: the command is realised at $t + delta t$, changing
what every sensor measures on the next frame. The figure is one slice of a loop that repeats each $delta t$ —
preceded by the infinitesimal before it and followed by the one after. That recurrence is why the measurement
problem is worth solving: each instant's estimate is the state on which the nervous system acts to produce the
next.
