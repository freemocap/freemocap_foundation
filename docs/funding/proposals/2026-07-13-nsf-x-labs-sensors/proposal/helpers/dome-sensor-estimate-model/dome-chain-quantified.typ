// ══════════════════════════════════════════════════════════════════════
// Quantified DOME measurement chain — lean version of dome-chain-compact.typ.
// Same boxes/arrows as Fig 2; adds one small reported-error line under the
// nodes on the retinal-input (vision) path, each with a single provenance
// glyph:  ● open/traceable · ◐ closed model (unknown) · ✗ not truth-preserving
// · ◆ DOME target.  Numbers trace to notes/FMC-X-Technology-Landscape-
// Metrics-Reference.md and the Matthis/Muller/Hayhoe papers (§4b).
// No header bands, no legend band, no budget strip — kept tight on purpose.
// Standalone:  typst compile dome-chain-quantified.typ
// (No typst binary in the authoring sandbox — compile locally to verify.)
// ══════════════════════════════════════════════════════════════════════

#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

#set page(paper: "us-letter", margin: (x: 0.6in, y: 0.5in))
#set text(font: "Libertinus Serif")

#let lEye=rgb("#dce8fb"); #let lBody=rgb("#d9efe1"); #let lWorld=rgb("#fbe9cf")
#let lComp=rgb("#e7ddf7"); #let lTgt=rgb("#f7dde9"); #let lCns=rgb("#e5e7ee")
#let ink=rgb("#1c1c1c")
#let cOpen=rgb("#2e7d52"); #let cClosed=rgb("#b9770a"); #let cFaked=rgb("#b23a48"); #let cTgt=rgb("#1f6feb")
#let tgt=1.1pt + cTgt; #let dsd=0.9pt + rgb("#2b2b2b")

// provenance glyph
#let flagof(code) = {
  if code == "open" { ([●], cOpen) } else if code == "closed" { ([◐], cClosed) }
  else if code == "faked" { ([✗], cFaked) } else if code == "target" { ([◆], cTgt) }
  else { ([·], ink) }
}
#let fg(code) = { let (g, c) = flagof(code); text(fill: c, weight: "bold")[#g] }

// node: name, optional grey sub-line, optional error line (val + glyph)
#let nn(name, sub, err) = align(center)[
  #text(size: 5.7pt, weight: "semibold", fill: ink)[#name]
  #if sub != none [#linebreak()#text(size: 4.3pt, fill: rgb("#777"))[#sub]]
  #if err != none [#linebreak()#text(size: 4.7pt, fill: rgb("#333"))[#err]]
]
#let bx(pos, col, name, sub: none, err: none, st: 0.45pt + rgb("#8a8a8a")) = node(
  pos, nn(name, sub, err), fill: col, stroke: st, corner-radius: 2pt, inset: 2.6pt,
  width: 1.55cm, shape: fletcher.shapes.rect,
)
#let el(t) = text(size: 4.6pt, fill: rgb("#444"))[#t]

#let fit-to-width(body) = layout(size => {
  let w = measure(body).width
  let s = if w > 0pt { calc.min(100%, (size.width / w) * 100%) } else { 100% }
  scale(x: s, y: s, origin: top + left, reflow: true, body)
})

