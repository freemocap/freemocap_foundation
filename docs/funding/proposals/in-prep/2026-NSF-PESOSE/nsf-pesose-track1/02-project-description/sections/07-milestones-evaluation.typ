// PART 7 — Milestones and Evaluation.  Page budget: ~0.75
//
// Serves Track 1 criterion (d): "a specific, actionable list of milestones and
// evaluation plan." Also PAPPG merit review element 3, which asks whether the
// plan "incorporate[s] a mechanism to assess success."
//
// WHY THIS IS A STANDALONE SECTION RATHER THAN DISTRIBUTED
//
// Criterion (d) says "list." A panelist scoring it is filling in a box; if the
// milestones are scattered across four content areas they have to assemble the
// list themselves, and reviewer assembly work costs you points. A table is
// also cheaper in space than the same content as prose, because prose needs
// framing sentences that a table row does not.
//
// Note that NSF already split these for you: "metrics for long-term success"
// is listed inside the Organization and Governance content area, while
// milestones and evaluation appear only as a review criterion. So ecosystem
// metrics live in Part 4; the milestone list lives here.
//
// The four content-area parts still each close with ONE sentence naming their
// own output. That keeps activity and output adjacent where the reviewer is
// already reading, and stops those sections reading as pure intention.
//
// THE "VERIFIED BY" COLUMN IS THE POINT
//
// Every row must have an output someone OTHER than the team can check. This is
// where most Track 1 proposals get marked down. "Team assesses progress
// quarterly" is not verifiable. "Governance model reviewed by three
// maintainers of comparable OSEs" is. Filling this column is a forcing
// function — if you cannot name an external verifier for a row, the milestone
// is probably too vague to be actionable.
//
// The content below is ILLUSTRATIVE. Replace it, but keep the shape: every row
// dated, owned, and externally checkable.

#import "../../lib/nsf.typ": budget, note

#budget("~0.75 page")

= Milestones and Evaluation Plan

// Table body stays at 11pt. PAPPG II.C.2.a permits sub-10pt type only for
// equations, figures, and table/diagram CAPTIONS — not for table contents.
// Shrinking this table to fit more rows is a compliance risk, not a shortcut.
// #table(
//   columns: (auto, 1.35fr, 1.35fr, 1fr),
//   align: (center + horizon, left, left, left),
//   stroke: 0.5pt,
//   inset: 5pt,
//   table.header(
//     [*Qtr*], [*Milestone*], [*Output artifact*], [*Verified by*],
//   ),

//   [Q1],
//   [Participate in I-Corps for PESOSE; instrument baseline user and contributor
//    metrics],
//   [Cohort completion; baseline metrics report],
//   [I-Corps instructors; advisory group],

//   [Q1--Q2],
//   [Ecosystem discovery interviews across research, clinical, and education
//    segments],
//   [Segmented demand assessment, with the case for or against an OSE],
//   [Advisory group review],

//   [Q2],
//   [Comparative review of governance and licensing models in adjacent scientific
//    OSEs],
//   [Governance landscape memo with candidate models],
//   [Two external OSE maintainers],

//   [Q3],
//   [Draft governance model, contribution process, and deliberate licensing
//    analysis],
//   [Draft governance and licensing documents, publicly posted],
//   [Three maintainers of comparable OSEs],

//   [Q3],
//   [Threat modeling for the ecosystem, including the privacy surface of
//    human-subject video],
//   [Risk register and draft security and release process],
//   [External security reviewer],

//   [Q4],
//   [Pilot the contribution and onboarding path with first-time external
//    contributors],
//   [Onboarding documentation; count of merged first-time contributions],
//   [Contributors themselves, via structured debrief],

//   [Q4],
//   [Consolidate into the OSE scoping and sustainability plan],
//   [Final scoping plan, including post-grant maintenance funding options],
//   [Advisory group; external readers],
// )

== Evaluation

// The distinction worth drawing explicitly: milestones measure whether the
// work happened; evaluation measures whether what we produced is CREDIBLE.
// Track 1's deliverable is a plan, so "we finished the plan" is not evidence
// the plan is any good. Say how you will know the difference.
//
// Suggested three moves, kept tight:
//   1. Leading indicators tracked throughout (contributor funnel, issue
//      response latency, user segment reach) versus the Q1 baseline.
//   2. External review as the primary credibility test — named categories of
//      reviewer, not vague "community feedback."
//   3. A falsifiability statement. NSF's own Ecosystem Discovery language asks
//      teams to "justify why an OSE is the right approach," which implies
//      discovery could conclude otherwise. Committing to report that honestly
//      if it happens signals rigor and costs you nothing — a negative
//      discovery finding is a legitimate Track 1 outcome, and reviewers know
//      it.

// TODO: leading indicators against the Q1 baseline.
// TODO: who reviews the final plan, and against what standard.
// TODO: one sentence on reporting a negative discovery finding honestly.

#note[criterion (d) — is every row in the table checkable by an outsider?]
