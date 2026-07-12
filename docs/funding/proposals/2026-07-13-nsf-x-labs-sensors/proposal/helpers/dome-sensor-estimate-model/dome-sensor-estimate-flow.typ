// ════════════════════════════════════════════════════════════════════════
//  dome-sensor-estimate-flow.typ
//
//  Renders the DOME measurement-chain figure. All geometry lives in
//  fmcx-dome-flow-chart.typ; `theme(f: ...)` scales the whole figure.
//
//  Compile:  typst compile dome-sensor-estimate-flow.typ
//  Watch:    typst watch dome-sensor-estimate-flow.typ
// ════════════════════════════════════════════════════════════════════════

#import "fmcx-dome-flow-chart.typ": theme, chain-figure, mark-ok, mark-inf

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