#let dome-chain-quantified-figure = [#figure(
  fit-to-width(diagram(
    spacing: (6.0mm, 3.2mm),
    node-outset: 0pt,

    // ── left desiderata (true facts) ──
    bx((-1, 0), lWorld, [Environment], st: dsd),
    bx((-1, 1), lEye,   [Eye], st: dsd),
    bx((-1, 2.425), lBody, [Body], st: dsd),
    bx((-1, 3.8), lWorld, [Ground contact], st: dsd),

    // ── sensors ──
    bx((0, 0), lWorld, [World scanner], err: [≈3 cm·0.5° #fg("open")]),
    bx((0, 1), lEye,   [Eye tracker], err: [0.6–1.8° #fg("closed")]),
    bx((0, 2.0), lBody, [Camera mocap], err: [2–6° #fg("open")]),
    bx((0, 2.85), lBody, [IMU mocap], err: [±1–2° #fg("closed") · yaw #fg("faked")]),
    bx((0, 3.8), lWorld, [Force plates]),

    // ── off-sensor estimates ──
    bx((1, 0), lWorld, [Scene geometry]),
    bx((1, 1), lEye,   [Eye keypoints]),
    bx((1, 2.0), lBody, [Body keypoints]),
    bx((1, 2.85), lBody, [Segment orient.]),
    bx((1, 3.8), lWorld, [Ground reaction]),
    node((1.5, 2.425), text(size: 7pt, fill: ink)[⋈], name: <join>, fill: white, stroke: 0.4pt + rgb("#888"), corner-radius: 1pt, inset: 2pt),

    // ── kinematic ──
    bx((2, 1), lEye,   [Eye kinematics], sub: [torsion/accom absent]),
    bx((2, 2.425), lComp, [Body kinematics], err: [head pose ±1–2° #fg("open")]),

    // ── composite ──
    bx((3, 1), lComp, [Gaze in world], err: [±1° calib · ±2–3° dyn], st: 0.9pt + cOpen),
    bx((3, 3.4), lComp, [Inverse dynamics]),

    // ── peripheral (targets) ──
    bx((4, 1), lTgt, [Retinal input], err: [target < 1° #fg("target")], st: tgt),
    bx((4, 3.4), lTgt, [Muscle activation]),

    // ── central nervous system ──
    bx((5, 1.45), lCns, [Cortical], st: dsd),
    bx((5, 2.7), lCns, [Subcortical], st: dsd),
    bx((5, 3.9), lCns, [Efferent]),

    // ── observe (desideratum → sensor) ──
    edge((-1, 0), (0, 0), "->"),
    edge((-1, 1), (0, 1), el[observe], "->", label-side: left),
    edge((-1, 2.425), (0, 2.0), "->"), edge((-1, 2.425), (0, 2.85), "->"),
    edge((-1, 3.8), (0, 3.8), "->"),

    // ── transduce (sensor → off-sensor) ──
    edge((0, 0), (1, 0), "->"),
    edge((0, 1), (1, 1), el[transduce], "->", label-side: left),
    edge((0, 2.0), (1, 2.0), "->"), edge((0, 2.85), (1, 2.85), "->"),
    edge((0, 3.8), (1, 3.8), "->"),

    // ── derive / fuse ──
    edge((1, 1), (2, 1), el[derive], "->", label-side: left),
    edge((1, 2.0), <join>, "->"), edge((1, 2.85), <join>, "->"),
    edge(<join>, (2, 2.425), "->"),

    // ── compose ──
    edge((2, 1), (3, 1), "->"),
    edge((2, 2.425), (3, 1), el[head pose], "->", label-side: right),
    edge((2, 2.425), (3, 3.4), "->"),
    edge((1, 3.8), (3, 3.4), el[GRF], "->", label-side: right),

    // ── project (Π) onto the retinal input ──
    edge((3, 1), (4, 1), el[Π], "->"),
    edge((1, 0), (4, 1), el[scene], "->", bend: 20deg, label-pos: 0.12),
    edge((2, 2.425), (4, 1), el[self-motion], "->", bend: -18deg, label-side: right),

    // ── drive ──
    edge((3, 3.4), (4, 3.4), el[drive], "->"),

    // ── vision afferent / motor efferent ──
    edge((4, 1), (5, 1.45), el[afferent], "->", stroke: 1.2pt + ink),
    edge((4, 1), (5, 2.7), "->", stroke: 0.35pt + ink),
    edge((5, 2.7), (4, 3.4), el[efferent], "->", bend: 15deg, stroke: 1.0pt + ink),
    edge((4, 3.4), (5, 2.7), el[proprioception], "->", bend: 15deg, stroke: 0.8pt + ink),
    edge((4, 3.4), (5, 1.45), "->", stroke: 0.35pt + ink),
    edge((5, 1.45), (5, 2.7), "->", bend: 22deg),
    edge((5, 2.7), (5, 1.45), "->", bend: 22deg),
    edge((5, 1.45), (5, 3.9), "->"), edge((5, 2.7), (5, 3.9), "->"),
  )),
  kind: image,
  caption: [*Quantifying the technology landscape.* Along the vision path, each stage carries the best reported error of today's tools, tagged by provenance — #fg("open") open/traceable, #fg("closed") closed model (uncertainty unknown), #fg("faked") closed & *not truth-preserving* (e.g. Xsens replaces an out-of-bounds magnetometer yaw with a model fit), #fg("target") the #smallcaps[Dome] target. The best *mobile* eye tracker resolves gaze to 0.6–1.8° in the head frame, but the quantity vision needs is gaze *in the world*: composing eye with head/body pose and scene geometry, the only published end-to-end eye+IMU+world method (this team's prior work) reaches ±1° calibrated and ±2–3° walking — at or above the *< 1°* needed to predict neural activity, with unquantified error added wherever a closed pipeline intervenes. No existing toolchain delivers sub-1° gaze-in-world with a propagated uncertainty budget; that is the #smallcaps[Dome] goal.],
) <fig-landscape-quantified>]

#dome-chain-quantified-figure
