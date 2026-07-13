== Collaborators

#let collaborator-figure = {
  // Scoped so the font size only affects this table.
  set text(size: 7.5pt, hyphenate: false)

  let rule-thick = 0.8pt + rgb("#333")
  let rule-thin  = 0.4pt + rgb("#666")

  figure(
    table(
      columns: (auto, auto, auto, auto, 1fr),
      align: (left, left, left, left, left),
      stroke: none,
      inset: (x: 5pt, y: 3pt),

      // Header
      table.header(
        [*Initials*],
        [*Name*],
        [*Institution*],
        [*Model*],
        [*Expertise*],
      ),
      table.hline(stroke: rule-thick),

      // ── Vision / Neuroscience ──
      [BS], [Ben\ Scholl],      [Univ.\ of Colorado\ Denver], [Ferret],         [Visual/perceptual neuroscience, ephys],
      [MD], [Monica\ Daley],    [UC\ Irvine],                [Guinea\ fowl],   [Musculoskeletal biomechanics, muscle-level units],
      [DF], [—],                  [?],                         [Mouse],          [Systems biology],
      [AH], [Alex\ Huk],        [UCLA],                      [Marmoset\ /\ NHP],[Ephys, population-level vision],
      [MH], [Mary\ Hayhoe],     [UT\ Austin],                [Human],          [Vision\ &\ CPS,\ natural\ behavior,\ VR/AR,\ eye\ tracking],
      [KB], [Kate\ Bonnen],     [Indiana\ Univ.],            [Human\ /\ NHP],  [Visual\ neuroscience,\ optometry],
      [JY], [Jake\ Yates],      [UC\ Berkeley],              [Human\ /\ NHP],  [Computational\ neuroscience,\ eye\ tracking,\ ephys],
      [GD], [—],                  [?],                         [Human],          [Eye\ tracking,\ VR/AR,\ perceptual/motor\ control],

      // ── Robotics / Control ──
      [GN], [Gabe\ Nelson],     [RAI\ Institute],            [Robotics],       [Control\ theory,\ legged\ locomotion],
      [CH], [Christian\ Hubicki],[FAMU-FSU],                  [Robotics],       [Bipedal\ locomotion,\ optimal\ control],
      [JH], [Jonathan\ Hurst],  [Agility\ Robotics\ /\ OSU], [Robotics],       [Legged\ robots,\ mechanical\ design],
      [SH], [Steve\ Heim],      [Cornell\ Univ.],            [Robotics],       [Legged\ locomotion,\ morphology–control\ coupling],
      [BD], [—],                  [?],                         [Robotics],       [Control\ theory,\ fabrication],
      table.hline(stroke: rule-thin),
    ),
    kind: table,
    supplement: [Table],
    caption: [#set text(size: 7.5pt); External research collaborators spanning every model system and dimensional domain the #smallcaps[Dome] instrument serves. Dashes (—) indicate initials pending confirmation; [?] marks institutions not yet confirmed.],
  )
}

// Rendered only when this file is compiled standalone; the proposal imports
// the `collaborator-figure` binding, so nothing leaks into it.
#collaborator-figure
