// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Biosketch Preparation Text

These narratives are proposed text for Aaron T. Cherian and Jonathan Samir Matthis to review for entry into
SciENcv. They do not replace the NIH Biographical Sketch Common Form and Supplement generated through SciENcv,
verified by each individual, and combined into the required PDF. Education, appointments, products,
identifiers, and certifications must come from each individual's current records.

== Aaron T Cherian Personal Statement

I am the Chief Scientific Officer of the FreeMoCap Foundation, where my work centers on accessible markerless
motion capture and the interpretation and validation of biomechanical measurements. I have worked with
multi-camera reconstructions, pose-estimation outputs, joint kinematics, gait events, and standing balance
measures, including comparisons with marker-based reference data. This experience is directly relevant to the
proposed project because effective harmonization requires an understanding of the anatomical and computational
choices underlying each measurement.

I will lead scientific design, harmonization, metadata architecture, export implementation, evaluation, DAPR
coordination, and development of manuscript materials and follow-on aims. I will first harmonize the existing
gait and balance datasets, then implement the required metadata capture and export within FreeMoCap. Jonathan
Samir Matthis will provide scientific and technical mentorship and review of definitions, design, and
evaluation. This work extends my experience into rehabilitation data standards and semantic interoperability.
My goal is to make harmonized exports available to FreeMoCap researchers so that movement data retain the
context needed for interpretation and reuse across studies.

== Proposed Contributions to Science Narratives

*Accessible movement measurement and reproducible analysis.* My work contributes to making quantitative
movement analysis available through an open-source multi-camera platform. This includes development and use of
analysis workflows that connect reconstructed movement trajectories to interpretable biomechanical outcomes.
The relevance to the present project is practical experience with the data structures and processing decisions
that must be documented for another researcher to reproduce or reuse a measurement. \[INSERT VERIFIED SOFTWARE
OR PUBLICATION PRODUCTS AND PRECISE ROLE.\]

*Evaluation of markerless gait and balance measurements.* I have worked on comparisons of FreeMoCap outputs
with marker-based reference measurements across gait and standing balance tasks. This work has required
attention to differences among pose-estimation approaches and to the definitions of trajectories, joint
angles, gait events, and center-of-mass measures. It motivates the proposed distinction between representing
measurements consistently and establishing that they are interchangeable. \[INSERT VERIFIED MANUSCRIPT OR
DATASET CITATIONS, CURRENT PUBLICATION STATUS, AND PRECISE ROLE.\]

*Adaptation of movement analysis to prosthetic morphology.* My work on prosthetic gait has examined the use of
general-purpose and task-specific pose estimation to describe movement under different alignment conditions.
The experience highlights why landmark definitions and model provenance are necessary to interpret
reconstructed kinematics. It informs my approach to documenting measurement definitions for researchers
working with diverse movement patterns. \[INSERT VERIFIED PRODUCTS, CURRENT STATUS, AND PRECISE ROLE.\]

// Deliberate page break preserves the grant allocation.
#pagebreak()
= Biosketch Preparation Continued
== Jonathan Samir Matthis Personal Statement

I am President and CEO of the FreeMoCap Foundation. My role in the proposed project will be to mentor Aaron T.
Cherian as he develops a harmonized representation of existing gait and balance data and incorporates it into
a reusable FreeMoCap export. I will provide scientific and technical guidance, review measurement definitions
and terminology mappings, advise on metadata architecture and evaluation design, and examine representative
exports and worked examples. Monthly meetings and quarterly checkpoints will support progress, interpretation
of findings, and preparation of manuscript materials and follow-on research aims.

\[MATTHIS TO REVIEW AND ADD VERIFIED EXPERIENCE, RELEVANT PRODUCTS, AND PRECISE CONTRIBUTIONS. This draft
describes the proposed role; it does not substitute for a complete record of qualifications.\]

== Records Needed for the Final SciENcv Documents

Cherian and Matthis should each provide verified degree history and dates, appointments, ORCID and other
required identifiers, current products and citations, and disclosures required by the current SciENcv
workflow. Prepare the required biosketches for the PI and funded mentor, with the institution confirming
personnel classifications and application requirements. Do not list DAPR advisors as confirmed personnel
before an agreement is in place.

The final combined PDF must list the PI first. NIH ESI status must be checked from the PI's actual record; the
proposed personal statement does not establish that status or satisfy the RFP's degree and appointment
requirements.
]

#show: grant
#body
