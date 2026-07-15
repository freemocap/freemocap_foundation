// ════════════════════════════════════════════════════════════════════════
//  dome-sensor-estimate-flow.typ
//
//  Renders the DOME measurement-chain figure. All geometry lives in
//  fmcx-dome-flow-chart.typ; `theme(f: ...)` scales the whole figure.
//
//  Compile:  typst compile dome-sensor-estimate-flow.typ
//  Watch:    typst watch dome-sensor-estimate-flow.typ
// ════════════════════════════════════════════════════════════════════════

// ════════════════════════════════════════════════════════════════════════
//  fmcx-dome-flow-chart.typ
//
//  The DOME measurement-chain figure. Desiderata bookend both sides:
//
//    DESIDERATA            SENSORS         MEASUREMENT CHAIN          DESIDERATA
//    (externally     ->    straddle   ->   sensor reference    ->     (nervous system,
//     observable:          the real–       frame ... into the         not externally
//     eye, body,           internal        retinotopic reference      observable:
//     environment)         boundary        frame                      retinal input,
//                                                                      muscle activation,
//                                                                      central nervous
//                                                                      system)
//
//  Both ends are the True Facts of the universe we want to know. Everything
//  between is measurement machinery whose one job is to transport an estimate
//  out of each sensor's own reference frame and into the reference frame the
//  nervous system uses — retinotopic on the vision path.
//
//  Every value is a bundle of channels (degrees of freedom); each channel is
//  marked measured (●) or inferred under a prior (◐), and every estimate names
//  the reference frame it lives in.
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
#let boundary = rgb("#5a5a5a")       // the real–internal transduction boundary
#let desid-stroke = 1.1pt + rgb("#2b2b2b")  // marks a desideratum (a True Fact)

#let mark-ok = rgb("#2e7d52")    // ● measured directly and well
#let mark-inf = rgb("#b9770a")   // ◐ inferred under an explicit prior
#let mark-build = rgb("#c0392b") // retained for API compatibility
#let mark-could = rgb("#2f6fb0") // retained for API compatibility

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
  if code == "ok" { ([●], mark-ok) } else if code == "inf" { ([◐], mark-inf) } else { ([·], ink) }
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

// ── headers: two-line band super-header and column sub-header ────────────
#let bandhead(th, top, bottom) = block(width: 100%, inset: (y: 2.5pt * th.f), radius: th.radius, fill: rgb("#ececef"), stroke: 0.5pt + hairline)[
  #set align(center)
  #set text(hyphenate: false)
  #text(size: th.band, weight: "bold", fill: headink, tracking: 0.35pt, smallcaps(top))
  #linebreak()
  #text(size: th.band * 0.82, fill: tagink, tracking: 0.2pt, smallcaps(bottom))
]
#let subhead(th, t) = align(center)[
  #set text(hyphenate: false)
  #text(size: th.head * 0.98, fill: tagink)[#t]
]

// ── legend: the per-channel vocabulary, one slim band at the top ────────
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
    #h(0.4em) #text(size: th.legend, weight: "bold", fill: tagink)[· each estimate names the reference frame it lives in · ]
    #box(inset: (right: 0.3em))[#text(size: th.legend, fill: boundary, weight: "bold")[▮]] #text(size: th.legend, fill: ink)[the real–internal boundary (transduction)]
  ]
}

