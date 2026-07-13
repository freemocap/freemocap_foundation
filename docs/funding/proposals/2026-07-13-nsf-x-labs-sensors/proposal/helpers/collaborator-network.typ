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
      columns: (auto, auto, auto),
      align: (left, left, left),
      stroke: none,
      inset: (x: 5pt, y: 3pt),

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
      [#box[KB] <collab-KB>], [Indiana Univ.],[Human, NHP], 
      [#box[JY] <collab-JY>], [UC Berkeley], [Human, NHP], 

      // ── Robotics / Control ──
      [#box[GN] <collab-GN>], [RAI Institute],[Robotics],      
      [#box[CH] <collab-CH>], [FAMU-FSU],[Robotics],      
      [#box[JH] <collab-JH>], [Agility Robotics],[Robotics],      
      [#box[SH] <collab-SH>], [Cornell],        [Robotics],      
      
      table.hline(stroke: rule-thin),
    ),
    kind: table,
    supplement: [Table],
    caption: [External research collaborators spanning every model system and dimensional domain the #smallcaps[Dome] instrument serves.],
  ) <tbl-collaborators>]
}

// Rendered only when this file is compiled standalone; the proposal imports
// the `collaborator-figure` binding, so nothing leaks into it.
#collaborator-figure
