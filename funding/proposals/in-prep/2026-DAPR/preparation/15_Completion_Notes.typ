// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Application Completion Notes

This version supports Aaron T. Cherian as proposed PI and Jonathan Samir Matthis, PhD, President and CEO of
the FreeMoCap Foundation, as mentor. The project retains its two sequential aims and the one-page aims,
three-page strategy, and one-page dissemination allocation. The application remains a draft requiring approved
effort and rates, institutional information, confirmed permissions, and applicant review.

== Personnel and Scope

The separate programmer position has been removed. Cherian will carry out harmonization, metadata
architecture, export implementation, checks, evaluation, and documentation. Matthis will provide mentorship,
scientific and technical review, and guidance on dissemination and follow-on research. These roles are
reflected in the strategy, resources, timeline, budget, letters, and biosketch preparation materials.

Reproducibility evaluation now consists of the PI running documented examples in a clean environment, with
mentor review of representative exports, instructions, and results. It does not claim independent replication
by a separate operator. Monthly mentoring reviews and quarterly checkpoints will support the work throughout
the award.

The budget retains #money(direct-costs) direct and #money(indirect-costs) indirect costs. Its second personnel
line now supports Matthis as mentor. The existing #fixed-two(months(pi)) and #fixed-two(months(mentor)) calendar-month allocations, salary bases, and
#percent(fringe-rate) fringe remain illustrative planning assumptions requiring approval; the role change does not establish
actual compensation or agreed effort.

Aim 1 harmonizes the existing gait and balance datasets with DAPR consultation; Aim 2 builds that
representation into FreeMoCap metadata capture and export. The preferred opening, measurement examples, and
use of existing standards remain. The datasets come from one study, with broader multi-study reuse enabled by
the export. The manuscript plan retains a submission window in the year after completion.

== Scientific Decisions to Resolve

#grant-table(columns: (1.55in, 5.95in), size: 9.5pt,
  header: ([Decision], [Required action]),
  rows: (
    ([Program fit], [The proposal uses one validation study and reusable export infrastructure to support future multi-study harmonization. It does not claim two independent studies; DAPR acceptance of this scope remains unconfirmed.]),
    ([Initial export scope], [Confirm supported FreeMoCap versions, data types, and source formats. Select representative gait and balance analyses and the metadata needed for their use.]),
    ([DAPR and standards], [Review the representation and mappings with the Resource Core. Confirm receiving requirements and applicable standards; retain unresolved concepts explicitly.]),
    ([Manuscript plan], [Review the proposed paper and post-award window. The call requires a plan to submit at least one journal manuscript. If no submission is intended, seek DAPR clarification before claiming this requirement is met.]),
    ([Effort and implementation], [Confirm that harmonization, architecture, export integration, and evaluation fit the PI's approved effort and the mentor's review capacity. Keep additional fields and graphical interface enhancements optional.]),
  ),
)

// Deliberate page break preserves the grant allocation.
#pagebreak()
= Submission Readiness

#grant-table(columns: (1.55in, 5.95in), size: 9.5pt,
  header: ([Item], [Required action]),
  rows: (
    ([Required LOI], [Confirm submission and retain the receipt. The uploaded RFP lists September 25; the website lists September 30. If no timely LOI was submitted, ask DAPR whether a full proposal may be considered.]),
    ([PI eligibility], [Verify the degree, full-time appointment at an NIH-eligible US institution, at least 25 percent research allocation, and ESI or new-area eligibility. An officer title or contractor role alone does not establish eligibility.]),
    ([Team and rates], [Confirm Cherian's PI effort and Matthis's mentorship effort, availability, and personnel classifications. Replace illustrative salary bases and #percent(fringe-rate) fringe with approved rates. The draft retains #fixed-two(months(pi)) and #fixed-two(months(mentor)) calendar months, #money(direct-costs) direct, and #money(indirect-costs) indirect.]),
    ([Data readiness], [Verify the complete validation archive and freeze its version. Its DOI is cited from repository documentation. Confirm the associated records, analysis code, and permissions. Add any verified validation manuscript citation and its current status.]),
    ([Human subjects], [Confirm the classification and documentation for the proposed secondary use. The original study had Northeastern IRB approval and the PI retains access to participant identities. Use an accurate study-specific justification or the applicable NIH human-subjects documents.]),
    ([Institutional agreement], [Enter dates and official contact details, obtain institutional approval, and sign the consortium-intent letter on letterhead. No approval or signature is represented as obtained.]),
    ([Biosketches and support], [Prepare verified SciENcv Common Forms and Supplements for Cherian and Matthis as required. Use the new-area justification only if applicable; include support letters after approval and signature.]),
  ),
)

== Submission Assembly

The deadline is October 16, 2026, at 5 PM Pacific or 8 PM Eastern. The portal is
#link("https://usc.qualtrics.com/jfe/form/SV_dpCgyqNk9FUNdhY"). This package has not been submitted. Confirm
the current upload fields and use the individual attachments requested by the portal.

Sections 01-10 contain the scientific and administrative application drafts. Section 03 is the five-page
research plan. Sections 07 and 09 are editable Typst working transcriptions of the data-sharing plan and
budget; the original filled NIH forms are included in the forms folder. Section 11 is the required
institutional intent-letter draft for an external applicant. Section 12 is conditional and section 13 is an
optional support-letter draft. Sections 14 and 15 are preparation materials and do not replace certified
submission documents.

Edit the Typst section files, finalize placeholders, compile new PDFs, and recheck page and line limits. The
combined document is a review copy. Confirm the required form formats when preparing the final attachments;
retained Word forms are not automatically synchronized with Typst edits. Revisit source references and
affected sections if the data or software scope changes.
]

#show: grant
#body
