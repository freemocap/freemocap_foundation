#show table: set par(justify: false)

= Milestones and Evaluation Plan


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

        [Q1],
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
== Evaluation
Track 1 success will be evaluated by: (1) documented governance roles, contributor pathways, and software architecture, assessed by whether contributors outside the core team can act on them without direct consultation; (2) educational and onboarding materials, assessed through pilot participant performance and observed barriers; and (3) a framework for developing, reviewing, distributing, and maintaining community extensions, assessed through limited pilots of the proposed extension process. Each output will be revised in response to stakeholder feedback before incorporation into the final ecosystem plan.