// ════════════════════════════════════════════════════════════════════════
//  chain(): the banded measurement DAG.
//    x = -1 left desiderata · 0 sensors · 1 measurements · 2 kinematic
//        3 composite · 4 peripheral NS · 5 central NS. Hybrid at 1.5.
// ════════════════════════════════════════════════════════════════════════
#let chain(th, with-manip: true) = {
  let W = th.W
  let Wc = 0.8 * W // central-nervous-system column
  let Ws = 0.85 * W // desideratum column (the True Fact being measured)

  let scene-tag = if with-manip { [manipulable: VR/AR/XR, LED, terrain] } else { none }

  diagram(
    spacing: th.spacing,
    node-inset: th.inset,
    node-corner-radius: th.radius,
    node-stroke: 0.5pt + hairline,
    edge-stroke: 0.6pt + ink,
    label-sep: 1.2pt * th.f,

    // ── band dividers (behind the nodes); x=0.5 is the transduction boundary ─
    edge((0.5, -1.9), (0.5, 4.4), stroke: 1.2pt + boundary),
    edge((1.5, -1.5), (1.5, 4.4), stroke: 0.5pt + divider),
    edge((3.5, -1.5), (3.5, 4.4), stroke: 0.5pt + divider),

    // ── band super-headers (two lines each) ───────────────────────────
    node((-1, -1.8), bandhead(th, [Desiderata], [externally observable]), stroke: none, fill: none, width: Ws),
    node((0, -1.8), bandhead(th, [Sensors], [straddle the boundary]), stroke: none, fill: none, width: W),
    node((2, -1.8), bandhead(th, [Measurement chain], [into retinotopic coordinates]), stroke: none, fill: none, width: 5.7cm * th.f),
    node((4.5, -1.8), bandhead(th, [Desiderata], [nervous system]), stroke: none, fill: none, width: 2.9cm * th.f),

    // ── column sub-headers ────────────────────────────────────────────
    node((-1, -1.05), subhead(th, [true facts of the world]), stroke: none, fill: none, width: Ws),
    node((0, -1.05), subhead(th, [transduce energy $arrow.r$ signal]), stroke: none, fill: none, width: W),
    node((1, -1.05), subhead(th, [off the sensor]), stroke: none, fill: none, width: W),
    node((2, -1.05), subhead(th, [kinematic]), stroke: none, fill: none, width: W),
    node((3, -1.05), subhead(th, [composite]), stroke: none, fill: none, width: W),
    node((4, -1.05), subhead(th, [peripheral]), stroke: none, fill: none, width: W),
    node((5, -1.05), subhead(th, [central]), stroke: none, fill: none, width: Wc),

    // ── LEFT DESIDERATA: the externally observable True Facts ─────────
    node((-1, 0), nb(th, [Environment], tag: [scene + terrain]), name: <envsub>, stroke: desid-stroke, fill: lane-world, width: Ws),
    node((-1, 1), nb(th, [Eye], tag: [pose + optics]), name: <eyesub>, stroke: desid-stroke, fill: lane-eye, width: Ws),
    node((-1, 2.425), nb(th, [Body], tag: [segment poses]), name: <bodysub>, stroke: desid-stroke, fill: lane-body, width: Ws),
    node((-1, 3.8), nb(th, [Ground contact], tag: [foot–ground forces]), name: <groundsub>, stroke: desid-stroke, fill: lane-world, width: Ws),

    // ── WORLD ─────────────────────────────────────────────────────────
    node((0, 0), nb(th, [World & terrain scanner], chans: (([$cal(P) tack.r$ depth], ("ok",)),)), name: <worldcam>, fill: lane-world, width: W),
    node((1, 0), nb(th, [Scene geometry], tag: scene-tag, chans: (([groundplane], ("ok",)), ([surfaces], ("inf",)))), name: <scene>, fill: lane-world, width: W),

    // ── EYE / VISION ──────────────────────────────────────────────────
    node((0, 1), nb(th, [Eye tracker], chans: (([$cal(P) tack.r$ image], ("ok",)),)), name: <eyetracker>, fill: lane-eye, width: W),
    node((1, 1), nb(th, [Eye keypoint trajectories], tag: [image reference frame], chans: (([keypoints], ("ok",)),)), name: <eyekp>, fill: lane-eye, width: W),
    node(
      (2, 1),
      nb(th, [Eye kinematics], tag: [eye-in-head reference frame], chans: (([elev], ("ok",)), ([abd], ("ok",)), ([tors], ("inf",)), ([pupil], ("ok",)), ([accom], ("inf",)))),
      name: <eyekin>, fill: lane-eye, width: W,
    ),
    node(
      (3, 1),
      nb(th, [Gaze in world], tag: [world reference frame], chans: (([orient], ("ok",)), ([tors], ("inf",)))),
      name: <gaze>, fill: lane-comp, width: W,
    ),
    node(
      (4, 1),
      nb(
        th, [Retinal input],
        tag: [world structure in retinotopic reference frame],
        chans: (([structure], ("inf",)), ([flow], ("inf",))),
        neural: [afferent input → visual cortex],
      ),
      name: <retina>, stroke: desid-stroke, fill: lane-pns, width: W,
    ),

    // ── BODY ──────────────────────────────────────────────────────────
    node((0, 2.0), nb(th, [Camera mocap], chans: (([$cal(P) tack.r$ images], ("ok",)),)), name: <cameras>, fill: lane-body, width: W),
    node((1, 2.0), nb(th, [Body keypoint trajectories], tag: [accurate, imprecise], chans: (([keypoints], ("ok",)),)), name: <bodykp>, fill: lane-body, width: W),
    node((0, 2.85), nb(th, [IMU mocap], chans: (([$cal(I) tack.r$ accel, gyro], ("ok",)),)), name: <imu>, fill: lane-body, width: W),
    node((1, 2.85), nb(th, [Segment orientations], chans: (([ang. rate], ("ok",)), ([abs. orient], ("inf",)))), name: <segorient>, fill: lane-body, width: W),
    node((1.5, 2.425), nb(th, [$join$]), name: <hybrid>, fill: white),
    node((2, 2.425), nb(th, [Body kinematics], tag: [world reference frame], chans: (([translation], ("ok",)), ([orientation], ("ok",)))), name: <bodykin>, fill: lane-comp, width: W),

    // ── KINETICS ──────────────────────────────────────────────────────
    node((0, 3.8), nb(th, [Force plates & insoles], chans: (([$cal(M) tack.r$ force], ("ok",)),)), name: <plates>, fill: lane-world, width: W),
    node((1, 3.8), nb(th, [Ground reaction forces], tag: [wrench = 3 forces + 3 torques], chans: (([wrench], ("ok",)), ([centre of pressure], ("ok",)))), name: <grf>, fill: lane-world, width: W),
    node((3, 3.4), nb(th, [Inverse dynamics], tag: [$tau$ = ID(body-kin, GRF; BSP)], chans: (([joint torques], ("inf",)),)), name: <invdyn>, fill: lane-comp, width: W),
    node(
      (4, 3.4),
      nb(
        th, [Muscle activation],
        tag: [drive to the motor units],
        chans: (([model estimate], ("inf",)), ([EMG-sensed], ("ok",))),
        neural: [efferent drive → motor units],
      ),
      name: <muscle>, stroke: desid-stroke, fill: lane-pns, width: W,
    ),

    // ── CENTRAL NERVOUS SYSTEM ────────────────────────────────────────
    node((5, 1.45), nb(th, [Cortical]), name: <cortical>, stroke: desid-stroke, fill: lane-cns, width: Wc),
    node((5, 2.7), nb(th, [Subcortical]), name: <subcortical>, stroke: desid-stroke, fill: lane-cns, width: Wc),
    node((5, 3.9), nb(th, [Efferent command], tag: [at $t + delta t$]), name: <efferent>, fill: white, width: Wc),

    // ── desideratum → sensor (the sensor observes the True Fact) ──────
    edge(<envsub>, <worldcam>, "->"),
    edge(<eyesub>, <eyetracker>, "->"),
    edge(<bodysub>, <cameras>, "->"),
    edge(<bodysub>, <imu>, "->"),
    edge(<groundsub>, <plates>, "->"),

    // ── sensor → measurement (transduction crosses the boundary) ──────
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

    // ── composite estimate → peripheral nervous system (project Π) ─────
    edge(<gaze>, <retina>, "->", label: elabel(th, [$Pi$]), label-pos: 0.5, label-side: left),
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

// ── calculus strip: full-width, below the diagram; self-contained ───────
#let sidebox(th) = block(
  width: 100%,
  inset: (x: 8pt * th.f, y: 6pt * th.f),
  stroke: 0.6pt + hairline,
  radius: th.radius,
  fill: rgb("#fbfbfd"),
)[
  #set par(leading: 0.5em, justify: false)
  #set text(size: 6.5pt * th.f, fill: ink, hyphenate: false)
  #text(size: th.head, weight: "bold", fill: headink, tracking: 0.3pt, smallcaps[Reading the chart])
  #h(0.6em) #text(size: 6.4pt * th.f, fill: tagink)[both ends are *desiderata* — the True Facts we want. The chain between them transports each estimate out of its sensor's reference frame and into the reference frame the nervous system uses.]
  #v(0.4em)

  #grid(
    columns: (1.15fr, 1.15fr, 1fr),
    column-gutter: 1.3em,
    align: left + top,

    // ── column 1: notation ────────────────────────────────────────────
    [
      #text(weight: "bold", fill: headink)[Notation]
      #v(0.2em)
      #grid(
        columns: (auto, 1fr), column-gutter: 0.55em, row-gutter: 0.42em, align: (left + top, left),
        $cal(E)$, [an *energy* a sensor is sensitive to: $cal(P)$ photons · $cal(I)$ inertial · $cal(M)$ contact],
        [$cal(E) tack.r s$], [*transduce* — a sensor *yields* ($tack.r$) a raw *signal* $s$; the one physical step, at the real–internal boundary],
        $arrow.r$, [*derive* — a signal is processed into a measurement, then an estimate],
        $plus.o$, [*compose* — chain estimates across reference frames],
        $join$, [*fuse* — combine two estimates of one quantity],
        $Pi$, [*project* — map a state onto an observable],
      )
    ],

    // ── column 2: the reference-frame journey ─────────────────────────
    [
      #text(weight: "bold", fill: headink)[The reference-frame journey]
      #v(0.2em)
      #text(fill: tagink)[Each estimate lives in one reference frame. The vision path is a journey from sensor reference frames into the retinotopic reference frame — the coordinates the visual cortex uses.]
      #v(0.3em)
      #grid(
        columns: (auto, 1fr), column-gutter: 0.55em, row-gutter: 0.42em, align: (left + top, left),
        [*Vision*], [image $arrow.r$ eye-in-head $arrow.r$ world $arrow.r$ retinotopic],
        [*Body*], [camera / IMU sensor $arrow.r$ world (inertial)],
        [*Gaze*], [eye-in-head $plus.o$ head-in-world $arrow.r$ world],
      )
    ],

    // ── column 3: the chains ──────────────────────────────────────────
    [
      #text(weight: "bold", fill: headink)[The chains] #text(fill: tagink)[— energy $tack.r$ signal $arrow.r$ estimate]
      #v(0.2em)
      #grid(
        columns: (auto, 1fr), column-gutter: 0.55em, row-gutter: 0.5em, align: (left + top, left),
        [*Eye*], [$cal(P) tack.r$ image $arrow.r$ keypoints $arrow.r$ eye-kin (elev, abd, tors, pupil, accom)],
        [*Body*], [$cal(P) tack.r$ images $arrow.r$ keypoints; $cal(I) tack.r$ accel+gyro $arrow.r$ segment orient; body-kin $=$ keypoints $join$ orient],
        [*Retinal input*], [$Pi$(gaze, scene, self-motion) — afferent],
        [*Motor*], [$tau =$ ID(body-kin, GRF); muscle $=$ M($tau$) $join$ EMG — efferent],
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


// NSF format: US-letter (8.5 x 11 in), 1-inch margins → 6.5 x 9 in usable.
#set page(width: 8.5in, height: 11in, margin: 1in)
#set text(size: 10pt)
#set par(justify: true, leading: 0.62em)
#show figure.caption: set text(size: 8.5pt)
#set figure(numbering: "1")

#figure(
  chain-figure(theme(f: 0.82)),
  caption: [
    *The measurement chain of a #smallcaps[Dome].* The two ends are *desiderata* — the True
    Facts we want to know. On the left, the *externally observable* facts (the eye, the body,
    the environment); on the right, the facts that are *not* externally observable (the
    afferent retinal input, the efferent muscle activation, and the central nervous system).
    Between them sit the *sensors*, which straddle the real–internal boundary by transducing
    physical energy into signal (the heavy vertical rule), and the *measurement chain* that
    derives estimates from those signals. Its single job is to carry each estimate out of its
    sensor's reference frame and into the reference frame the nervous system uses: the vision
    path runs image → eye-in-head → world → *retinotopic*, the coordinates of the visual
    cortex. Every box is a bundle of *channels*, each marked measured (#text(fill: mark-ok)[●])
    or inferred under a prior (#text(fill: mark-inf)[◐]), and every estimate names the
    reference frame it lives in. Fusion ($join$) and composition ($plus.o$) build the kinematic
    and composite estimates; projection ($Pi$) maps them onto the retinal input and the muscle
    activation. Those two peripheral signals drive the *central nervous system* (cortical and
    subcortical, reciprocally coupled), whose efferent command re-aims the eye and re-drives
    the body at the next instant — closing the loop. The whole figure is a *single instant $t$*;
    the dashed red loop advances the frame by $delta t$. The strip beneath the diagram gives
    the full reading rule, every symbol defined.
  ],
)
