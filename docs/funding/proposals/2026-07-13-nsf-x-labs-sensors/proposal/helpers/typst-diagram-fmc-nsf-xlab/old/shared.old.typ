// ════════════════════════════════════════════════════════════════════════
//  shared.typ
//
//  Everything the DOME measurement-chain figure needs: the theme (all sizes
//  derived from one scale factor), the palette, the bottleneck marks, the
//  legend, and `chain()` — the diagram builder itself.
//
//  Callers pick a scale and a topology:
//
//     #import "shared.typ": theme, chain-figure
//     #chain-figure(theme(f: 1.0), with-manip: true)
//
//  `f` scales every length and font size together, so a figure can be retuned
//  for an in-text slot or a full page by changing one number.
// ════════════════════════════════════════════════════════════════════════

#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

// ── palette ─────────────────────────────────────────────────────────────
#let lane-eye = rgb("#e6eefb")
#let lane-body = rgb("#e4f2e9")
#let lane-world = rgb("#fdf1e0")
#let lane-fused = rgb("#efe7fa")
#let lane-manip = rgb("#f5f5f5")

#let ink = rgb("#242424")
#let neural-ink = rgb("#4a4a4a")
#let hairline = luma(120)
#let ghost = luma(155)

#let mark-build = rgb("#b3382c")
#let mark-gap = rgb("#a8760f")
#let mark-ok = rgb("#2e7d52")

// ── theme: one scale factor drives every size ───────────────────────────
#let theme(f: 1.0) = (
  f: f,
  title: 6.4pt * f,
  sub: 5.1pt * f,
  neural: 5.1pt * f,
  elabel: 5.0pt * f,
  head: 5.8pt * f,
  mark: 6.4pt * f,
  legend: 5.4pt * f,
  W: 2.85cm * f,
  spacing: (5mm * f, 3mm * f),
  inset: 3pt * f,
  radius: 1.6pt * f,
)

// ── bottleneck marks ────────────────────────────────────────────────────
#let bmark(th, status) = {
  let sz = th.mark
  if status == "build" { text(fill: mark-build, size: sz, weight: "bold")[★] } else if status == "gap" {
    text(fill: mark-gap, size: sz, weight: "bold")[◐]
  } else if status == "ok" { text(fill: mark-ok, size: sz, weight: "bold")[●] } else { none }
}

// ── node body: mark + title, optional subtitle, optional neural footer ──
#let nb(th, title, sub: none, status: none, neural: none) = {
  set align(center)
  set par(leading: 0.34em, spacing: 0.3em)
  block[
    #text(size: th.title, weight: "bold", fill: ink)[#bmark(th, status) #title]
    #if sub != none [ \ #text(size: th.sub, fill: luma(100), style: "italic")[#sub] ]
    #if neural != none [
      #v(1pt * th.f)
      #line(length: 90%, stroke: 0.3pt + ghost)
      #v(0.3pt * th.f)
      #text(size: th.neural, fill: neural-ink)[#smallcaps(neural)]
    ]
  ]
}

#let colhead(th, t) = text(size: th.head, weight: "bold", fill: luma(125), smallcaps(t))
#let elabel(th, t, fill: ink) = text(size: th.elabel, fill: fill)[#t]

// ── legend, rendered inside the image ───────────────────────────────────
#let legend(th) = {
  let item(m, label) = box(inset: (right: 0.7em))[#bmark(th, m) #text(size: th.legend, fill: ink)[#label]]
  set align(center)
  block(
    width: 100%,
    inset: (x: 4pt * th.f, y: 3pt * th.f),
    stroke: 0.4pt + ghost,
    radius: th.radius,
    fill: white,
  )[
    #set par(leading: 0.4em)
    #item("ok", [mature])
    #item("gap", [exists, but not to the accuracy the observable demands])
    #item("build", [no instrument delivers this at any price])
    \
    #text(size: th.legend, fill: luma(95), style: "italic")[
      dashed = optional modality or model input · #text(fill: mark-build)[red] = the loop closes through the world we control
    ]
  ]
}

