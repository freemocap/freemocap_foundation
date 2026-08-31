// TABLE — quarterly milestones and evaluation matrix. Rendered in Part 7.
// Set rules are scoped inside the block so nothing leaks into the sections
// included after this one (Typst #include behaves like pasting the file's
// content inline at the include point).
// NOTE: table cell text may legally drop below 10pt (PAPPG 24-1 II.C.2.a
// exempts tables) — e.g. `text(size: 9.5pt, table(...))` if width demands.
#block(
  breakable: false,
  [
    #{
      set par(
        justify: false,
      )

      table(
        columns: (2.5em, 1.55fr, 1.15fr),

        // More vertical breathing room inside each cell
        inset: (x: 2pt, y: 2.5pt),

        stroke: 0.4pt,

        table.header(
          [*Qtr*],
          [*Milestone / Deliverable*],
          [*Evaluation*],
        ),

        [Q1--Q2],
        [Complete I-Corps for PESOSE; establish baseline ecosystem metrics],
        [Completion confirmed by I-Corps instructors],

        [Q1--Q2],
        [Stakeholder discovery; prioritized user and contributor barrier map],
        [Target groups covered; recurring barriers confirmed],

        [Q2],
        [Develop candidate governance, contributor, and stewardship models],
        [Compared with discovery findings and reviewed by OSE maintainers],

        [Q2--Q3],
        [Define extension contribution, maintenance, licensing, and review requirements],
        [Tested against discovered extension needs; external OSE review],

        [Q3],
        [Security/data-quality scoping; prototype benchmarking and regression suite],
        [Known output differences detected; risks mapped to controls],

        [Q3],
        [Pilot education and onboarding with partner organizations],
        [Participant feedback and observed barriers],

        [Q4],
        [Integrate findings into governance, sustainability, community, and implementation roadmap],
        [Processes usable without direct core-team consultation],
      )
    }
  ],
)
