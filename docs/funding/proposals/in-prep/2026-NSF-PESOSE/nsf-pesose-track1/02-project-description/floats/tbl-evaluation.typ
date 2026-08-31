// TABLE — evaluation criteria, one row per scoping area named in Part 1.
// Rendered in Part 7, replacing the prose Evaluation paragraph.
//
// The milestone table is keyed by QUARTER; this one is keyed by SCOPING AREA,
// so a reviewer checking Part 1's five promises against criterion (d) can do it
// by reading down a single column. Deliberately not a third column on
// tbl-milestones: the axes are different and merging them forces repetition.
//
// Cell text at 9.5pt is legal — PAPPG 24-1 II.C.2.a exempts tables. Set rules
// are scoped inside the block so nothing leaks into later sections (#include
// behaves like pasting the file inline).
#block(
  breakable: false,
  [
    #{
      set par(justify: false)
      set text(size: 9.5pt)

      table(
        columns: (1fr, 1.75fr),
        inset: (x: 3pt, y: 2.5pt),
        stroke: 0.4pt,

        table.header(
          [*Scoping area*],
          [*Evidence of success at 12 months*],
        ),

        [Community landscape and needs],
        [Prioritized barrier map covering all four user populations; recurring barriers corroborated across surveys, discovery interviews, and community-activity analysis],

        [Documentation and contributor-upskilling pathways],
        [Pilot participants complete representative tasks without direct core-team instruction; points of failure observed and recorded],

        [Governance and contribution practices],
        [Draft governance, licensing, and extension-review documents that contributors outside the core team can act on without consultation; reviewed by maintainers of comparable ecosystems],

        [Validation and benchmarking methodology],
        [Prototype regression suite detects known output differences across versions; methodology documented sufficiently for an independent laboratory to reproduce it on its own hardware],

        [Sustainability model],
        [Revenue and maintenance assumptions tested against the demand evidence gathered during discovery],
      )
    }
  ],
)
