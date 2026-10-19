// Edit the body below. This file also compiles as a standalone attachment.
// Working draft: human-subjects classification remains unresolved.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Human Subjects Determination

*Project title:* #project-title \
*Principal Investigator:* Aaron T. Cherian \
*Applicant Organization:* FreeMoCap Foundation

== Proposed Activities and Data Source

The project will use the publicly released FreeMoCap gait and balance validation dataset to develop and evaluate harmonized movement-data packages and a reusable FreeMoCap exporter. The participant-level inputs will consist of publicly available numerical trajectories, derived measurements, task descriptors, and associated study metadata. Software and methodological documentation will support the description of processing steps and measurement definitions.

The original dataset was collected under Northeastern University IRB approval. Northeastern University will not participate in the proposed project. No new participants will be recruited or contacted, no new recordings will be collected, and no intervention or clinical trial is proposed.

== Proposed Exemption

For application purposes, the PI proposes that the project qualifies for Exemption 4 under 45 CFR 46.104(d)(4)(i), concerning secondary research using publicly available information. The data were collected for an earlier validation study and are now publicly available for reuse. The proposed work will reorganize and document those data, evaluate the preservation of measurements and metadata during export, and develop reusable software. No additional nonpublic participant-level information will be obtained or incorporated into the project.

This exemption designation represents the PI's preliminary assessment for the application. A formal determination for the proposed Foundation-based project has not yet been obtained.

== Identifiability and Privacy Protections

The public dataset omits direct participant identifiers. The PI retains access to information that can connect participant codes to identities; accordingly, this justification does not rely on an assertion that the PI cannot identify participants.

Participant linkage keys, names, contact information, consent records, and identifiable source videos will not be included in the project's analytical workspace or public outputs. The project will not link the research data to participant identities or other private records. Data use and sharing will follow the permissions applicable to the source dataset.

== Confirmation Before Project Initiation

The Foundation will coordinate with DAPR to identify an appropriate independent authority to confirm the proposed classification and obtain any required determination or approval before beginning the funded secondary data analyses. The human subjects documentation will be updated to reflect that determination. Any proposed expansion to nonpublic participant data or new participant interaction will be assessed before implementation.
]

#show: grant
#body
