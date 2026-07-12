// ════════════════════════════════════════════════════════════════════════
//  shared.typ
//
//  The DOME measurement-chain figure, organized into four bands:
//
//    REAL WORLD  →  MEASUREMENTS  →  ESTIMATES  →  NERVOUS SYSTEM
//    (instruments)  (one step off   (kinematic ·   (peripheral ·
//                    the sensor)     composite)      central)
//
//  Every value is a vector of channels (degrees of freedom), each with a
//  per-channel status on two orthogonal axes:
//    present   ● measured directly   ◐ inferred under an explicit prior
//    build     ★ build target (load-bearing DOF)   ◇ could build (feasible)
//
//  Propagation is the pushforward of channel-supports: ⊕ carries them through,
//  ⋈ unions the measured subspaces, Π maps input DOF onto output channels.
//
//  Everything scales from one number: theme(f: ...).
// ════════════════════════════════════════════════════════════════════════

#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

// ── palette ─────────────────────────────────────────────────────────────
#let lane-eye = rgb("#dce8fb")
#let lane-body = rgb("#d9efe1")
#let lane-world = rgb("#fbe9cf")
#let lane-comp = rgb("#e7ddf7")
#let lane-pns = rgb("#f7dde9")
#let lane-cns = rgb("#e5e7ee")

#let ink = rgb("#1c1c1c")
#let tagink = rgb("#333333")
#let headink = rgb("#111111")
#let hairline = rgb("#8a8a8a")
#let divider = rgb("#cdcdd4")

#let mark-ok = rgb("#2e7d52")    // ● measured directly and well
#let mark-inf = rgb("#b9770a")   // ◐ inferred under an explicit prior
#let mark-build = rgb("#c0392b") // ★ build target (load-bearing unmeasured DOF)
#let mark-could = rgb("#2f6fb0") // ◇ could build (feasible, not yet needed)

// ── theme: one scale factor drives every size ───────────────────────────
#let theme(f: 1.0) = (
  f: f,
  title: 6.6pt * f,
  tag: 5.3pt * f,
  chip: 4.7pt * f,
  neural: 5.2pt * f,
  elabel: 8pt * f,
  head: 6.1pt * f,
  band: 6.4pt * f,
  legend: 6.0pt * f,
  W: 1.85cm * f,
  spacing: (5mm * f, 1.9mm * f),
  inset: 2.5pt * f,
  radius: 1.8pt * f,
)

// ── channel marks: code -> (glyph, colour) ──────────────────────────────
#let glyphof(code) = {
  if code == "ok" { ([●], mark-ok) } else if code == "inf" { ([◐], mark-inf) } else if code == "build" {
    ([★], mark-build)
  } else if code == "could" { ([◇], mark-could) } else { ([·], ink) }
}
#let gmark(code, size) = {
  let (ch, col) = glyphof(code)
  text(fill: col, weight: "bold", size: size)[#ch]
}

// ── one channel chip: short label + its status glyph(s) ─────────────────
#let chip(th, label, codes) = box(inset: (right: 0.5em))[
  #text(size: th.chip, fill: ink)[#label]#h(0.12em)#for c in codes [#gmark(c, th.chip * 1.15)]
]

#let chips(th, list) = block(width: 100%, inset: (top: 1.2pt * th.f))[
  #set par(leading: 0.28em, justify: false)
  #set text(hyphenate: false)
  #for (lab, codes) in list [#chip(th, lab, codes)]
]

// ── node body: title, optional tag, channel badge, neural footer ────────
#let nb(th, title, tag: none, chans: none, neural: none) = {
  set align(center)
  set par(leading: 0.28em, spacing: 0.24em, justify: false)
  set text(hyphenate: false)
  block[
    #text(size: th.title, weight: "bold", fill: ink)[#title]
    #if tag != none [ \ #text(size: th.tag, fill: tagink)[#tag] ]
    #if chans != none [ #chips(th, chans) ]
    #if neural != none [
      #v(1pt * th.f)
      #line(length: 92%, stroke: 0.3pt + hairline)
      #v(0.9pt * th.f)
      #text(size: th.neural, fill: ink, weight: "medium")[#smallcaps(neural)]
    ]
  ]
}

#let elabel(th, t, fill: ink) = text(size: th.elabel, fill: fill)[#t]

