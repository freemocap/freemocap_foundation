== Collaborators

#let collaborator-figure = {
  // Scoped so the 9pt only affects this table, not everything after it.
  set text(size: 9pt)
  figure(
  table(
    columns: (auto, auto, 1fr),
    align: (left, left, left),
    stroke: 0.5pt,
    inset: 6pt,
    table.header(
      [Initials],
      [Model / Domain],
      [Expertise],
    ),
    [BS], [Ferrets], [Visual/Perceptual neuroscience, ephys],
    [MD], [Guinea Fowl], [Musculoskeletal Biomechanics, muscle units],
    [DF], [Mice], [System Biology],
    [AH], [Marmosets / NHP], [Ephys],
    [MH], [Human ], [Vision and CPS, Natural Bx, VR/AR and eye tracking],
    [KB], [Human/NHP ], [Visual Neuroscience, Optometry],
    [JY], [Human/NHP], [Computational neuroscience, Eye tracknig, Ephys],
    [GD],[HUman],[Eye tracking, VR/AR, Perceptual/Motor control],
    [BD, GN/RAI, CH, JH, SH], [Robotics, Prosteheics, Exoskeletons], [Control theory],
  ),
  kind: table,
  supplement: [Table],
  caption: [Collaborator Network],
  )
}

// Rendered only when this file is compiled standalone; the proposal imports
// the `collaborator-figure` binding, so nothing leaks into it.
#collaborator-figure