// ════════════════════════════════════════════════════════════════════════
//  chain(): the measurement DAG.
//
//  Columns:  sensor → fused estimate → observable (neural quantity in footer)
//  Lanes:    environment · eye · body · kinetics
//  `with-manip` adds the manipulation node and the red return rail.
// ════════════════════════════════════════════════════════════════════════
#let chain(th, with-manip: true) = {
  let W = th.W

  let manip-nodes = if with-manip {
    (
      node(
        (1, 9.4),
        nb(
          th,
          [Environment manipulation],
          sub: [VR/AR/XR · LED floor & wall panels · actuated terrain & substrate],
          status: "build",
        ),
        name: <manip>,
        fill: lane-manip,
        width: W,
      ),
    )
  } else { () }

  let manip-edges = if with-manip {
    (
      edge(
        <muscle>,
        (2.74, 6.7),
        (2.74, 9.4),
        <manip>,
        "->",
        stroke: 0.6pt + mark-build,
        label: elabel(th, [agent acts on the world], fill: mark-build),
        label-pos: 0.6,
        label-side: left,
      ),
      edge(<manip>, (-0.74, 9.4), (-0.74, 0), <worldcam>, "->", stroke: 0.6pt + mark-build),
      edge(<manip>, <plates>, "->", stroke: 0.6pt + mark-build),
    )
  } else { () }

  diagram(
    spacing: th.spacing,
    node-inset: th.inset,
    node-corner-radius: th.radius,
    node-stroke: 0.4pt + hairline,
    edge-stroke: 0.5pt + ink,
    label-sep: 1.2pt * th.f,

    // ── column headers ────────────────────────────────────────────────
    node((0, -1.35), colhead(th, [Sensor]), stroke: none, fill: none),
    node((1, -1.35), colhead(th, [Fused estimate]), stroke: none, fill: none),
    node((2, -1.35), colhead(th, [Observable]), stroke: none, fill: none),

    // ── environment lane ──────────────────────────────────────────────
    node(
      (0, 0),
      nb(th, [World camera & terrain scanner], sub: [→ scene & groundplane geometry], status: "gap"),
      name: <worldcam>,
      fill: lane-world,
      width: W,
    ),

    // ── upper observable ──────────────────────────────────────────────
    node(
      (2, 1),
      nb(
        th,
        [Retinal projected image & optic flow],
        status: "build",
        neural: [afferent input to the visual system],
      ),
      name: <retina>,
      fill: lane-fused,
      width: W,
    ),

    // ── eye lane ──────────────────────────────────────────────────────
    node(
      (0, 2),
      nb(
        th,
        [Binocular eye tracker],
        sub: [→ eye-in-head kinematics: adduction, elevation, torsion],
        status: "build",
      ),
      name: <eyetracker>,
      fill: lane-eye,
      width: W,
    ),
    node(
      (1, 2),
      nb(th, [Gaze in world], sub: [eye-in-head ⊕ head-in-world], status: "gap"),
      name: <gaze>,
      fill: lane-fused,
      width: W,
    ),

    // ── body lane ─────────────────────────────────────────────────────
    node(
      (0, 3.2),
      nb(th, [Actuated camera array], sub: [→ landmark trajectories: accurate, imprecise], status: "build"),
      name: <cameras>,
      fill: lane-body,
      width: W,
    ),
    node(
      (1, 4.1),
      nb(th, [Body kinematics], sub: [hybrid camera ⊕ IMU; yields head pose], status: "build"),
      name: <bodykin>,
      fill: lane-fused,
      width: W,
    ),
    node(
      (0, 5.0),
      nb(th, [IMU suit], sub: [→ segment orientations: precise, drifting], status: "gap"),
      name: <imu>,
      fill: lane-body,
      width: W,
    ),

    // ── kinetics lane ─────────────────────────────────────────────────
    node(
      (0, 6.7),
      nb(th, [Force plates & pressure insoles], sub: [→ ground reaction forces, centre of pressure], status: "ok"),
      name: <plates>,
      fill: lane-world,
      width: W,
    ),
    node(
      (1, 6.7),
      nb(th, [Inverse dynamics], sub: [joint torques], status: "gap"),
      name: <invdyn>,
      fill: lane-fused,
      width: W,
    ),
    node(
      (2, 6.7),
      nb(
        th,
        [Muscle forces & activations],
        status: "gap",
        neural: [efferent drive to motor units],
      ),
      name: <muscle>,
      fill: lane-fused,
      width: W,
    ),

    // ── model input + extensible modalities ───────────────────────────
    node(
      (1, 8.05),
      nb(th, [Body segment parameters], sub: [inertial model]),
      name: <bsp>,
      fill: white,
      stroke: (paint: ghost, thickness: 0.4pt, dash: "dashed"),
      width: W,
    ),
    node(
      (2, 8.05),
      nb(th, [Extensible modalities], sub: [EMG · mobile EEG · ephys (animal models)]),
      name: <ext>,
      fill: white,
      stroke: (paint: ghost, thickness: 0.4pt, dash: "dashed"),
      width: W,
    ),

    ..manip-nodes,

    // ── fusion edges ──────────────────────────────────────────────────
    edge(<eyetracker>, <gaze>, "->"),
    edge(<cameras>, <bodykin>, "->"),
    edge(<imu>, <bodykin>, "->"),
    edge(<bodykin>, <gaze>, "->", label: elabel(th, [head pose]), label-side: right),
    edge(<bodykin>, <invdyn>, "->"),
    edge(<plates>, <invdyn>, "->"),
    edge(<bsp>, <invdyn>, "->", dash: "dashed", stroke: 0.4pt + ghost),

    // ── observable edges ──────────────────────────────────────────────
    edge(<gaze>, <retina>, "->"),
    edge(<worldcam>, <retina>, "->", label: elabel(th, [scene geometry]), label-side: left),
    edge(
      <bodykin>,
      <retina>,
      "->",
      bend: -34deg,
      dash: "dashed",
      stroke: 0.4pt + ghost,
      label: elabel(th, [self-motion]),
      label-side: left,
    ),
    edge(<invdyn>, <muscle>, "->"),
    edge(
      <ext>,
      <muscle>,
      "->",
      dash: "dashed",
      stroke: 0.4pt + ghost,
      label: elabel(th, [validates]),
      label-side: right,
    ),

    ..manip-edges,
  )
}

// ── diagram + legend, stacked, so the legend lives inside the image ─────
#let chain-figure(th, with-manip: true) = block[
  #chain(th, with-manip: with-manip)
  #v(2.5pt * th.f)
  #legend(th)
]