// ── headers: band super-header (chip) and column sub-header ──────────────
#let bandhead(th, t) = block(width: 100%, inset: (y: 2.5pt * th.f), radius: th.radius, fill: rgb("#ececef"), stroke: 0.5pt + hairline)[
  #set align(center)
  #set text(hyphenate: false)
  #text(size: th.band, weight: "bold", fill: headink, tracking: 0.35pt, smallcaps(t))
]
#let subhead(th, t) = align(center)[
  #set text(hyphenate: false)
  #text(size: th.head * 0.98, fill: tagink)[#t]
]

// ── legend: the two-axis vocabulary, one slim band at the top ───────────
#let legend(th) = {
  let item(code, label) = box(inset: (right: 1.1em))[
    #gmark(code, th.legend * 1.15) #h(0.12em) #text(size: th.legend, fill: ink)[#label]
  ]
  block(
    width: 100%,
    inset: (x: 5pt * th.f, y: 2.5pt * th.f),
    radius: th.radius,
    fill: rgb("#f2f2f2"),
    stroke: 0.5pt + hairline,
  )[
    #set align(center)
    #set par(leading: 0.4em)
    #text(size: th.legend, weight: "bold", fill: tagink)[per channel — ]
    #item("ok", [measured]) #item("inf", [inferred under a prior])
    #h(0.4em) #text(size: th.legend, weight: "bold", fill: tagink)[· build flag — ]
    #item("build", [build target (load-bearing)]) #item("could", [could build])
  ]
}

