// ══════════════════════════════════════════════════════════════════════
// Quantified DOME measurement chain — lean version of dome-chain-compact.typ.
// Same boxes/arrows as Fig 2. Reported error sits on the QUANTITY it measures
// (not the instrument): world-scanner error → Scene geometry, eye-tracker
// gaze error → Eye kinematics, camera error → Body keypoints, IMU error →
// Segment orientations. Provenance glyph per number:
//   ● open/traceable · ◐ closed model (unknown) · ✗ closed & not-truth-preserving
//   · ◆ DOME target · ? = not built / not measured yet (the things DOME builds,
//   drawn big and blue).
// Numbers trace to notes/FMC-X-Technology-Landscape-Metrics-Reference.md and
// the Matthis/Muller/Hayhoe papers (§4b). Superscripts key to the caption.
// Standalone:  typst compile dome-chain-quantified.typ
// (No typst binary in the authoring sandbox — compile locally to verify.)
// ══════════════════════════════════════════════════════════════════════

#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

#set page(paper: "us-letter", margin: (x: 0.6in, y: 0.5in))
#set text(font: "Libertinus Serif")

#let lEye=rgb("#dce8fb"); #let lBody=rgb("#d9efe1"); #let lWorld=rgb("#fbe9cf")
#let lComp=rgb("#e7ddf7"); #let lTgt=rgb("#f7dde9"); #let lCns=rgb("#e5e7ee")
#let ink=rgb("#111111")
#let cOpen=rgb("#207a4a"); #let cClosed=rgb("#a86a00"); #let cFaked=rgb("#a3283a"); #let cBuild=rgb("#1558d6")
#let tgt=1.2pt + cBuild; #let dsd=1.0pt + rgb("#222")

// provenance glyph
#let flagof(code) = {
  if code == "open" { ([●], cOpen) } else if code == "closed" { ([◐], cClosed) }
  else if code == "faked" { ([✗], cFaked) } else if code == "target" { ([◆], cBuild) }
  else { ([·], ink) }
}
#let fg(code) = { let (g, c) = flagof(code); text(fill: c, weight: "bold")[#g] }
// build marker: big, blue "?" for things DOME will build / measure
#let bld = text(size: 9.5pt, weight: "bold", fill: cBuild)[?]
#let sup(t) = super(text(size: 4.3pt, fill: rgb("#555"))[#t])

// node: name, optional grey device/label sub-line, optional error content.
// Tight leading so stacked lines pack closely.
#let nn(name, sub, err) = {
  set par(leading: 0.28em, spacing: 0.28em, justify: false)
  set text(hyphenate: false)
  align(center)[
    #text(size: 6.5pt, weight: "semibold", fill: ink)[#name]
    #if sub != none [#linebreak()#text(size: 5.2pt, fill: rgb("#111111"))[#sub]]
    #if err != none [#linebreak()#text(size: 6.5pt, weight: "bold", fill: black)[#err]]
  ]
}
#let bx(pos, col, name, sub: none, err: none, w: 1.7cm, st: 0.5pt + rgb("#7a7a7a")) = node(
  pos, nn(name, sub, err), fill: col, stroke: st, corner-radius: 2pt, inset: 2.4pt,
  width: w, shape: fletcher.shapes.rect,
)
#let el(t) = text(size: 5.6pt, fill: rgb("#2a2a2a"))[#t]

#let fit-to-width(body) = layout(size => {
  let w = measure(body).width
  let s = if w > 0pt { calc.min(100%, (size.width / w) * 100%) } else { 100% }
  scale(x: s, y: s, origin: top + left, reflow: true, body)
})

