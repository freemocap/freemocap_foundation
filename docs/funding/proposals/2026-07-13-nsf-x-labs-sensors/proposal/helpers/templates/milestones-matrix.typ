// ══════════════════════════════════════════════════════════════════════
// TEMPLATE — Milestone matrix (dense), controlled vocabulary
// Standalone preview:  typst compile milestones-dense-options.typ
// Content from notes/dome-build-tracks.md. TRL values ILLUSTRATIVE — JSM sets.
//
// CELL VOCABULARY (defined, not improvised):
//   Technical rows use a fixed maturity ladder tied to TRL —
//     Concept(2) · PoC(3) · Breadboard(4) · Prototype(5–6) · Validated(7) · Operational(8–9)
//   (= the hardware analogue of PoC → MVP → alpha → beta → release)
//   Org rows are NOT technical maturity → they show operational deliverables.
// ══════════════════════════════════════════════════════════════════════

#import "../shared.typ": semibold, Dome
#let Dome-L = smallcaps[Dome-L]; #let Dome-S = smallcaps[Dome-S]; #let Dome-Mob = smallcaps[Dome-Mobile]; #let Dome-Animals = smallcaps[Dome-Animals]

#set page(paper: "us-letter", margin: (x: 0.7in, y: 0.55in))
#set text(size: 11pt, font: "Libertinus Serif")

#let ink = rgb("#26303a"); #let done = rgb("#4a4f55")
#let cOrg=rgb("#6f7f92"); #let cBody=rgb("#3a7ca5"); #let cEye=rgb("#4a9d5b")
#let cWorld=rgb("#9b6a9e"); #let cInt=rgb("#c1853a")

#let s(col, l) = table.cell(fill: col, inset: (x: 2pt, y: 1.6pt))[#text(size: 5.7pt, fill: white, weight: "medium")[#l]]
#let sl(col, l) = table.cell(fill: col.lighten(58%), inset: (x: 2pt, y: 1.6pt))[#text(size: 5.7pt, fill: col.darken(28%))[#l]]
#let hv(l) = table.cell(fill: done, inset: (x: 2pt, y: 1.6pt))[#text(size: 5.7pt, fill: white, weight: "medium")[✓ #l]]
#let e = table.cell(inset: (x: 2pt, y: 1.6pt))[]
#let it(l) = [#text(size: 6.2pt, weight: "medium", fill: ink)[#l]]
#let trl(a, b) = table.cell(align: center)[#box(radius: 2pt, stroke: 0.4pt + luma(140), inset: (x: 2.5pt, y: 0.6pt))[#text(size: 5.4pt, fill: ink)[#a→#b]]]
#let ntrl = table.cell(align: center)[#text(size: 5.2pt, fill: luma(150))[n/a]]
#let grp(col, l) = table.cell(colspan: 5, fill: col.lighten(80%), inset: (x: 3pt, y: 1.8pt))[#text(size: 6pt, weight: "bold", fill: col.darken(24%), tracking: 0.5pt)[#upper(l)]]
#let hd(l) = table.cell(fill: ink, inset: (x: 2.5pt, y: 2.5pt))[#text(size: 6pt, weight: "bold", fill: white)[#l]]

#let milestones-figure = {
  // Scoped so the em-based column widths match the standalone layout,
  // regardless of the surrounding document's font size.
  set text(size: 11pt, font: "Libertinus Serif")
  figure(
  table(
    columns: (9em, 0.85fr, 1fr, 1fr, 0.9fr),
    stroke: (y: 0.3pt + luma(220)), align: (left + horizon,) + (center + horizon,) * 4,
    inset: (x: 2.5pt, y: 0pt),
    fill: (x, y) => if y >= 1 and calc.even(y) { luma(250) },
    table.hline(y: 0, stroke: 0.9pt + ink),
    hd[Item], hd[In place], hd[Phase 0 · 9–12 mo], hd[Phase 1 · 24–36 mo], hd[Phase 2 · variable],
    table.hline(y: 1, stroke: 0.7pt + ink),

    grp(cOrg, [Organization — operational deliverables]),
    it[Legal & governance], hv[501(c)(3)], s(cOrg, [Governance + Autonomy Plan]), sl(cOrg, [board seated]), e,
    it[Facility (lease)], e, s(cOrg, [lease + move-in]), sl(cOrg, [office fit-out]), e,
    it[Full-time team], hv[core FT], s(cOrg, [hire · onboard]), s(cOrg, [full staff]), e,
    it[Required NSF plans], e, s(cOrg, [Data · IP · Security · Gov; Ph1 plan + budget]), e, e,
    it[IP management], hv[prior IP], s(cOrg, [IP Mgmt Plan]), sl(cOrg, [license · manage]), e,

    grp(cBody, [Body — technical maturity]),
    it[Camera array], e, s(cBody, [PoC]), s(cBody, [Prototype]), sl(cBody, [Operational]),
    it[IMU↔camera fusion], hv[FMC mocap], s(cBody, [PoC]), s(cBody, [Prototype]), sl(cBody, [Validated]),

    grp(cEye, [Eye — technical maturity]),
    it[Eye tracker (torsion)], e, s(cEye, [Breadboard]), s(cEye, [Prototype]), sl(cEye, [Operational]),

    grp(cWorld, [World — technical maturity]),
    it[World-scanner], e, s(cWorld, [Concept]), s(cWorld, [Prototype]), e,
    it[Floor panels (force/LED)], e, s(cWorld, [PoC]), s(cWorld, [Prototype]), e,
    it[ARGPv3], hv[ARGPv1], e, s(cWorld, [Prototype]), sl(cWorld, [Validated]),
    it[Drone swarm], e, e, sl(cWorld, [Concept]), sl(cWorld, [PoC]),

    grp(cInt, [Integration — first-order]),
    it[#Dome-L (Auto)], e, s(cInt, [PoC / testbed]), s(cInt, [Prototype]), sl(cInt, [Operational]),
    it[#Dome-S (Static)], hv[FMC webcam], s(cInt, [Breadboard]), s(cInt, [Validated]), sl(cInt, [Operational]),
    it[#Dome-Mob], e, s(cInt, [Concept]), s(cInt, [Prototype]), sl(cInt, [Validated]),
    it[#Dome-Animals], hv[ferret (6) · mouse (3)], s(cInt, [marmoset]), s(cInt, [guinea fowl]), sl(cInt, [rat]),

    table.hline(stroke: 0.9pt + ink),
  ),
  kind: table, supplement: [Table],
  caption: [#set text(size: 7pt); Maturity ladder (TRL): Concept 2 · PoC 3 · Breadboard 4 · Prototype 5–6 · Validated 7 · Operational 8–9 (hardware analogue of PoC→MVP→α→β→release). Org rows = operational deliverables. ✓ = in place pre-award; #Dome-Animals cells = per-species level. Each Progress Milestone needs a quantitative exit criterion (FOA §9.2). Stages illustrative.],
  )
}

// Rendered only when this file is compiled on its own. The proposal imports
// `milestones-figure`, so the `#set page` above never leaks into it.
#milestones-figure