// ════════════════════════════════════════════════════════════════════════
//  chain(): the banded measurement DAG.
//    x = 0 sensors · 1 measurements · 2 kinematic est. · 3 composite est.
//        4 peripheral NS · 4.9 central NS (narrow). Hybrid at 1.5.
// ════════════════════════════════════════════════════════════════════════
#let chain(th, with-manip: true) = {
  let W = th.W
  let Wc = 0.8 * W // squished central-nervous-system column
  let Ws = 0.85 * W // narrow subject column (the physical thing measured)

  let scene-tag = if with-manip { [manipulable: VR/AR/XR, LED, terrain] } else { none }

  diagram(
    spacing: th.spacing,
    node-inset: th.inset,
    node-corner-radius: th.radius,
    node-stroke: 0.5pt + hairline,
    edge-stroke: 0.6pt + ink,
    label-sep: 1.2pt * th.f,

    // ── band dividers (drawn first, behind the nodes) ─────────────────
    edge((0.5, -1.5), (0.5, 4.4), stroke: 0.5pt + divider),
    edge((1.5, -1.5), (1.5, 4.4), stroke: 0.5pt + divider),
    edge((3.5, -1.5), (3.5, 4.4), stroke: 0.5pt + divider),

    // ── band super-headers ────────────────────────────────────────────
    node((-0.5, -1.75), bandhead(th, [Real world]), stroke: none, fill: none, width: 3.9cm * th.f),
    node((1, -1.75), bandhead(th, [Measurements]), stroke: none, fill: none, width: 2.7cm * th.f),
    node((2.5, -1.75), bandhead(th, [Estimates]), stroke: none, fill: none, width: 2.7cm * th.f),
    node((4.5, -1.75), bandhead(th, [Nervous system]), stroke: none, fill: none, width: 2.9cm * th.f),

    // ── column sub-headers ────────────────────────────────────────────
    node((-1, -1.05), subhead(th, [subject]), stroke: none, fill: none, width: Ws),
    node((0, -1.05), subhead(th, [instrument]), stroke: none, fill: none, width: W),
    node((1, -1.05), subhead(th, [off the sensor]), stroke: none, fill: none, width: W),
    node((2, -1.05), subhead(th, [kinematic]), stroke: none, fill: none, width: W),
    node((3, -1.05), subhead(th, [composite]), stroke: none, fill: none, width: W),
    node((4, -1.05), subhead(th, [peripheral]), stroke: none, fill: none, width: W),
    node((5, -1.05), subhead(th, [central]), stroke: none, fill: none, width: Wc),

    // ── SUBJECTS: the physical thing each instrument observes ─────────
    node((-1, 0), nb(th, [Environment], tag: [scene + terrain]), name: <envsub>, fill: lane-world, width: Ws),
    node((-1, 1), nb(th, [Eye], tag: [pose + optics]), name: <eyesub>, fill: lane-eye, width: Ws),
    node((-1, 2.425), nb(th, [Body], tag: [segment poses]), name: <bodysub>, fill: lane-body, width: Ws),
    node((-1, 3.8), nb(th, [Ground contact], tag: [foot–ground forces]), name: <groundsub>, fill: lane-world, width: Ws),

    // ── WORLD ─────────────────────────────────────────────────────────
    node((0, 0), nb(th, [World & terrain scanner], chans: (([$cal(P) tack.r$ depth], ("ok",)),)), name: <worldcam>, fill: lane-world, width: W),
    node((1, 0), nb(th, [Scene geometry], tag: scene-tag, chans: (([groundplane], ("ok",)), ([surfaces], ("inf",)))), name: <scene>, fill: lane-world, width: W),

    // ── EYE / VISION ──────────────────────────────────────────────────
    node((0, 1), nb(th, [Eye tracker], chans: (([$cal(P) tack.r$ image], ("ok",)),)), name: <eyetracker>, fill: lane-eye, width: W),
    node((1, 1), nb(th, [Eye keypoint trajectories], tag: [pupil · iris · limbus], chans: (([keypoints], ("ok",)),)), name: <eyekp>, fill: lane-eye, width: W),
    node(
      (2, 1),
      nb(th, [Eye kinematics], tag: [eye-in-head], chans: (([elev], ("ok",)), ([abd], ("ok",)), ([tors], ("inf", "build")), ([pupil], ("ok",)), ([accom], ("inf", "could")))),
      name: <eyekin>, fill: lane-eye, width: W,
    ),
    node(
      (3, 1),
      nb(th, [Gaze in world], tag: [eye-kin $plus.o$ head-in-world], chans: (([orient], ("ok",)), ([tors], ("inf", "build")))),
      name: <gaze>, fill: lane-comp, width: W,
    ),
    node(
      (4, 1),
      nb(
        th, [Retinal image & optic flow],
        tag: [$Pi$(gaze, scene, self-motion)],
        chans: (([div], ("ok",)), ([def], ("ok",)), ([curl], ("inf", "build")), ([illum], ("ok",)), ([defocus], ("inf", "could"))),
        neural: [afferent input → visual system],
      ),
      name: <retina>, fill: lane-pns, width: W,
    ),

    // ── BODY ──────────────────────────────────────────────────────────
    node((0, 2.0), nb(th, [Camera mocap], chans: (([$cal(P) tack.r$ images], ("ok",)),)), name: <cameras>, fill: lane-body, width: W),
    node((1, 2.0), nb(th, [Body keypoint trajectories], tag: [accurate, imprecise], chans: (([keypoints], ("ok",)),)), name: <bodykp>, fill: lane-body, width: W),
    node((0, 2.85), nb(th, [IMU mocap], chans: (([$cal(I) tack.r$ accel, gyro], ("ok",)),)), name: <imu>, fill: lane-body, width: W),
    node((1, 2.85), nb(th, [Segment orientations], chans: (([ang. rate], ("ok",)), ([abs. orient], ("inf",)))), name: <segorient>, fill: lane-body, width: W),
    node((1.5, 2.425), nb(th, [$join$], tag: [#text(fill: mark-build)[★]]), name: <hybrid>, fill: white),
    node((2, 2.425), nb(th, [Body kinematics], tag: [keypoints $join$ orient · head pose], chans: (([translation], ("ok",)), ([orientation], ("ok",)))), name: <bodykin>, fill: lane-comp, width: W),

    // ── KINETICS ──────────────────────────────────────────────────────
    node((0, 3.8), nb(th, [Force plates & insoles], chans: (([$cal(M) tack.r$ force], ("ok",)),)), name: <plates>, fill: lane-world, width: W),
    node((1, 3.8), nb(th, [Ground reaction forces], tag: [wrench = 3 forces + 3 torques], chans: (([wrench], ("ok",)), ([centre of pressure], ("ok",)))), name: <grf>, fill: lane-world, width: W),
    node((3, 3.4), nb(th, [Inverse dynamics], tag: [$tau$ = ID(body-kin, GRF; BSP)], chans: (([joint torques], ("inf",)),)), name: <invdyn>, fill: lane-comp, width: W),
    node(
      (4, 3.4),
      nb(
        th, [Muscle forces & activation],
        tag: [$a = upright(M)(tau)$ $join$ EMG],
        chans: (([model estimate], ("inf",)), ([EMG-sensed], ("ok",))),
        neural: [efferent drive → motor units],
      ),
      name: <muscle>, fill: lane-pns, width: W,
    ),

    // ── CENTRAL NERVOUS SYSTEM (squished) ─────────────────────────────
    node((5, 1.45), nb(th, [Cortical], tag: [flexible · learned]), name: <cortical>, fill: lane-cns, width: Wc),
    node((5, 2.7), nb(th, [Subcortical], tag: [fast · reflexive]), name: <subcortical>, fill: lane-cns, width: Wc),
    node((5, 3.9), nb(th, [Efferent command], tag: [at $t + delta t$]), name: <efferent>, fill: white, width: Wc),

    // ── subject → instrument (the sensor observes the physical thing) ─
    edge(<envsub>, <worldcam>, "->"),
    edge(<eyesub>, <eyetracker>, "->"),
    edge(<bodysub>, <cameras>, "->"),
    edge(<bodysub>, <imu>, "->"),
    edge(<groundsub>, <plates>, "->"),

    // ── sensor → measurement ──────────────────────────────────────────
    edge(<worldcam>, <scene>, "->"),
    edge(<eyetracker>, <eyekp>, "->"),
    edge(<cameras>, <bodykp>, "->"),
    edge(<imu>, <segorient>, "->"),
    edge(<plates>, <grf>, "->"),

    // ── measurement → kinematic estimate ──────────────────────────────
    edge(<eyekp>, <eyekin>, "->"),
    edge(<bodykp>, <hybrid>, "->"),
    edge(<segorient>, <hybrid>, "->"),
    edge(<hybrid>, <bodykin>, "->"),

    // ── kinematic → composite estimate ────────────────────────────────
    edge(<eyekin>, <gaze>, "->"),
    edge(<bodykin>, <gaze>, "->", label: elabel(th, [head pose]), label-side: right),
    edge(<bodykin>, <invdyn>, "->"),
    edge(<grf>, <invdyn>, "->"),

    // ── composite estimate → peripheral nervous system ────────────────
    edge(<gaze>, <retina>, "->", label: elabel(th, [→curl], fill: mark-build), label-pos: 0.5, label-side: left),
    edge(<scene>, <retina>, "->", bend: 24deg, label: elabel(th, [scene / terrain]), label-pos: 0.15, label-side: left),
    edge(<bodykin>, <retina>, "->", bend: -22deg, label: elabel(th, [self-motion]), label-side: right),
    edge(<invdyn>, <muscle>, "->"),

    // ── periphery → central nervous system (thickness = weight) ───────
    edge(<retina>, <cortical>, "->", stroke: 1.5pt + ink),
    edge(<retina>, <subcortical>, "->", stroke: 0.4pt + ink),
    edge(<muscle>, <subcortical>, "->", stroke: 1.5pt + ink),
    edge(<muscle>, <cortical>, "->", stroke: 0.4pt + ink),

    // ── cortical ↔ subcortical (reciprocal) ───────────────────────────
    edge(<cortical>, <subcortical>, "->", bend: 24deg),
    edge(<subcortical>, <cortical>, "->", bend: 24deg),

    // ── efferent output + recurrence that advances the frame ──────────
    edge(<cortical>, <efferent>, "->", stroke: 1pt + ink),
    edge(<subcortical>, <efferent>, "->", stroke: 1pt + ink),
    edge(
      <efferent>, (5, 4.4), (-1.75, 4.4), (-1.75, 1), <eyesub>,
      "->", dash: "dashed", stroke: 0.7pt + mark-build,
      label: elabel(th, [$t + delta t$ · re-aims the eye], fill: mark-build), label-pos: 0.42, label-side: left,
    ),
    edge(
      <efferent>, (5, 4.4), (-1.75, 4.4), (-1.75, 2.425), <bodysub>,
      "->", dash: "dashed", stroke: 0.7pt + mark-build,
      label: elabel(th, [$t + delta t$ · re-drives the body], fill: mark-build), label-pos: 0.30, label-side: left,
    ),
  )
}

// ── calculus strip: full-width, below the diagram; fully self-contained ─
#let sidebox(th) = block(
  width: 100%,
  inset: (x: 8pt * th.f, y: 6pt * th.f),
  stroke: 0.6pt + hairline,
  radius: th.radius,
  fill: rgb("#fbfbfd"),
)[
  #set par(leading: 0.5em, justify: false)
  #set text(size: 6.5pt * th.f, fill: ink, hyphenate: false)
  #text(size: th.head, weight: "bold", fill: headink, tracking: 0.3pt, smallcaps[Reading the chart as a calculus])
  #h(0.6em) #text(size: 6.4pt * th.f, fill: tagink)[each value is a bundle of *channels* (degrees of freedom); the top legend grades each channel.]
  #v(0.4em)

  #grid(
    columns: (1.25fr, 1fr, 1fr),
    column-gutter: 1.3em,
    align: left + top,

    // ── column 1: notation, defined from scratch ──────────────────────
    [
      #text(weight: "bold", fill: headink)[Notation]
      #v(0.2em)
      #grid(
        columns: (auto, 1fr), column-gutter: 0.55em, row-gutter: 0.42em, align: (left + top, left),
        $cal(E)$, [an *energy* a sensor is sensitive to: $cal(P)$ photons · $cal(I)$ inertial · $cal(M)$ contact],
        [$cal(E) tack.r s$], [*transduce* — a sensor *yields* ($tack.r$) a raw *signal* $s$ from an energy (image · inertial · force)],
        $arrow.r$, [*derive* — a signal is processed into a measurement, then an estimate],
        $plus.o$, [*compose* — chain relative poses; the shared reference frame cancels],
        $join$, [*fuse* — union the measured subspaces of two estimators],
        $Pi$, [*project* — the only operator that maps input DOF onto output channels],
        [$approx v^star$], [*approximates* the true latent value $v^star$],
      )
    ],

    // ── column 2: the chains (vision path) ────────────────────────────
    [
      #text(weight: "bold", fill: headink)[The chains] #text(fill: tagink)[— energy $tack.r$ signal $arrow.r$ measurement $arrow.r$ estimate]
      #v(0.2em)
      #grid(
        columns: (auto, 1fr), column-gutter: 0.55em, row-gutter: 0.5em, align: (left + top, left),
        [*Eye*], [$cal(P) tack.r$ image $arrow.r$ eye keypoints $arrow.r$ eye-kin #linebreak() (elev, abd, tors, pupil, accom)],
        [*Body*], [$cal(P) tack.r$ images $arrow.r$ body keypoints; #linebreak() $cal(I) tack.r$ accel+gyro $arrow.r$ segment orient; #linebreak() body-kin $=$ keypoints $join$ orient],
        [*Gaze*], [$g =$ eye-kin $plus.o$ head-in-world],
      )
    ],

    // ── column 3: the chains (projection to the nervous system) ───────
    [
      #text(weight: "bold", fill: headink)[Into the nervous system]
      #v(0.2em)
      #grid(
        columns: (auto, 1fr), column-gutter: 0.55em, row-gutter: 0.5em, align: (left + top, left),
        [*Retinal input*], [$rho = Pi(g, "scene", dot(x)) approx rho^star$ #linebreak() retinal image & optic flow (afferent)],
        [*Kinetics*], [$cal(M) tack.r$ force $arrow.r$ GRF; #h(0.2em) $tau = "ID"("body-kin, GRF; BSP")$],
        [*Motor*], [$a = upright(M)(tau) join "EMG" approx a^star$ #linebreak() muscle drive (efferent)],
      )
    ],
  )
]

// ── time ribbon: the figure is one instant t, between t−δt and t+δt ─────
#let timeaxis(th) = block(width: 100%, inset: (top: 2.5pt * th.f))[
  #set align(center)
  #line(length: 100%, stroke: 0.4pt + hairline)
  #v(2pt * th.f)
  #text(size: th.legend, fill: tagink)[
    #box[previous instant #h(0.25em) $arrow.l.long$ #h(0.35em) $t - delta t$]
    #h(0.7em) · #h(0.7em)
    #box(fill: rgb("#ededed"), inset: (x: 5pt, y: 2pt), radius: 2pt)[
      #text(fill: ink, weight: "bold")[this figure — a single instant $t$]
    ]
    #h(0.7em) · #h(0.7em)
    #box[$t + delta t$ #h(0.35em) $arrow.r.long$ #h(0.25em) next instant]
    #h(1.1em)
    #text(style: "italic")[the efferent loop advances the frame by $delta t$]
  ]
]

// ── stacked: legend · diagram · time ribbon · calculus strip ────────────
#let chain-figure(th, with-manip: true) = block[
  #legend(th)
  #v(2.5pt * th.f)
  #align(center)[#chain(th, with-manip: with-manip)]
  #timeaxis(th)
  #v(3.5pt * th.f)
  #sidebox(th)
]