#let dome-chain-quantified-figure = [#figure(
  fit-to-width(diagram(
    spacing: (6.5mm, 3mm),
    node-outset: 0pt,

    // ── left desiderata (true facts) ──
    bx((-1, 0), lWorld, [Environment], st: dsd),
    bx((-1, 1), lEye,   [Eye], st: dsd),
    bx((-1, 2.425), lBody, [Body], st: dsd),
    bx((-1, 3.8), lWorld, [Ground contact], st: dsd),

    // ── sensors (instrument named; error lives downstream on the quantity) ──
    bx((0, 0), lWorld, [World scanner], sub: [photogrammetry]),
    bx((0, 1), lEye,   [Eye tracker], sub: [Tobii·Pupil·AdHawk]),
    bx((0, 2.0), lBody, [Camera mocap], sub: [FreeMoCap]),
    bx((0, 2.85), lBody, [IMU mocap], sub: [Xsens]),
    bx((0, 3.8), lWorld, [Force plates]),

    // ── off-sensor estimates (error on the measured quantity) ──
    bx((1, 0), lWorld, [Scene geometry], err: [0.5°#sup[2] #fg("open")]),
    bx((1, 1), lEye,   [Eye keypoints]),
    bx((1, 2.0), lBody, [Body keypoints], err: [2–6°#sup[6] #fg("open")]),
    bx((1, 2.85), lBody, [Segment orient.], err: [±1–2°#sup[1] #fg("closed") · yaw #fg("faked")]),
    node((1.5, 2.425), {
      set par(leading: 0.2em, spacing: 0.2em)
      align(center)[#text(size: 6.2pt, weight: "semibold", fill: ink)[Hybrid]#linebreak()#bld]
    }, name: <join>, fill: white, stroke: tgt, corner-radius: 2pt, inset: 2.2pt),

    // ── kinematic ──
    bx((2, 1), lEye, [Eye kinematics],
      err: [elev/abd 0.6–1.8°#sup[3,4,5] #fg("closed")#linebreak()pupil #fg("open")#linebreak()torsion #bld · accom #bld], w: 2.5cm),
    bx((2, 2.425), lComp, [Body kinematics], sub: [world frame]),

    // ── composite ──
    bx((3, 1), lComp, [Gaze in world], sub: [eye ⊕ head], err: [±1° / ±2–3°#sup[1]], st: 1.1pt + cOpen),
    bx((3, 3.4), lComp, [Inverse dynamics]),

    // ── peripheral (targets) ──
    bx((4, 1), lTgt, [Retinal input], sub: [slip 0.26–0.83°#sup[2]], err: [< 1° target #fg("target")], st: tgt),
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
    edge((4, 1), (5, 1.45), el[afferent], "->", stroke: 1.3pt + ink),
    edge((4, 1), (5, 2.7), "->", stroke: 0.4pt + ink),
    edge((5, 2.7), (4, 3.4), el[efferent], "->", bend: 15deg, stroke: 1.1pt + ink),
    edge((4, 3.4), (5, 2.7), el[proprioception], "->", bend: 15deg, stroke: 0.8pt + ink),
    edge((4, 3.4), (5, 1.45), "->", stroke: 0.4pt + ink),
    edge((5, 1.45), (5, 2.7), "->", bend: 22deg),
    edge((5, 2.7), (5, 1.45), "->", bend: 22deg),
    edge((5, 1.45), (5, 3.9), "->"), edge((5, 2.7), (5, 3.9), "->"),
  )),
  kind: image,
  caption: [
    *Quantifying the technology landscape.* Each reported error is placed on the *quantity it
    measures*, not the instrument, and tagged by provenance — #fg("open") open & traceable,
    #fg("closed") closed vendor model (uncertainty unknown), #fg("faked") closed & *not
    truth-preserving* (Xsens#super[1'] fills an out-of-bounds magnetometer yaw with a model fit),
    #fg("target") #smallcaps[Dome] target, and a big blue #text(fill: cBuild, weight: "bold")[?]
    for what is *not built or measured yet* — the capabilities #smallcaps[Dome] adds. Mobile eye
    trackers resolve gaze (elevation/abduction) in the *head frame* to 0.6° (Tobii Pro Glasses
    3#super[4]), 1.3–1.8° (Pupil Labs Neon#super[3]), and ≈1° (AdHawk MindLink#super[5]), and give
    pupil diameter — but *torsion and accommodation are measured by no mobile tracker* (#text(fill:
    cBuild, weight: "bold")[?]), and the camera–IMU *Hybrid* fusion (#text(fill: cBuild, weight:
    "bold")[?]) is itself unbuilt. The quantity vision needs is gaze *in the world*: composing eye
    with head/body pose (IMU segment orientation ±1–2°#super[1]; markerless keypoints 2–6°#super[6])
    and photogrammetric scene geometry (median ≈3 cm ≈ 0.5°#super[2]), the only published end-to-end
    eye + IMU + world method — *this team's own prior work* — reaches *±1° calibrated and ±2–3°
    during natural walking* (Matthis, Yates & Hayhoe 2018#super[1]), with retinal-slip precision mode
    0.26° / median 0.83° (Muller et al. 2022/2023#super[2]), against the *< 1°* gaze-in-world needed
    to predict neural activity. No existing toolchain delivers sub-1° gaze-in-world with a propagated
    uncertainty budget — the #smallcaps[Dome] goal.
    #v(2pt)
    #text(size: 7pt)[*Sources:* #super[1] Matthis, Yates & Hayhoe 2018, _Curr. Biol._ 28:1224–1233
    (this team); #super[1'] Xsens/Movella MVN magnetometer-mapping behavior; #super[2] Muller et al.
    2022 (_bioRxiv_) / 2023, _eLife_ 12:e82410 (this team); #super[3] Pupil Labs Neon accuracy report;
    #super[4] Tobii Pro Glasses 3 spec; #super[5] AdHawk MindLink spec; #super[6] Cherian 2026
    FreeMoCap dissertation, cf. Theia3D & OpenCap validations.]
  ],
) <fig-landscape-quantified>]

#dome-chain-quantified-figure
