// ════════════════════════════════════════════════════════════════════════
//  main.typ
//
//  Renders the DOME measurement-chain figure. All geometry lives in
//  shared.typ; `theme(f: ...)` scales the whole figure from one number.
//
//  Compile:  typst compile main.typ
//  Watch:    typst watch main.typ
// ════════════════════════════════════════════════════════════════════════

#import "fmcx-dome-flow-chart.typ": theme, chain-figure, mark-ok, mark-inf, mark-build, mark-could

// NSF format: US-letter (8.5 x 11 in), 1-inch margins → 6.5 x 9 in usable.
#set page(width: 8.5in, height: 11in, margin: 1in)
#set text(size: 10pt)
#set par(justify: true, leading: 0.62em)
#show figure.caption: set text(size: 8.5pt)
#set figure(numbering: "1")

#figure(
  chain-figure(theme(f: 0.82)),
  caption: [
    *The measurement chain of a #smallcaps[Dome].* Reading across four bands — *real world →
    measurements → estimates → nervous system.* Sensors transduce physical energies into
    measurements (one step off the sensor); fusion ($join$) and pose composition ($plus.o$)
    build the kinematic and composite estimates that project ($Pi$) onto the two points where
    the body meets the nervous system — the retinal stimulus entering vision and the muscle
    drive leaving the motor system. Every box is a bundle of *channels*; each channel is marked
    on two axes —
    measured (#text(fill: mark-ok)[●]) or inferred under a prior (#text(fill: mark-inf)[◐])
    now, and, if unmeasured, a committed build target (#text(fill: mark-build)[★]) or merely
    feasible (#text(fill: mark-could)[◇]). The eye path makes the argument concrete: ocular
    torsion is inferred under Listing's law today and corrupts exactly the retinal *curl*
    channel — which is why it is a build target. The two peripheral signals project to the
    *central nervous system* (cortical + subcortical, reciprocally coupled), whose efferent
    command re-aims the eye and re-drives the body at the next instant — closing the loop. The
    whole figure is a *single instant $t$*: it is preceded by the infinitesimal before it and
    followed by the one after, and the dashed red loop is what advances the frame by $delta t$.
    The calculus strip beneath the diagram gives the full reading rule, every symbol defined.
  ],
)
