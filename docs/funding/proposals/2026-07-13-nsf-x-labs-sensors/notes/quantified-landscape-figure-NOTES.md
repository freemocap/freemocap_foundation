# Quantified technology-landscape figure — handoff notes

Companion to `proposal/helpers/dome-sensor-estimate-model/dome-chain-quantified.typ`.
Written by Claude (advisor role) — **the §2 body prose below is a suggestion for JSM to place/edit, not a proposal edit.** Nothing in `proposal/sections/2-technology-landscape.typ` was touched.

## What the new figure is

A lean rework of Fig 2 (`dome-chain-compact.typ`) into the "plot or other figure to **quantitatively depict the current technology landscape and desired goal(s)**" that Attachment A §2 invites (and that §2 was arguably missing). **Same boxes and arrows as Fig 2** — no added header bands, no legend band, no separate budget strip (kept tight on purpose). It adds one small reported-error line under the nodes on the retinal-input (vision) path, each with a single provenance glyph:

- **Provenance flags** (one small colored glyph per number): ● open/traceable · ◐ closed model (unknown) · ✗ closed & not-truth-preserving · ◆ DOME target. Node fill colors are unchanged from Fig 1/Fig 2 (modality pastels); the flags are the only added color.
- **Quantified nodes:** World scanner (≈3 cm·0.5° ●), Eye tracker (0.6–1.8° ◐), Camera mocap (2–6° ●), IMU mocap (±1–2° ◐ · yaw ✗), Body kinematics (head pose ±1–2° ●), Gaze in world (±1° calib · ±2–3° dyn), Retinal input (target < 1° ◆). Eye kinematics notes torsion/accommodation absent.
- **Motor/ground path kept at normal visibility** (force → inverse dynamics → muscle) — shown, not greyed.
- The provenance key lives in the caption, not a separate legend band.
- New binding: `dome-chain-quantified-figure`, label `<fig-landscape-quantified>`.

## To include it in the build (JSM's call — not done, has numbering implications)

`figure-page.typ` currently renders Fig 1 (hero) then Fig 2 (`dome-chain-figure`). Two options:

- **Replace Fig 2** — swap the import + call in `proposal/helpers/figure-page.typ`:
  - line ~9: `#import "dome-sensor-estimate-model/dome-chain-quantified.typ": dome-chain-quantified-figure`
  - line ~23: `#dome-chain-quantified-figure`  (in place of `#dome-chain-figure`)
- **Add as a new figure** — add both the import and a `#v(1.2em)` + `#dome-chain-quantified-figure` line; note this makes it Figure 3 and pushes the table numbering. Check `@fig-` cross-refs in the sections if you renumber.

**No `typst` binary was available in the authoring sandbox, so this was NOT compiled.** Please `typst compile proposal/helpers/dome-sensor-estimate-model/dome-chain-quantified.typ` standalone first to check for node overlap. It uses the exact node coordinates and `fit-to-width` wrapper of the shipping `dome-chain-compact.typ`, with only the error lines added and vertical `spacing` bumped 2.6 → 3.8 mm to absorb the extra line — so it should behave like Fig 2. If any pair still crowds, raise `spacing`'s second value.

## Suggested §2 body text (place near the "capability no existing system provides" paragraph)

> What matters for this science is not the datasheet accuracy of any single instrument but the error of the *measurement we actually need*: gaze in world coordinates, resolved finely enough to predict the neural activity it drives — on the order of a degree of visual angle. That number is a budget, not a spec: it accumulates every contributor along the chain from raw sensor to reconstructed retinal input (@fig-landscape-quantified). The best mobile eye trackers resolve gaze to roughly 0.6–1.8° in the head frame, but the quantity vision depends on is gaze in the *world*, which demands composing that estimate with head and body pose and the geometry of the scene. The only published end-to-end method that does so — this team's own prior work fusing a mobile eye tracker, an inertial body suit, and a photogrammetric reconstruction of the terrain — reaches roughly ±1° under calibration and ±2–3° during natural walking. And that figure is optimistic: much of the toolchain runs through closed, proprietary pipelines whose undisclosed "cleaning" injects error that cannot even be quantified — from vendor gaze models to inertial suits that replace an out-of-bounds magnetometer heading with a model fit, substituting fabricated data for signal. No existing system delivers sub-degree gaze-in-world with a traceable, propagated uncertainty budget. Producing exactly that is the #Dome's target.

**One-sentence version** (if space is tight):

> The decisive metric is not any sensor's spec but the error of the desideratum itself — sub-1° gaze-in-world, enough to predict neural activity — a budget that accumulates across the whole chain and that no existing toolchain meets with traceable, propagated uncertainty (@fig-landscape-quantified).

## Number provenance (every value in the figure)

| Figure element | Value | Source |
|---|---|---|
| Eye tracker (mobile) | Tobii Glasses 3 0.6°; Pupil Neon 1.3–1.8°; AdHawk ≈1° | metrics ref §1 [web/vendor] |
| Torsion / accommodation | unmeasured on every mobile tracker | metrics ref §1 (DOME differentiator) |
| Camera mocap (markerless) | 2–6° segment angle | metrics ref §2 (FreeMoCap/Theia/OpenCap) |
| IMU mocap | ±1–2° orientation (walking); Xsens yaw model-fill = not-truth-preserving | Matthis 2018; Xsens (JSM-supplied) |
| World scanner | ≈3 cm ≈ 0.5° photogrammetry repeatability | Muller 2022/2023 §4b |
| Gaze in world (integrated) | ±1° calibrated, ±2–3° dynamic (walking) | Matthis 2018 §4b |
| Retinal slip (precision) | mode 0.26° / median 0.83° | Muller 2022/2023 §4b |
| Desideratum | < 1° gaze-in-world to predict neural activity | project thesis |
| DOME target | < 1° with propagated uncertainty | target (JSM to set exact) |

All trace to `notes/FMC-X-Technology-Landscape-Metrics-Reference.md` (§4b holds the Matthis/Muller integrated numbers added this session).

## Honesty guardrail baked into the figure

The "Gaze in world" node shows the **one published end-to-end integrated measurement** (Matthis/Muller ±1° calibrated / ±2–3° walking), *not* a naive sum of the per-stage errors (you can't add degrees across an eye tracker, an IMU, and a photogrammetry mesh). The upstream stage numbers are shown as independent reported figures; the composite is the real measured integrated result. Keep it that way if you edit — a computed cumulative "budget" would overclaim.
