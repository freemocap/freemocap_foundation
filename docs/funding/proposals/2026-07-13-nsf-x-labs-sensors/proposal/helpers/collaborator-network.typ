== Collaborators

// NOTE: mission.typ cites collaborator "AS" which has no row here —
// the closest unconfirmed robotics row is "BD" (institution still "[?]").
// Flagging for reconciliation; not resolved here since it's a content
// decision, not markup.

#let collaborator-figure = {
  set text(size: 7.5pt, hyphenate: false)

  let rule-thick = 0.8pt + rgb("#333")
  let rule-thin  = 0.4pt + rgb("#666")

  [#figure(
    table(
      columns: (auto, auto, auto, 1fr),
      align: (left, left, left, left),
      stroke: none,
      inset: (x: 5pt, y: 3pt),

      table.header(
        [*Initials*],
        [*Institution*],
        [*Model*],
        [*Expertise*],
      ),
      table.hline(stroke: rule-thick),

      // ── Vision / Neuroscience ──
      [#box[BS] <collab-BS>], [Univ.\ of Colorado\ Denver], [Ferret],         [Visual/perceptual neuroscience, ephys],
      [#box[MD] <collab-MD>], [UC\ Irvine],                [Guinea\ fowl],   [Musculoskeletal biomechanics, muscle-level units],
      [#box[DF] <collab-DF>], [?],                         [Mouse],          [Systems biology],
      [#box[AH] <collab-AH>], [UCLA],                      [Marmoset\ /\ NHP],[Ephys, population-level vision],
      [#box[MH] <collab-MH>], [UT\ Austin],                [Human],          [Vision\ &\ CPS,\ natural\ behavior,\ VR/AR,\ eye\ tracking],
      [#box[KB] <collab-KB>], [Indiana\ Univ.],            [Human\ /\ NHP],  [Visual\ neuroscience,\ optometry],
      [#box[JY] <collab-JY>], [UC\ Berkeley],              [Human\ /\ NHP],  [Computational\ neuroscience,\ eye\ tracking,\ ephys],
      [#box[GD] <collab-GD>], [?],                         [Human],          [Eye\ tracking,\ VR/AR,\ perceptual/motor\ control],

      // ── Robotics / Control ──
      [#box[GN] <collab-GN>], [RAI\ Institute],            [Robotics],       [Control\ theory,\ legged\ locomotion],
      [#box[CH] <collab-CH>], [FAMU-FSU],                  [Robotics],       [Bipedal\ locomotion,\ optimal\ control],
      [#box[JH] <collab-JH>], [Agility\ Robotics\ /\ OSU], [Robotics],       [Legged\ robots,\ mechanical\ design],
      [#box[SH] <collab-SH>], [Cornell\ Univ.],            [Robotics],       [Legged\ locomotion,\ morphology–control\ coupling],
      [#box[BD] <collab-BD>], [?],                         [Robotics],       [Control\ theory,\ fabrication],
      table.hline(stroke: rule-thin),
    ),
    kind: table,
    supplement: [Table],
    caption: [#set text(size: 7.5pt); External research collaborators spanning every model system and dimensional domain the #smallcaps[Dome] instrument serves. [?] marks institutions not yet confirmed.],
  ) <tbl-collaborators>]
}

// Rendered only when this file is compiled standalone; the proposal imports
// the `collaborator-figure` binding, so nothing leaks into it.
#collaborator-figure
