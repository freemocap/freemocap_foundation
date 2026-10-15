// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= New Area of Research Justification

Applicant: Aaron T. Cherian \[confirm eligibility pathway and credentials\]

Project: #project-title

My prior work has focused on accessible markerless motion capture, biomechanical analysis, and evaluation
against marker-based reference measurements. In particular, comparing outputs from different pose-estimation
backends has required close attention to how tracking and analysis choices affect gait and balance
measurements. This experience motivates a new line of work on the representation and sharing of movement data
across rehabilitation studies.

The proposed project will first harmonize existing gait and balance validation data with the DAPR framework,
then build the resulting representation into a reusable FreeMoCap export. I will investigate which information
researchers need to interpret shared measurements, how that information relates to existing standards and
rehabilitation terminology, and how metadata capture, persistent storage, and a reusable export can preserve
it. The contribution will be a harmonized representation, software that makes it available to FreeMoCap
researchers, and an evaluation of its supported uses and limitations.

My familiarity with anatomical landmarks, coordinate conventions, pose-estimation methods, and processing
choices prepares me to identify distinctions that matter for interpretation. Working with DAPR will extend
that experience into rehabilitation data models, terminology mappings, data governance, and evaluation of
movement-data reuse. Existing resources such as Motion-BIDS will inform the design and help identify where
more detailed metadata are needed.

During the pilot, I will carry out the data and metadata inventory, mapping, software implementation,
automated checks, documentation, and evaluation of the exported study packages. Jonathan Samir Matthis, PhD,
President and CEO of the FreeMoCap Foundation, will serve as mentor, advising on scientific assumptions and
architecture and reviewing mappings, evaluation findings, and dissemination plans. I will coordinate DAPR
consultation and run the worked examples in a clean environment. The harmonized datasets will establish export
requirements and reference outputs across the supported tasks and processing methods.

Beyond the award, I plan to prepare a peer-reviewed methods or research-software manuscript and pursue a
larger study of movement-data sharing in rehabilitation. The anticipated manuscript submission window is the
year after project completion. During the pilot, I will discuss a follow-on NIH R21 or another suitable
mechanism with NICHD/NCMRR, identify potential clinical-research collaborators, and prepare specific aims. An
application cycle in the following year will be targeted according to eligibility, an active opportunity, and
partner readiness.

This justification should be used only if the applicant does not meet NIH Early-Stage Investigator criteria
and the institution confirms that the described transition meets DAPR's new-area eligibility requirement.
]

#show: grant
#body
