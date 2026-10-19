// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Project Timeline

The project runs for 12 months from the approved start date. Work will progress from harmonization of the existing gait and balance datasets to implementation and evaluation of the reusable FreeMoCap export.


#grant-table(columns: (1in, 2.9in, 3.6in), size: 10pt,
  header: ([Period], [Activities], [Milestone and deliverable]),
  rows: (
    ([Months 1-2], [Complete institutional and data-use review; freeze source release; inventory gait and balance outputs and associated metadata.], [Source manifest; documented permissions; initial scope of supported data and reuse examples.]),
    ([Month 3], [Review the dictionary, existing standards, DAPR mappings, and metadata available from processing or protocol documentation.], [Representation version 0.1; mapping decisions; required and optional fields; unresolved terms logged.]),
    ([Months 4-5], [Assemble harmonized gait and balance packages; assess coverage, numerical fidelity, and representative reuse.], [Aim 1 datasets, dictionary, mappings, and initial evaluation; requirements for metadata storage and export.]),
    ([Month 6], [Implement recording and measurement metadata records and their links through processing; review progress.], [Initial metadata architecture and capture mechanisms; six-month progress report and budget update.]),
    ([Months 7-8], [Implement study-context input, export generation, and checks; compare initial exports with Aim 1 packages.], [Runnable export; supported-input documentation; initial fidelity and metadata propagation results.]),
    ([Month 9], [Test supported tasks and methods, missing metadata, and clean-environment reuse; conduct mentor review and assess DAPR handoff needs.], [Reuse checks and mentor review log; revised software and documentation; follow-on concept outline.]),
    ([Months 10-11], [Prepare release candidate, tutorial, evaluation report, and manuscript outline; discuss future funding.], [DAPR review materials; organized results; draft follow-on aims and software contribution for review.]),
    ([Month 12], [Archive permitted outputs; demonstrate the export; complete reporting.], [Persistent identifiers for datasets, exporter, dictionary, mappings, tutorial, and final reports.]),
    ([Year after completion], [Planned manuscript submission and application to an appropriate follow-on opportunity.], [Target: Methods manuscript submission and a follow-on application (R21 or mechanism recommended by program staff)]),
  ),
)

The PI will carry out harmonization, software development, and evaluation, with monthly mentor review and
quarterly checkpoints. 
]

#show: grant
#body
