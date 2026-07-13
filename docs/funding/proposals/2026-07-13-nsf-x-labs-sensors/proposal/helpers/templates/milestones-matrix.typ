// ══════════════════════════════════════════════════════════════════════
// TEMPLATE — Milestone matrix (dense), controlled vocabulary
// Standalone preview:  typst compile milestones-dense-options.typ
// Content from notes/dome-build-tracks.md. TRL values ILLUSTRATIVE — JSM sets.
//
// CELL VOCABULARY (defined, not improvised):
//   Technical rows use a fixed maturity ladder tied to TRL —
//     Concept(2) · PoC(3) · Breadboard(4) · Prototype(5–6) · Validated(7) · Operational(8–9)
//   (= the hardware analogue of PoC → MVP → alpha → beta → release)
//   Org rows are NOT technical development → they show operational deliverables.
// ══════════════════════════════════════════════════════════════════════

#import "../shared.typ": semibold, Dome
#let Dome-L = smallcaps[Dome-L]; #let Dome-S = smallcaps[Dome-S]; #let Dome-Mob = smallcaps[Dome-Mobile]; #let Dome-Animals = smallcaps[Dome-Animals]

#set page(paper: "us-letter", margin: (x: 0.7in, y: 0.55in))
#set text(size: 11pt, font: "Libertinus Serif")

#let ink = rgb("#1c242c"); #let done = rgb("#3f444a")
#let cOrg=rgb("#54637a"); #let cBody=rgb("#2e6e95"); #let cEye=rgb("#3c8a4e")
#let cWorld=rgb("#835889"); #let cInt=rgb("#9e6a24")

#let s(col, l) = table.cell(fill: col, inset: (x: 2pt, y: 1.6pt))[#text(size: 5.7pt, fill: white, weight: "medium")[#l]]
#let sl(col, l) = table.cell(fill: col.lighten(62%), inset: (x: 2pt, y: 1.6pt))[#text(size: 5.7pt, weight: "medium", fill: col.darken(45%))[#l]]
#let hv(l) = table.cell(fill: done, inset: (x: 2pt, y: 1.6pt))[#text(size: 5.7pt, fill: white, weight: "medium")[✓ #l]]
#let e = table.cell(inset: (x: 2pt, y: 1.6pt))[]
#let it(l) = [#text(size: 6.2pt, weight: "medium", fill: ink)[#l]]
#let trl(a, b) = table.cell(align: center)[#box(radius: 2pt, stroke: 0.4pt + luma(140), inset: (x: 2.5pt, y: 0.6pt))[#text(size: 5.4pt, fill: ink)[#a→#b]]]
#let ntrl = table.cell(align: center)[#text(size: 5.2pt, fill: luma(150))[n/a]]
#let grp(col, l) = table.cell(colspan: 5, fill: col.lighten(75%), inset: (x: 3pt, y: 2.2pt))[#text(size: 6.3pt, weight: "bold", fill: col.darken(42%), tracking: 0.5pt)[#upper(l)]]
#let hd(l) = table.cell(fill: ink, inset: (x: 2.5pt, y: 2.5pt))[#text(size: 6pt, weight: "bold", fill: white)[#l]]

#let milestones-figure = {
  // Scoped so the em-based column widths match the standalone layout,
  // regardless of the surrounding document's font size.
  set text(size: 10pt, font: "Libertinus Serif")
  [#figure(
  placement: top,
  table(
    columns: (9em, 0.85fr, 1fr, 1fr, 0.9fr),
    stroke: (y: 0.3pt + luma(220)), align: (left + horizon,) + (center + horizon,) * 4,
    inset: (x: 2.5pt, y: 0pt),
    fill: (x, y) => if y >= 1 and calc.even(y) { luma(250) },
    table.hline(y: 0, stroke: 0.9pt + ink),
    hd[Item], hd[In place], hd[Phase 0 · 9–12 mo], hd[Phase 1 · 24–36 mo], hd[Phase 2 · variable],
    table.hline(y: 1, stroke: 0.7pt + ink),

    grp(cOrg, [Organization — operational deliverables]),
    it[Legal & governance], hv[FMC-F 501(c)(3)], s(cOrg, [Governance + Autonomy Plan]), sl(cOrg, [Board seated]), e,
    it[Facility (Lease)], e, s(cOrg, [Lease + Move-in]), sl(cOrg, [Office fit-out]), e,
    it[Full-time team], hv[Core FT], s(cOrg, [Hire · Onboard]), s(cOrg, [Full staff]), e,
    it[Required NSF plans], e, s(cOrg, [Data · IP · Sec · Gov; Ph1 Plan + Budget]), e, e,
    it[IP management], hv[Prior IP], s(cOrg, [IP Mgmt Plan]), sl(cOrg, [License · Manage]), e,

    table.hline(stroke: 0.7pt + ink),
    grp(cInt, [#Dome Variants]),
    it[#Dome-L (Automated)], e, s(cInt, [PoC / Testbed]), s(cInt, [Prototype - Validated]), sl(cInt, [Operational]),
    it[#Dome-S (Static)], hv[FMC webcam], s(cInt, [Validated]), s(cInt, [Operational (510(k) cert)]), sl(cInt, [Operational]),
    it[#Dome-Mob], hv[Matthis/Muller papers], s(cInt, [PoC-Breadboard]), s(cInt, [Prototype-Validated]), sl(cInt, [Operational]),

    table.hline(stroke: 0.7pt + ink),
    grp(cBody, [Body — Technical Development]),
    it[Camera array], e, s(cBody, [PoC-Breadboard]), s(cBody, [Prototype -> Validated]), sl(cBody, [Operational]),
    it[IMU↔camera fusion], hv[FMC mocap], s(cBody, [PoC]), s(cBody, [Prototype]), sl(cBody, [Validated]),

    table.hline(stroke: 0.7pt + ink),
    grp(cEye, [Eye — technical development]),
    it[Dense Array Eye tracker], e, s(cEye, [PoC - Breadboard]), s(cEye, [Prototype-Validated]), sl(cEye, [Operational]),

    table.hline(stroke: 0.7pt + ink),
    grp(cWorld, [World — technical development]),
    it[Dense Array World-scanner], e, s(cWorld, [PoC - Breadboard]), s(cWorld, [Prototype-Validated]), e,
    it[Floor (force·LED·terrain)], hv[v1], s(cWorld, [PoC]), s(cWorld, [Prototype]), sl(cWorld, [Validated]),
    it[Drone Swarm Mocap], e, e, sl(cWorld, [Concept-PoC]), sl(cWorld, [PoC-Validated]),

    table.hline(stroke: 0.9pt + ink),
  ),
  kind: table, supplement: [Table],
  caption: [Tech Readiness Ladder (TRL): Concept (2) · PoC (3) · Breadboard (4) · Prototype (5–6) · Validated (7) · Operational (8–9)],
  ) <tbl-milestones>]
}

// Rendered only when this file is compiled on its own. The proposal imports
// `milestones-figure`, so the `#set page` above never leaks into it.
#milestones-figure
