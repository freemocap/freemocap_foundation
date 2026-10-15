// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Specific Aims

#project-title

Movement measurements are central to understanding walking and balance, yet their reuse across studies is
limited by differences in data organization and measurement definitions. A variable called knee angle may
reflect different landmarks, segment axes, or rotation sequences. Likewise, a trajectory may represent a
surface marker, an estimated joint center, or a pose-estimation landmark. Pooling these measurements without
their context can obscure physiological differences or mistake measurement differences for biological
variation. Accessible systems such as FreeMoCap increase opportunities to collect movement data, making
interoperable outputs and explicit provenance increasingly important.

FreeMoCap is free and open-source software for motion capture using accessible camera hardware. \[1\] Its
potential reach creates an opportunity to make well-documented, harmonized outputs available to researchers at
the point of export. Our validation work comparing pose-estimation backends with marker-based measurements
provides experience with the methodological differences that affect gait and balance data. \[2\] This
experience motivates preserving both the numerical measurements and the context needed to interpret them.

The objective of this Data STACHE pilot is to harmonize existing gait and balance data with the DAPR framework
and incorporate that harmonization into a reusable FreeMoCap export. We will work with the Resource Core to
map relevant information to existing terminology and identify metadata needs for movement time series.
Existing resources, including Motion-BIDS, will inform the representation and organization of the data.
\[3-6\] Harmonization of the validation datasets will establish the requirements for software that other
researchers can use with supported FreeMoCap recordings.

*Aim 1 Harmonize existing FreeMoCap gait and balance validation datasets.* We will inventory the study's
movement measurements and the information needed to interpret them, including task context, measurement
definitions, and acquisition and processing provenance. With DAPR consultation, we will establish a data
dictionary and terminology mappings, draw on applicable standards, and document unresolved metadata needs. We
will assemble harmonized datasets and evaluate preservation of numerical values and measurement meaning. The
outcome will be documented gait and balance data packages that establish the representation and metadata
requirements for the export.

*Aim 2 Build the harmonized representation into a reusable FreeMoCap export.* We will implement the
architecture needed to capture and retain relevant metadata during processing, connect researcher-supplied
study context to recordings, and export numerical data with their definitions and provenance. Using the Aim 1
datasets as a reference, we will evaluate exports across the supported tasks and processing methods, check
handling of missing metadata, and demonstrate representative reuse. The outcome will be tested export software
and documentation that enable other researchers to prepare DAPR-aligned outputs from supported FreeMoCap
recordings.

Within 12 months, the pilot will deliver harmonized gait and balance datasets, reviewed mappings, the export
capability, and an evaluation report. Making this capability available through free and open-source software
will establish a practical foundation for future multi-study harmonization. Findings will inform DAPR's work
with movement time series and support a methods manuscript submission plan and follow-on research.

// Deliberate page break preserves the grant allocation.
#pagebreak()
= Research Strategy
== Significance

Movement measurements can help rehabilitation researchers characterize function, follow changes over time, and
investigate differences in gait and balance. FreeMoCap's use of accessible cameras and open-source software
creates opportunities for this work beyond laboratories with dedicated motion-capture infrastructure. \[1\]
Investigators working in clinical settings could benefit from these capabilities, provided that the
measurements can be interpreted in relation to the population, protocol, and method used to obtain them.

As more groups collect movement data, differences in their organization and documentation can limit the value
of sharing. A familiar variable name does not establish a common measurement definition. Relevant context may
remain in analysis code, a configuration file, or the original researcher's knowledge. Without that context,
another investigator may be unable to distinguish a difference in movement from a difference in measurement.
Harmonized exports can make such distinctions visible and reduce the need for each research group to
reconstruct them independently.

Our validation work has examined FreeMoCap outputs from different pose-estimation backends alongside
marker-based measurements of the same gait and balance trials. \[2\] This provides experience with the ways
that tracking methods and subsequent calculations affect the resulting data. It also provides existing records
and analyses for evaluating a shared representation. The proposed work will use that experience to determine
which information should accompany an export and how it can be represented consistently for other researchers.

DAPR provides a relevant framework through its rehabilitation schema, dictionary, mapping resources, and
Resource Core consultation. Its published development priorities include infrastructure for time-series data
from gait studies. \[5,6\] This pilot will connect FreeMoCap outputs with that framework while drawing on
existing movement-data standards, including Motion-BIDS. \[3,4\] Harmonizing the existing datasets will
establish requirements for a reusable export. Capturing the necessary metadata within FreeMoCap will help
future researchers retain that information as data are generated.

== Approach
=== Study design and existing data

The project will use existing reconstructed movement data and associated study records from the FreeMoCap
validation release, comprising six participants and 24 treadmill gait and standing balance trials. Aligned
trajectories are available from MediaPipe, RTMPose, ViTPose, and Qualisys. \[2\] The gait and balance datasets
provide different task contexts, while the tracking methods provide complementary measurements of shared
trials. Participant, trial, and method identities will remain attached to the harmonized records.

