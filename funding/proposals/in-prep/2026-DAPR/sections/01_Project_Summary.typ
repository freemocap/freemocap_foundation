// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Project Summary

#project-title

Free and open-source motion capture can expand access to quantitative movement measurements for rehabilitation
researchers and investigators working in clinical settings. However, wider access to data collection does not
ensure that the resulting measurements can be understood and reused across studies. Differences in anatomical
definitions, pose-estimation methods, coordinate conventions, and processing can affect interpretation. These
distinctions must remain available when data leave the software that produced them.

This Data STACHE project will harmonize existing FreeMoCap gait and balance data with the DAPR framework and
build that harmonization into a reusable FreeMoCap export. The work will connect movement time series with
study context, measurement definitions, and processing history. Existing standards, including Motion-BIDS,
will inform the design. Consultation with the DAPR Resource Core will guide terminology mappings and proposals
for information not adequately represented in current resources.

Aim 1 will harmonize the gait and balance datasets from our existing validation study, preserving the context
needed to interpret measurements from different pose-estimation backends and the marker-based reference. The
resulting data packages, dictionary, and mappings will establish the requirements for Aim 2. Aim 2 will
implement metadata capture and storage within the supported FreeMoCap workflow and an export capability that
carries this information with the numerical data. Evaluation will check that exports reproduce the established
representation, preserve measurements, and support representative reuse examples.

Within 12 months, the project will deliver harmonized gait and balance datasets, documented export software,
reviewed mappings, and an evaluation report with worked examples. These outputs will support a manuscript
submission plan and follow-on rehabilitation data research. By making the same export capability available to
other FreeMoCap researchers, the pilot will provide a practical foundation for future harmonization across
studies. It uses existing data and requires no new recruitment.
]

#show: grant
#body
