// Edit the body below. This file also compiles as a standalone attachment.
// Editable working transcription. Original filled NIH form is in forms/.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Data Management and Sharing Plan

*1.* Will there be maximum appropriate sharing of scientific data underlying peer-reviewed publications and other findings resulting from the work supported by this award (including preprints, refereed papers reported at conferences, and other findings)?

Yes.

*2.* Will the scientific data underlying peer-reviewed publications be shared by the time of publication, or for other findings, by the end of the period of performance, which includes no-cost extensions?

Yes.

*3.* Will shared scientific data be made available for at least as long as required by applicable data repository policies and/or journal policies?

Yes.

*4.* If you answered “no” to elements 1, 2, or 3, or if you anticipate that sharing will be limited in some other way, please describe these limitations and the ethical, legal, or technical factors for them. Your response should specify a particular reason(s) for limiting sharing. \[300 words maximum\]

The project will share the maximum appropriate scientific data and associated metadata from its harmonization and reuse evaluation. Sharing will be limited by source permissions and institutional privacy review. Identifiable videos, participant linkage keys, and direct identifiers will not enter the public release. If a source restriction prevents redistribution, we will share permitted derivatives, the crosswalk, code, and instructions linking to the original source. Any additional restriction will be documented specifically and reviewed with DAPR. No proprietary embargo is proposed. Permitted numerical data will be public; any restricted data approved for retention will use institutional access controls. Public derivatives will preserve source attribution and applicable licenses.

*5.* If scientific data derived from human research participants will be shared, will privacy, rights, and confidentiality of participants be protected as outlined in NOT-OD-22-213?

Yes.

Public releases will contain only permitted, nonidentifying numerical data and metadata. Restricted working materials, if approved, will remain access controlled and will not be deposited publicly.

*6.* In the table below, please list \[100 words maximum\]:

#grant-table(columns: (3.8in, 3.7in), size: 10pt,
  header: ([Expected Data Type], [Established Repository or Example]),
  rows: (
    ([Reconstructed movement trajectories, kinematic time series and summaries, measurement definitions, processing history, and permitted study metadata.], [Zenodo, linked to the source validation study; harmonized gait and balance packages and mappings provided to DAPR.]),
    ([Data dictionary and mappings, evaluation results, metadata capture and export software, example loading and analysis code, and reproducible environments.], [Zenodo archival releases; GitHub for maintained source code and documentation.]),
  ),
)

*7.* For studies subject to the NIH Genomic Data Sharing Policy (GDS) (e.g., using NIH funds to generate large-scale human genomic data):

*a.* Will you share all large-scale human genomic and associated data in a NIH-designated repository according to the accelerated timelines expected in the GDS Policy?

Not Applicable. No genomic data are proposed.

*b.* Do you anticipate that when sharing you will be able to meet the expectations of the Institutional Certification in the GDS Policy?

Not Applicable. No genomic data are proposed.
]

#show: grant
#body