These datasets come from one validation study. Their differing tasks, measurement definitions, and processing
methods provide a practical basis for developing a common representation. The project's broader contribution
to multi-study reuse will be the integration of this representation into FreeMoCap, allowing researchers using
supported workflows to generate similarly documented exports for their own studies. The pilot will evaluate
that capability using the existing gait and balance data.

The initial scope is reconstructed trajectories, available kinematic time series and summaries, and the
metadata needed to interpret them. We will select a manageable set of representative analyses supported by the
source data. Source releases, eligible records, software versions, and permissions will be recorded before
evaluation. The pilot requires no new participant recruitment, video reconstruction, or pose-model training.

// Deliberate page break preserves the grant allocation.
#pagebreak()
= Research Strategy Continued
=== Aim 1 Harmonizing existing gait and balance data

In months 1-3, we will inventory the validation datasets and identify the information a researcher needs to
locate a recording, understand its measurements, and judge its suitability for an analysis. The core
dictionary will cover study and participant identifiers, sessions or trials, task conditions, measurement
definitions, units, and acquisition and processing provenance. It will distinguish metadata available from the
processing workflow from context supplied through study records. Required and optional fields will be
documented for each supported data type, with missing information represented explicitly.

The inventory will preserve distinctions consequential for interpretation. For example, joint-angle data may
require segment definitions, anatomical axes, sign conventions, and a rotation sequence or projection method.
A center-of-mass estimate may require a body-model reference and segment parameters. Other metadata describe
the pose estimator, model and software versions, timing, coordinate frame, filtering, or interpolation. These
examples will help identify a useful core and additional fields for particular measurements. Details will be
retained in machine-readable form and linked to the data they describe.

With the DAPR Resource Core, we will review candidate mappings to DAPR and relevant established terms,
including NINDS or OMOP concepts where their definitions apply. Each mapping will record the source
definition, target identifier and version, and any transformation. Direct equivalence, equivalence after
transformation, broader or related concepts, and unresolved mappings will remain distinguishable. The PI and
mentor will review mappings used in the demonstrations and document their decisions. Missing concepts will be
proposed to DAPR with definitions and examples.

Existing standards will inform the design. We will assess Motion-BIDS conventions for organizing motion
signals and describing channels and reference frames, adopt applicable conventions, and document the extent of
conformance. \[3,4\] Additional metadata will be identified clearly and linked to the relevant records. DAPR
consultation and the source inventory will guide what further description is needed. The dictionary and
mapping records will identify the versions of standards and terminology used.

In months 3-5, we will assemble harmonized gait and balance packages using the reviewed representation. Each
package will connect numerical data, definitions, provenance, and source records through stable identifiers.
Files will use documented, openly readable formats; Parquet is an option for numerical tables, with linked
metadata files for detailed descriptions. Original values and missingness will be preserved, and any necessary
unit or coordinate transformation will be explicit. Original timestamps, synchronized data, and waveforms
normalized to a gait cycle will remain distinguishable.

Evaluation will account for every selected source field as represented or excluded with a reason. Coverage
will be reported by task, data type, and measurement method, distinguishing available information, information
recovered from source records, and unresolved gaps. Structural checks will assess identifiers, source links,
dimensions, units, timing, and missing-value masks. Unchanged numerical arrays must match exactly after
lossless serialization; tolerances for explicit transformations will be fixed before evaluation from source
precision and documented test cases. Representative analyses will test whether the attached definitions and
inputs support reuse.

By month 5, Aim 1 will provide harmonized datasets, the dictionary and mappings, and an initial coverage and
fidelity report. These materials will establish the reference representation and requirements for Aim 2.
Information recovered retrospectively from analysis code or study records will identify what FreeMoCap should
capture systematically for future recordings.

// Deliberate page break preserves the grant allocation.
#pagebreak()
= Research Strategy Continued
=== Aim 2 Implementing metadata capture and reusable exports

In months 5-9, we will incorporate the Aim 1 requirements into FreeMoCap's processing and export workflow. The
architecture will associate recordings and derived measurements with versioned metadata records, retaining
relevant information as data move through processing stages. Available software versions, pose-estimation
settings, and processing parameters will be captured from the supported workflow. Measurement definitions and
calculation settings will be linked to the outputs they describe. Metadata recovered during Aim 1 will guide
which information needs persistent storage.

Researchers will provide study context that software cannot infer, such as task conditions and protocol
descriptions, through a documented recording or study manifest. The exporter will combine this context with
stored processing metadata and produce the harmonized numerical and metadata files. Checks will identify
required fields, inconsistent descriptions, and unsupported data types. An export report will describe
supported uses and unresolved gaps. Older recordings with missing provenance will retain those gaps unless the
information can be recovered from a documented source.

