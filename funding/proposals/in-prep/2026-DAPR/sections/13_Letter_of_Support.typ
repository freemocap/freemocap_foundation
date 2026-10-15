// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Foundation Resource and Stewardship Support

\[PLACE ON FREEMOCAP FOUNDATION LETTERHEAD AFTER APPROVAL\]

\[DATE\]

Dear DAPR Pilot Grant Review Committee,

I am writing on behalf of the FreeMoCap Foundation in support of the proposed Data STACHE project,
"#project-title," led by Aaron T. Cherian, \[CONFIRMED CREDENTIALS AND APPOINTMENT\].

The Foundation supports making quantitative movement measurement accessible through free and open-source
software. As researchers use FreeMoCap in different studies and settings, consistent documentation and
interpretable outputs become increasingly important. The proposed project will harmonize existing gait and
balance data with measurement definitions, processing history, and DAPR terminology, informed by existing
standards. Building the required metadata capture and export capability into FreeMoCap will make that
representation available to other researchers. Evaluation using the validation datasets will establish
supported uses and identify information needed for broader reuse.

Subject to the applicable permissions and institutional review, the Foundation will support the team's use of
public FreeMoCap validation resources and related technical documentation. Cherian will carry out
harmonization, implementation, evaluation, and documentation. Jonathan Samir Matthis, PhD, President and CEO
of the Foundation, will provide budgeted mentorship and scientific and technical review. We will designate
\[NAME AND ROLE\] as the organizational contact for repository stewardship and the ordinary software
contribution process. Any resource commitments beyond the funded team will require explicit approval.

The Foundation intends to preserve the project's archived release links, identify a contact for correction
requests, and make the documentation discoverable through an appropriate FreeMoCap repository. Proposed
metadata and export changes to maintained software will receive ordinary technical review. A documented
exporter for the supported inputs will remain available independently of its inclusion in a particular
application release.

Matthis's mentorship will support the PI's continued development in rehabilitation data science,
interpretation of evaluation findings, and preparation of manuscript materials and follow-on research
proposals. Additional institutional resource commitments will be documented explicitly and approved through
our normal processes.

Sincerely,

\[AUTHORIZED OFFICIAL NAME AND TITLE\] \
FreeMoCap Foundation \
\[CONTACT INFORMATION\]

Signature: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ \
Date: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
]

#show: grant
#body
