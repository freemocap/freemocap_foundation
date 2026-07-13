// ══════════════════════════════════════════════════════════════════════
// Compact DOME measurement chain — ALL boxes, name-only, named arrows.
// Squished companion to dome-sensor-estimate-flow.typ. Standalone:
//   typst compile dome-chain-compact.typ
// Dropped vs original: header bands, legend box, "reading the chart" strip,
// time ribbon, red efferent loop. Kept: every node; arrows named by operation.
// ══════════════════════════════════════════════════════════════════════

#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge

#set page(paper: "us-letter", margin: (x: 0.6in, y: 0.5in))
#set text(font: "Libertinus Serif")

#let lEye=rgb("#dce8fb"); #let lBody=rgb("#d9efe1"); #let lWorld=rgb("#fbe9cf")
#let lComp=rgb("#e7ddf7"); #let lTgt=rgb("#f7dde9"); #let lCns=rgb("#e5e7ee")
#let ink=rgb("#1c1c1c"); #let ok=rgb("#2e7d52"); #let inf=rgb("#b9770a")
#let tgt=1.2pt + rgb("#b23a48"); #let dsd=0.9pt + rgb("#2b2b2b")

#let nn(name, sub) = align(center)[#text(size: 5.7pt, weight: "semibold", fill: ink)[#name]#if sub != none [#linebreak()#text(size: 4.4pt, fill: rgb("#666"))[#sub]]]
#let bx(pos, col, name, sub: none, st: 0.45pt + rgb("#8a8a8a")) = node(
  pos, nn(name, sub), fill: col, stroke: st, corner-radius: 2pt, inset: 2.6pt,
  width: 1.5cm, shape: fletcher.shapes.rect,
)
#let el(t) = text(size: 4.6pt, fill: rgb("#444"))[#t]
#let elr(t) = text(size: 4.6pt, fill: rgb("#b23a48"))[#t]

// Scale the diagram down if its natural width exceeds the surrounding text
// block, so it stays inside the page margins wherever this figure is placed.
#let fit-to-width(body) = layout(size => {
  let w = measure(body).width
  let s = if w > 0pt { calc.min(1, size.width / w) } else { 1 }
  scale(s, origin: top + left, reflow: true, body)
})

#let dome-chain-figure = figure(
  fit-to-width(diagram(
    spacing: (5.5mm, 2.6mm),
    node-outset: 0pt,

    // ── left desiderata (true facts) ──
    bx((-1, 0), lWorld, [Environment], st: dsd),
    bx((-1, 1), lEye,   [Eye], st: dsd),
    bx((-1, 2.425), lBody, [Body], st: dsd),
    bx((-1, 3.8), lWorld, [Ground contact], st: dsd),

    // ── sensors ──
    bx((0, 0), lWorld, [World scanner]),
    bx((0, 1), lEye,   [Eye tracker]),
    bx((0, 2.0), lBody, [Camera mocap]),
    bx((0, 2.85), lBody, [IMU mocap]),
    bx((0, 3.8), lWorld, [Force plates]),

    // ── off-sensor estimates ──
    bx((1, 0), lWorld, [Scene geometry]),
    bx((1, 1), lEye,   [Eye keypoints]),
    bx((1, 2.0), lBody, [Body keypoints]),
    bx((1, 2.85), lBody, [Segment orient.]),
    bx((1, 3.8), lWorld, [Ground reaction]),
    node((1.5, 2.425), text(size: 7pt, fill: ink)[⋈], name: <join>, fill: white, stroke: 0.4pt + rgb("#888"), corner-radius: 1pt, inset: 2pt),

    // ── kinematic ──
    bx((2, 1), lEye,   [Eye kinematics], sub: [tors #text(fill: inf)[◐] · accom #text(fill: inf)[◐]]),
    bx((2, 2.425), lComp, [Body kinematics]),

    // ── composite ──
    bx((3, 1), lComp, [Gaze in world]),
    bx((3, 3.4), lComp, [Inverse dynamics]),

    // ── peripheral (targets) ──
    bx((4, 1), lTgt, [Retinal input], sub: [structure #text(fill: inf)[◐] · flow #text(fill: inf)[◐]], st: tgt),
    bx((4, 3.4), lTgt, [Muscle activation], sub: [#text(fill: inf)[◐] model · #text(fill: ok)[●] EMG], st: dsd),

    // ── central nervous system ──
    bx((5, 1.45), lCns, [Cortical], st: dsd),
    bx((5, 2.7), lCns, [Subcortical], st: dsd),
    bx((5, 3.9), lCns, [Efferent]),

    // ── observe (desideratum → sensor) ──
    edge((-1, 0), (0, 0), "->"),
    edge((-1, 1), (0, 1), el[observe], "->", label-side: left),
    edge((-1, 2.425), (0, 2.0), "->"), edge((-1, 2.425), (0, 2.85), "->"),
    edge((-1, 3.8), (0, 3.8), "->"),

    // ── transduce (sensor → off-sensor, crosses the boundary) ──
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

    // ── vision: afferent (sensory in) ──
    edge((4, 1), (5, 1.45), el[afferent], "->", stroke: 1.2pt + ink),
    edge((4, 1), (5, 2.7), "->", stroke: 0.35pt + ink),
    // ── motor: two-way — efferent drive out, proprioception in ──
    edge((5, 2.7), (4, 3.4), el[efferent], "->", bend: 15deg, stroke: 1.2pt + ink),
    edge((4, 3.4), (5, 2.7), el[proprioception], "->", bend: 15deg, stroke: 0.9pt + ink),
    edge((4, 3.4), (5, 1.45), "->", stroke: 0.35pt + ink),

    // ── CNS internal + out ──
    edge((5, 1.45), (5, 2.7), "->", bend: 22deg),
    edge((5, 2.7), (5, 1.45), "->", bend: 22deg),
    edge((5, 1.45), (5, 3.9), "->"), edge((5, 2.7), (5, 3.9), "->"),
  )),
  kind: image, supplement: [Figure],
  caption: [#set text(size: 7pt); *The #smallcaps[Dome] measurement chain.* Each sensor transduces a true fact into signal; the chain derives, fuses, and composes estimates whose channels are #text(fill: ok)[● measured] or #text(fill: inf)[◐ inferred under a prior], and projects (Π) them onto the *retinal input* and *muscle activation* that drive the nervous system. The metrological target: drive retinal-input error low enough to *predict neural activity in marmoset visual cortex / superior colliculus* — a ground-truth test no existing system can pose.],
)

// Rendered only when this file is compiled on its own. When the proposal
// imports `dome-chain-figure`, this line (and the `#set page` above) are
// discarded, so nothing leaks into the main document.
#dome-chain-figure
