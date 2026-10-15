// Edit the body below. This file also compiles as a standalone attachment.
// Working draft: human-subjects classification remains unresolved.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Human Subjects Determination

Project title: #project-title

Proposed PI: Aaron T. Cherian \[confirm credentials and eligible appointment\]

Original study: Northeastern University IRB approval \[INSERT ORIGINAL PROTOCOL NUMBER AND TITLE\]

Status of the proposed secondary use: \[CONFIRM CLASSIFICATION AND REQUIRED DOCUMENTATION\]

== Proposed Activities and Existing Approval

The project will use the existing FreeMoCap gait and balance validation dataset, originally collected under
Northeastern University IRB approval. The proposed work will harmonize movement measurements with their
definitions, study context, and processing history, then implement and evaluate a reusable FreeMoCap export.
It will not recruit participants, collect new recordings, or introduce an intervention. No clinical trial is
proposed.

The intended inputs are the publicly released numerical trajectories, available kinematic derivatives, task
descriptors, and associated technical metadata. The original protocol and consent materials should be checked
for the permissions relevant to this use and any additional sharing. The original approval documents the
source study; its applicability to this Foundation-based project has not yet been confirmed.

== Identifiability and Data Access

The released dataset omits direct participant identifiers. However, the PI retains access to records that
connect participant codes to identities. The application therefore cannot state that the PI is unable to
identify the participants. The proposed harmonization workspace and public exports will not include the
linkage key, names, contact information, consent records, or identifiable source videos. Any technical
metadata recovered from nonpublic records will be described explicitly in the access review.

The intended use of the public release and the PI's retained access to participant identities must both be
considered when classifying the proposed secondary research. Public release and coded labels alone do not
establish the appropriate classification for every use. OHRP guidance distinguishes research not involving
human subjects from exempt and nonexempt human-subjects research. \[8\]

== Final Application Documentation

Northeastern's Department of Human Research is the starting point for reviewing the proposed use in relation
to the original protocol. The inquiry should identify the Foundation as the applicant institution, the data
and metadata to be used, and the PI's access to participant identities. The responsible review process and any
additional documentation will depend on that assessment.

For research determined not to involve human subjects, DAPR requests a brief, study-specific justification
explaining the basis. If the project involves human subjects, the applicable NIH documentation is required. A
dated institutional determination should be cited or attached when one has actually been issued and is
applicable; this draft does not represent that such a determination has been obtained.

\[BEFORE SUBMISSION: Replace this working status with the confirmed classification and project-specific
justification or applicable human-subjects documents. Include the relevant original protocol information and
any actual determination reference.\]
]

#show: grant
#body
