// Combined dense preview — both figures, one page (review only)
// CONTENT SOURCES: collaborator rows from proposal/helpers/collaborator-network.typ;
// roadmap cells from proposal/sections/3-outcomes.typ. Nothing invented.
#import "../shared.typ": semibold, Dome
#let Dome-L = smallcaps[Dome-L]
#let Dome-S = smallcaps[Dome-S]
#let Dome-Mobile = smallcaps[Dome-Mobile]

#set page(paper: "us-letter", margin: (x: 0.7in, y: 0.6in))
#set text(size: 11pt, font: "Libertinus Serif")
#let ink = rgb("#26303a")
#let hdr = rgb("#3a5a6a")

// ─────────────── ROADMAP: Workstream × Phase (from §3 Outcomes) ───────────────
#let wsrow(name, p0, p1, p2) = (
  [#text(size: 7pt, weight: "semibold", fill: ink)[#name]],
  [#text(size: 6.6pt)[#p0]],
  [#text(size: 6.6pt)[#p1]],
  [#text(size: 6.6pt)[#p2]],
)
#text(size: 11pt, weight: "bold")[Build Roadmap]
#v(-0.4em)
#figure(
  table(
    columns: (8.5em, 1fr, 1.05fr, 0.78fr),
    stroke: none,
    align: (left, left, left, left),
    inset: (x: 4pt, y: 2.3pt),
    fill: (x, y) => if y >= 1 and calc.even(y) { luma(249) },
    table.hline(y: 0, stroke: 1pt + ink),
    table.cell(fill: hdr)[#text(size: 7pt, weight: "bold", fill: white)[Workstream]],
    table.cell(fill: hdr)[#text(size: 7pt, weight: "bold", fill: white)[Phase 0 · prep · 9–12 mo]],
    table.cell(fill: hdr)[#text(size: 7pt, weight: "bold", fill: white)[Phase 1 · build · 24–36 mo]],
    table.cell(fill: hdr)[#text(size: 7pt, weight: "bold", fill: white)[Phase 2 · refine]],
    ..wsrow([Organization & legal], [incorporate; governance + Autonomy Factor Test; HR, finance, insurance; recruit & onboard full-time team], [scale to full staff], [sustain; spin-off]),
    ..wsrow([Partnerships & NSF plans], [collaborator MOUs; Data-Mgmt, IP, Research-Security plans; Phase 1 milestone plan + tiered budget], [deploy across network], [sustain network]),
    ..wsrow([#Dome-L facility], [secure site; design], [build-out; operate], [expand capacity]),
    ..wsrow([#Dome-S], [spec; commercial-parts baseline], [validate vs #Dome-L; build guide; deploy N sites], [broad dissemination]),
    ..wsrow([#Dome-Mobile], [spec], [integrate; validate on locomotion (in/outdoor)], [field deployment]),
    ..wsrow([Eye tracker], [design], [bench → mobile prototype: torsion + accommodation], [production]),
    ..wsrow([Actuated camera array], [—], [prototype → production; auto-calib], [—]),
    ..wsrow([Camera↔IMU fusion], [—], [algorithm; real-time; inverse dynamics], [—]),
    ..wsrow([Reprojection + robot RL], [—], [back-project → fine-tune pose; export → sim; sim-to-real; inverse RL], [—]),
    ..wsrow([ARGPv3], [—], [LED floor prototype → full floor + wall + VR], [—]),
    ..wsrow([Cross-species network], [protocols; MOUs], [deploy equivalent #Dome-S; validate], [—]),
    table.hline(stroke: 1pt + ink),
    table.vline(x: 1, stroke: 0.5pt + luma(200)),
    table.vline(x: 2, stroke: 0.5pt + luma(200)),
    table.vline(x: 3, stroke: 0.5pt + luma(200)),
  ),
  kind: "table", supplement: [Figure],
  caption: [#set text(size: 7.5pt); Build roadmap by workstream. Phase 0 = organizational stand-up + design (FOA §9.1 required deliverables); Phase 1 = build & scale; Phase 2 = refine / spin-off (FOA §8). Phase 1 Go/No-Go in last quarter of Phase 0.],
)

#v(1em)

// ─────────────── COLLABORATORS: Initials · Model · Institution ───────────────
// Rows/models from proposal/helpers/collaborator-network.typ. Institutions blank (not in docs).
#let cwho(i) = [#text(size: 7.5pt, weight: "semibold")[#i]]
#let cmod(m) = [#text(size: 7.5pt)[#m]]
#let cins(t) = [#text(size: 7.5pt, fill: luma(120))[#t]]
#let ctab(rows) = table(
  columns: (auto, auto, 1fr),
  stroke: none, inset: (x: 5pt, y: 2.5pt),
  align: (left, left, left),
  fill: (x, y) => if y >= 1 and calc.even(y) { luma(249) },
  table.hline(y: 0, stroke: 0.9pt + ink),
  table.cell(fill: hdr)[#text(size: 7.5pt, weight: "bold", fill: white)[Init.]],
  table.cell(fill: hdr)[#text(size: 7.5pt, weight: "bold", fill: white)[Model]],
  table.cell(fill: hdr)[#text(size: 7.5pt, weight: "bold", fill: white)[Institution]],
  ..rows,
  table.hline(stroke: 0.9pt + ink),
)

#text(size: 11pt, weight: "bold")[Collaborator Network]
#v(-0.4em)
#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 1.2em,
    ctab((
      cwho[MH], cmod[Human], cins[UT Austin],
      cwho[KB], cmod[Human / NHP], cins[Indiana Univ.],
      cwho[AH], cmod[Marmoset / NHP], cins[UCLA],
      cwho[JY], cmod[Human / NHP], cins[UC Berkeley],
      cwho[BS], cmod[Ferret], cins[CU Anschutz],
      cwho[MD], cmod[Guinea fowl], cins[UC Irvine],
    )),
    ctab((
      cwho[SH], cmod[Robot / exo], cins[MIT],
      cwho[CH], cmod[Robot / exo], cins[FSU],
      cwho[JH], cmod[Robot / exo], cins[Agility Robotics],
      cwho[GN], cmod[Robot / exo], cins[RAI Institute],
      cwho[AS], cmod[Robot / exo], cins[Boston Dynamics],
      cwho[JW], cmod[Robot / exo], cins[(new venture)],
    )),
  ),
  kind: "table", supplement: [Figure],
  caption: [#set text(size: 7.5pt); Collaborator network: biological-model labs (left), robotics/exoskeleton partners (right).],
)
