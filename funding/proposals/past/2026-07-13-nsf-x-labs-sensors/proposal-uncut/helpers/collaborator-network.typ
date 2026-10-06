== Collaborators

// NOTE: mission.typ cites collaborator "AS" which has no row here —
// the closest unconfirmed robotics row is "BD" (institution still "[?]").
// Flagging for reconciliation; not resolved here since it's a content
// decision, not markup.

// NOTE: This table uses #figure with caption: none so the counter, label,
// and @reference still work (Typst figures are always full-width blocks).
// The narrow sidebar look comes from a #box inside the figure body — the
// figure container is invisible, so only the compact box is seen.
#let collaborator-figure = [
  #set text(size: 7.5pt, hyphenate: false)

  #let rule-thick = 0.8pt + rgb("#333")
  #let rule-thin  = 0.4pt + rgb("#666")

  #figure(
    [
      #box(
        fill: rgb("#f4f4f4"),
        stroke: (left: 2pt + rgb("#7e7eba")),
        radius: 1pt,
      )[
        #table(
          columns: (4em,8em, 8em),
          align: (left, left, left),
          stroke: none,
          inset: (x: 4pt, y: 2.5pt),

          table.header(
            [*Initials*],
            [*Institution*],
            [*Model*],
          ),
          table.hline(stroke: rule-thick),

          // ── Vision / Neuroscience ──
          [#box[BS] <collab-BS>], [CU Anschutz], [Ferret],
          [#box[MD] <collab-MD>], [UC Irvine],  [Guinea fowl],
          [#box[DF] <collab-DF>], [CCMH],[Mouse],
          [#box[AH] <collab-AH>], [UCLA],[Marmoset, NHP],
          [#box[MH] <collab-MH>], [UT Austin],[Human],
          [#box[TW] <collab-TW>], [U Cinncinati],[Human],
          [#box[BF] <collab-BF>], [RPI],[Human],
          [#box[KB] <collab-KB>], [Indiana Univ.],[Human, NHP],
          [#box[JY] <collab-JY>], [UC Berkeley], [Human, NHP],

          // ── Robotics / Control ──
          [#box[GN] <collab-GN>], [RAI Institute],[Robotics],
          [#box[CH] <collab-CH>], [FAMU-FSU],[Robotics],
          [#box[JH] <collab-JH>], [Agility Robotics],[Robotics],
          [#box[SH] <collab-SH>], [Cornell],        [Robotics],

          table.hline(stroke: rule-thin),
        )
        #context [
          #text(size: 9pt)[
            #text(weight: "bold")[Table #counter(figure.where(kind: table)).get().first(): ]
            Collaborator network.
          ]
        ]
      ]
    ],
    kind: table,
    supplement: [Table],
    caption: none,
  ) <tbl-collaborators>
]

// Rendered only when this file is compiled standalone; the proposal imports
// the `collaborator-figure` binding, so nothing leaks into it.
#collaborator-figure
