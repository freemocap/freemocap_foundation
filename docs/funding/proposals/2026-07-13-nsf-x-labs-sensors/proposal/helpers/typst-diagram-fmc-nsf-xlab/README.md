# DOME measurement-chain figure

```
typst-diagram-fmc-nsf-xlab/
  fmcx-dome-flow-chart.typ  theme, palette, marks, legend, calculus strip, chain() builder
  main.typ                  renders the figure + calculus strip on one NSF page
  main.pdf                  compiled output (single US-letter page, 1in margins)
  page-1.png                rendered preview
  calculus.typ              standalone explainer: the chart read as a typed algebra
  calculus.pdf              compiled explainer (no background assumed)
  old/                      the previous versions, kept for reference
```

Typst ≥ 0.14 (uses `plus.o`; verified clean on 0.15.0) + `@preview/fletcher:0.5.7`.
Compile with `typst compile main.typ`.

## What the figure says

A DAG organized into four labelled **bands**, read left to right:

**Real world → Measurements → Estimates → Nervous system.**

- **Real world** — two sub-columns: the *subject* (the physical thing measured — Eye,
  Body, Environment, Ground contact) and the *instrument* that observes it (eye tracker,
  camera + IMU mocap, world scanner, force plates), each showing the raw signal it
  transduces (`energy ⊢ signal`). The **Body** is observed by *both* camera and IMU mocap —
  which is exactly why the ⋈ fusion exists. The efferent loop re-enters here, re-aiming the
  physical Eye and re-driving the physical Body at the next instant.
- **Measurements** — one `→` derive step off the signal: eye **keypoint** trajectories, body
  **keypoint** trajectories, segment orientations, ground reaction forces, scene geometry.
- **Estimates** — split into *kinematic* (eye kinematics from eye keypoints; body
  kinematics from body keypoints ⋈ segment orientations, via the **Hybrid**) and *composite* (gaze in world
  `= eye-kin ⊕ head-in-world`; inverse dynamics `= body-kin + GRF`). Gaze is an estimate
  *of two estimates*, which is why it needs its own column.
- **Nervous system** — *peripheral* (the retinal stimulus entering vision, afferent; the
  muscle drive leaving the motor system, efferent) then *central* (Cortical + Subcortical,
  reciprocally coupled; retina loads cortical heavily / subcortical lightly, muscle
  vice-versa). The **efferent command** loops back (dashed red) to re-aim the eye and
  re-drive the body at the next instant.

The whole figure is a **single instant `t`**: the time ribbon along the bottom marks it
between `t−δt` and `t+δt`, and the efferent loop is what advances the frame by `δt`. The
legend is a single line at the **top**; the calculus strip beneath the diagram carries the
per-chain calculus, with every symbol defined.

## Per-channel marks (two orthogonal axes)

Every value is a **bundle of channels** (degrees of freedom); each channel carries its own
status, so no node is uniformly anything. Two axes:

- present status — `●` measured directly · `◐` inferred under an explicit prior
- build flag (on unmeasured DOF) — `★` build target (load-bearing) · `◇` could build (feasible, not yet needed)

A channel can be both, e.g. torsion is `◐★` (inferred under Listing's law now; a build
target because it corrupts the retinal *curl* channel) and accommodation is `◐◇`.

**Propagation is a pushforward, not a scalar meet.** `⊕` carries channel supports through
unchanged; `⋈` unions the measured subspaces of its inputs; `Π` is the only operator that maps
input DOF onto output channels (via its Jacobian). A downstream channel is `●` iff it loads
only on measured DOF, `◐` iff it loads on any unmeasured DOF. Set a node's channels in the
`chans:` field of its `nb(...)` call in `chain()` — a list of `(label, (codes...))` where a
code is `"ok" | "inf" | "build" | "could"`.

## The calculus (strip below the diagram + `calculus.pdf`)

The chart is a typed channel algebra with one relation per kind of step:

- `⊢` **transduce** — a sensor yields a raw *signal* from an energy (`𝓟 ⊢ image`). The one
  physical, world→data step; shown inside each sensor box.
- `→` **derive** — a signal is processed into a measurement, then an estimate (data→data).
- `⊕` **compose** poses — chain relative poses; the shared reference frame telescopes (transparent).
- `⋈` **fuse** — union the measured subspaces of two estimators (the Hybrid node).
- `Π` **project** — the only operator that maps input DOF onto output channels (the injector).
- `≈ v⋆` **approximate** the true latent value.

(`⊢` is transduce *and* the "yields" relation — one symbol, not two; "frame" always means a
*reference* frame, never a video frame.) `main.typ` renders a compact calculus strip beneath
the diagram stating all of this; `calculus.pdf` is the full, no-background-assumed explainer:
per-channel paths, the retinal worked example (torsion→curl, accommodation→defocus), the
pushforward law, and the instrument loop (estimate under prior → find load-bearing channel →
pull back through Π → build or ignore).

## Node-level tags

Second-order complexity lives in a terse upright tag under each node instead of in extra
nodes and arrows:

- operators — `Gaze in world` carries `eye-kin ⊕ head-in-world` (compose); `Hybrid`
  carries `⋈ fuse`; `Body kinematics` carries `keypoints ⋈ orient · head pose` (fuse);
  `Retinal image` carries `Π(gaze, scene, self-motion)` (project).
- transduction — each sensor's chip shows `energy ⊢ signal`: `𝓟 ⊢ image`, `𝓘 ⊢ accel,gyro`,
  `𝓜 ⊢ force` — the raw signal, from which the measurement is one `→` derive step later.
- model inputs — `Inverse dynamics` carries `τ = ID(body-kin, GRF; BSP)`; `Muscle
  forces` carries `a = M(τ) ⋈ EMG` — EMG is a named observability
  cross-check, not just a "measurable via" note.
- manipulation — `Scene geometry` carries `manipulable via VR/AR/XR, LED panels,
  actuated terrain`. Suppress it with `with-manip: false` for the open,
  observation-only chain.

## Everything scales from one number

`theme(f: 1.0)` returns a dict of every font size, node width, and spacing, each
multiplied by `f`. Retarget a slot by changing `f` alone — `f: 0.6` fits a quarter-page
cell, `f: 1.1` (what `main.typ` uses) reads full width. Pass `with-manip: false` to drop
the "manipulable via …" tag for an observation-only chain.

## Use in the proposal

```typst
#import "fmcx-dome-flow-chart.typ": theme, chain-figure

#figure(
  chain-figure(theme(f: 1.0)),
  caption: [ ... ],
)
```

The legend renders inside the image; `chain-figure` stacks the diagram above it. Call
`chain()` directly for the bare diagram with no legend.

## Editing

Node text lives in the `nb(...)` calls inside `chain()`, keyed by `name: <label>`; edges
reference those labels. A node's grid position is the `(col, row)` pair in its `node()`
call — cols 0/1/2/3 are the four columns and the Hybrid node sits at col 1.5; row
increases downward. To retune density, change `spacing` and `inset` in `theme()`.

## Gotchas

- `fletcher:0.5.7` requires `cetz:0.3.4` and `oxifmt:0.2.1`.
- Offline machines: vendor those three into
  `~/.cache/typst/packages/preview/{fletcher/0.5.7,cetz/0.3.4,oxifmt/0.2.1}`.