In months 8-10, we will compare exports with the Aim 1 reference packages across the supported gait and
balance tasks and processing methods. Automated checks will assess numerical fidelity, identifiers, units,
timing, measurement definitions, and preservation of provenance. We will document discrepancies and
investigate unexplained changes before release. Constructed test cases will check metadata capture and
propagation, researcher-supplied context, and the handling of missing essential fields or incompatible
definitions. This evaluation will distinguish file validity from sufficient documentation for a particular
analysis.

Worked examples will reproduce selected gait and balance analyses from exported data using documented
environments and instructions. The PI will run these examples in a clean environment and compare results with
the native analyses using predefined tolerances. The mentor will review representative exports, instructions,
and results for clarity and consistency with measurement definitions. A query example will demonstrate
selecting records by task and measurement descriptors while retaining method distinctions. Questions and
discrepancies will be logged and used to revise the exporter and documentation.

=== Rigor and feasibility

Evaluation results will be descriptive and reported by task and measurement method, with shared participant
and trial identities retained. Versioned source files, mappings, transformation parameters, and software
environments will support reproducibility. The PI, Aaron T. Cherian, will lead harmonization, metadata
architecture, export implementation, evaluation, and DAPR coordination. Jonathan Samir Matthis, PhD, President
and CEO of the FreeMoCap Foundation, will serve as mentor, reviewing scientific assumptions, mapping
decisions, software design, and evaluation findings. Monthly mentoring reviews and checkpoints at months 3, 6,
9, and 12 will track progress.

The initial release will support defined FreeMoCap versions, data types, and metadata requirements established
from the validation datasets. Tested integration changes and a documented export interface will be released
and submitted through FreeMoCap's normal software review process. The supported exporter will remain runnable
from the archived release if inclusion in a general application release takes longer. Optional fields and
graphical interface enhancements may be deferred to protect the core metadata and export functionality.

=== Limitations and alternatives

Missing source information will remain explicit, with supported uses specified accordingly. A shared
representation will preserve meaningful differences between pose estimators and anatomical models. Evaluation
within one validation study will establish performance for its supported data; transfer to independent cohorts
and sites will require later assessment. DAPR consultation will guide terminology and receiving requirements,
and unresolved terms will retain local definitions. If a central ingestion interface is unavailable, we will
provide versioned packages, mappings, and a documented handoff. Clinical validity remains a question for the
relevant measurement and population.

// Deliberate page break preserves the grant allocation.
#pagebreak()
= Dissemination Sharing and Future Research Plan

The project will release harmonized gait and balance datasets, a data dictionary and terminology mappings,
reusable FreeMoCap export software, and an evaluation report. Documentation will explain the supported inputs,
metadata captured and stored during processing, study context supplied by the researcher, and known
limitations. Worked examples will show how to prepare an export, inspect measurement definitions, select
relevant records, and reproduce representative analyses.

By month 10, we will prepare a release candidate for DAPR review. By the end of the award, permitted data,
metadata, code, and evaluation materials will be archived in an established repository such as Zenodo, with
persistent identifiers and source attribution. GitHub will support development and issue reporting. Source
licenses will be preserved, and software incorporated into FreeMoCap will follow its applicable licensing
requirements. Scientific data will be shared by publication or, for other findings, by the award's end,
consistent with the Data Management and Sharing Plan.

A short tutorial and an offered DAPR presentation will demonstrate the export and its use with the harmonized
datasets. We will submit the integration changes for review through the FreeMoCap project's normal
contribution process and provide a documented way to run the supported export independently of a particular
application release. Feedback received through demonstrations and repository issues will inform future
improvements. Archived releases and versioned documentation will preserve the pilot's results as the software
evolves.

We plan to submit at least one peer-reviewed methods or research-software manuscript describing the
representation and its evaluation. The paper will address the metadata needed to interpret gait and balance
time series, how existing standards and DAPR terms cover those needs, and how metadata capture and export
preserve that information for reuse. During the award, we will assemble results and a manuscript outline and
identify a suitable journal. The anticipated submission window is the year following completion, allowing
evaluation findings and coauthor review to shape the paper. Submission during the funded year and journal
acceptance are not completion milestones.

The pilot will inform a larger study of movement-data sharing across rehabilitation cohorts and acquisition
settings. In the latter half of the award, we plan to discuss mechanism fit with NICHD/NCMRR, identify
potential clinical-research collaborators, and prepare follow-on specific aims. An NIH R21 or a mechanism
recommended by program staff is the anticipated route. We will target an appropriate application cycle in the
year after completion, subject to eligibility, an active funding opportunity, and partner readiness. The
pilot's coverage results and documented metadata gaps will define the next research questions.

The PI will coordinate the six-month progress report, final scientific and expenditure reports, and required
annual follow-up reporting. Records will distinguish completed outputs from planned submissions and proposed
mappings from terms accepted by DAPR. The final report will identify the harmonized datasets, supported
exports, evaluation results, and remaining work needed for broader adoption.
]

#show: grant
#body
