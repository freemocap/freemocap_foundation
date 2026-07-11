// ════════════════════════════════════════════════════════════════════════
//  main.typ
//
//  Renders each variant of the DOME measurement-chain figure on its own page,
//  with the caption that would accompany it in the proposal.
//
//  Compile:  typst compile main.typ
//  Watch:    typst watch main.typ
//
//  All shared parameters live in shared.typ. `theme(f: ...)` scales every
//  length and font size together; change `f` alone to retarget a slot.
// ════════════════════════════════════════════════════════════════════════

#import "shared.typ": theme, chain-figure

#set page(paper: "us-letter", margin: 1in, numbering: "1")
#set text(size: 10pt)
#set par(justify: true, leading: 0.62em)
#show figure.caption: set text(size: 8.5pt)
#set figure(numbering: "1")

// ── the caption text, shared across variants ────────────────────────────
#let caption-full = [
  *The measurement chain of a #smallcaps[Dome].* Sensors on the left; on the right, the
  two observables that set the instrument's entire accuracy budget. Reading across:
  each transducer yields a primitive estimate that no single sensor can complete, and
  only a jointly calibrated, synchronized volume produces the fused estimates in the
  middle column. Gaze-in-world is eye-in-head composed with head-in-world, so the eye
  and the body cannot be measured by separate instruments; the retinal image additionally
  requires scene geometry, and retinal optic flow requires head translation. Inverse
  dynamics requires kinematics, external forces, and an inertial model together. The
  marks make the argument: every node downstream of a #box[★] is presently unreachable.
  Ocular torsion gates the retinal stimulus; hybrid camera#sym.plus.circle;IMU kinematics
  gates trustworthy inverse dynamics. The measurement arm is open — photons in, forces
  out. The loop closes through the world we manipulate.
]

#let caption-open = [
  *The open measurement chain.* The same instrument with the manipulation rail removed:
  observation only, photons to forces. Rendering this variant beside the full chain
  isolates what the environment-manipulation arm buys — the difference between an
  apparatus that records natural behavior and one that can also perturb it, which is the
  difference between a recording instrument and an experimental one.
]

// ════════════════════════════════════════════════════════════════════════
//  1 — Compact. In-text slot; fits the 6.5in text block with room to spare.
// ════════════════════════════════════════════════════════════════════════
#align(center)[#text(size: 9pt, fill: luma(110), smallcaps[Variant: compact · `theme(f: 1.0)` · in-text figure])]
#v(0.4em)

#figure(
  chain-figure(theme(f: 1.0), with-manip: true),
  caption: caption-full,
)

#pagebreak()

// ════════════════════════════════════════════════════════════════════════
//  2 — Wide. Larger type, landscape page.
// ════════════════════════════════════════════════════════════════════════
#page(flipped: true, margin: 0.75in)[
  #align(center)[#text(size: 9pt, fill: luma(110), smallcaps[Variant: wide · `theme(f: 1.22)` · full-page landscape])]
  #v(0.3em)

  #figure(
    chain-figure(theme(f: 1.22), with-manip: true),
    caption: caption-full,
  )
]

// ════════════════════════════════════════════════════════════════════════
//  3 — Open chain. Manipulation rail removed.
// ════════════════════════════════════════════════════════════════════════
#align(center)[#text(size: 9pt, fill: luma(110), smallcaps[Variant: open chain · `theme(f: 1.0, with-manip: false)`])]
#v(0.4em)

#figure(
  chain-figure(theme(f: 1.0), with-manip: false),
  caption: caption-open,
)
