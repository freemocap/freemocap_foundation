// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Specific Aims

#project-title

Movement measurements are central to understanding walking and balance, yet their reuse across studies is limited by differences in data organization and measurement definitions. A variable called knee angle may reflect different landmarks, segment axes, or rotation sequences. Likewise, a trajectory may represent a surface marker, an estimated joint center, or a pose-estimation landmark. Pooling these measurements without their context can obscure physiological differences or mistake measurement differences for biological variation. Accessible systems such as FreeMoCap increase opportunities to collect movement data, making interoperable outputs and explicit provenance increasingly important.

FreeMoCap is a free and open-source markerless motion capture system that produces three-dimensional full-body kinematic data from consumer cameras @matthisFreeMoCapFreeOpen2026, with over 10,000 GitHub stars and at least 15,000 users across 153 countries. Published applications span reaching and grasping biomechanics @mazroueiCatchingSmallBalls2026, gait analysis @nunez-lisboaUnderstandingGaitAlterations2024a, and robotic exoskeleton design and verification @obukhovHybridVerificationMethod2026. Independent studies have evaluated FreeMoCap against marker-based motion capture for selected tasks and outcomes @dariciLowcostMarkerlessMotion2026 @minogueValidationFreetoUseMarkerless2025.

This breadth of use creates an opportunity to make harmonized outputs available to researchers at the point of export. Our own validation work has characterized gait and balance measurements across multiple pose-estimation backends through comparison with marker-based measurements @cherianOpensourceDevelopmentValidation2026. This experience highlights the importance of preserving measurement definitions and processing history alongside numerical data, and provides existing datasets and analyses with which to develop and evaluate a shared representation.

The objective of this Data STACHE pilot is to harmonize existing gait and balance data with the DAPR framework and incorporate that harmonization into a reusable FreeMoCap export. We will work with the Resource Core to map relevant information to existing terminology and identify metadata needs for movement time series. Existing resources, including Motion-BIDS, will inform the representation and organization of the data. \[3-6\] Harmonization of the validation datasets will establish the requirements for software that other researchers can use with supported FreeMoCap recordings.

*Aim 1 Harmonize existing FreeMoCap gait and balance validation datasets.* We will inventory the study's movement measurements and the information needed to interpret them, including task context, measurement definitions, and acquisition and processing provenance. With DAPR consultation, we will establish a data dictionary and terminology mappings, draw on applicable standards, and document unresolved metadata needs. We will assemble harmonized datasets and evaluate preservation of numerical values and measurement meaning. The outcome will be documented gait and balance data packages that establish the representation and metadata requirements for the export.

*Aim 2 Build the harmonized representation into a reusable FreeMoCap export.* We will implement the architecture needed to capture and retain relevant metadata during processing, connect researcher-supplied study context to recordings, and export numerical data with their definitions and provenance. Using the Aim 1 datasets as a reference, we will evaluate exports across the supported tasks and processing methods, check handling of missing metadata, and demonstrate representative reuse. The outcome will be tested export software and documentation that enable other researchers to prepare DAPR-aligned outputs from supported FreeMoCap recordings.

Within 12 months, the pilot will deliver harmonized gait and balance datasets, reviewed mappings, the export capability, and an evaluation report. Making this capability available through free and open-source software will establish a practical foundation for future multi-study harmonization. Findings will inform DAPR's work with movement time series and support plans for a methods manuscript and follow-on research.

// Deliberate page break preserves the grant allocation.
#pagebreak()


= Research Strategy
== Significance and Preliminary Work

FreeMoCap makes quantitative movement measurements accessible through consumer cameras and free, open-source software @matthisFreeMoCapFreeOpen2026.  Its use across research settings creates an opportunity to improve how movement data are documented and shared. For rehabilitation research, reuse requires information about the protocol, measurement definitions, and processing methods; familiar variable names alone do not establish comparability @jeungMotionBIDSExtensionBrain2024. 

Analysis choices can affect the measurements being shared. For example, in gait, anthropometric model selection can alter estimated mediolateral and vertical center-of-mass motion @catenaDoesAnthropometricModel2017. In a 2025 ISB community consultation, 46% of respondents identified insufficient methodological detail as the biggest obstacle to comparing joint-motion data across research groups @DataSharingKinematic.  Preserving these details alongside numerical outputs would help researchers assess which measurements are suitable for reuse and comparison.

Our gait and balance validation compares FreeMoCap outputs from MediaPipe, RTMPose, and ViTPose with Qualisys marker-based measurements @cherianOpensourceDevelopmentValidation2026. The gait comparisons in @fig-gait-validation illustrate how pose-estimation choices can affect derived movement measurements. Developing this validation workflow has also required us to specify anatomical definitions and joint-angle conventions that are not conveyed by the resulting numerical arrays. This experience provides a practical basis for identifying the metadata that should accompany shared movement data and for evaluating whether harmonized exports preserve that information. 

DAPR's development priorities include infrastructure for gait time series. \[CITE: DAPR\] This pilot will connect FreeMoCap outputs with DAPR's terminology and mapping resources, informed by applicable Motion-BIDS conventions @jeungMotionBIDSExtensionBrain2024. Harmonizing the existing data will establish metadata requirements; incorporating them into FreeMoCap will help other researchers retain that information during processing and export.

#block[
  #show figure.caption: set text(size: 10pt)
  #show figure.caption: set par(leading: 1.5pt, spacing: 0pt)
  #figure(
    image("../figs/main_fig.png", width: 70%), gap: 5pt,
    caption: [*Existing FreeMoCap gait validation.* Left: example reconstructions from three pose-estimation backends. Right: sagittal hip, knee, and ankle kinematics across five treadmill speeds (0.5-2.5 m/s), with Qualisys as the gray reference. Lower rows show statistical parametric mapping (SPM) t-statistics for comparisons with the reference. These comparisons motivate preserving tracking methods, measurement definitions, and processing history. \[CITE: Validation\]],
  ) <fig-gait-validation>
]

== Approach
=== Study Design and Existing Data

The project will use the existing FreeMoCap validation release, comprising six participants and 24 treadmill gait and standing balance trials, with aligned trajectories from MediaPipe, RTMPose, ViTPose, and Qualisys. Their different tasks and processing methods will support development and evaluation of a common representation; the reusable export will provide the route to future multi-study use. The scope includes reconstructed trajectories, available kinematic time series and summaries, and associated metadata. No new recruitment, video reconstruction, or pose-model training is required.

The validation study provides both shared movements observed through different measurement methods and distinct gait and balance task contexts. This combination allows us to evaluate whether a common representation preserves differences among methods while describing task-specific information consistently. Existing analysis code and configuration records will provide reference calculations and help identify metadata that FreeMoCap should retain systematically for future recordings.

=== Aim 1: Harmonize Existing Gait and Balance Validation Datasets

In months 1-3, we will inventory the selected data and source records, document versions and permissions, and define representative reuse analyses. The dictionary will cover study and coded participant identifiers, sessions and trials, task conditions, measurement definitions, units, timing, coordinate frames, and acquisition and processing provenance. We will distinguish information available from the software workflow from context supplied through study records, and specify required and optional fields for each supported data type. Missing information will remain explicit.

Metadata requirements will reflect the measurements being shared. Joint-angle records will describe segment definitions, anatomical axes, sign conventions, and the rotation sequence or projection method, referencing applicable ISB recommendations and documenting the conventions actually used @wuISBRecommendationDefinitions2002. For center-of-mass estimates, we will identify the anthropometric model and implemented parameters, including segment definitions, mass fractions, and relative segment COM locations @winterBiomechanicsMotorControl2009. Other records will identify the pose estimator, model and software versions, filtering, interpolation, and analysis intervals. These examples will guide a common metadata core with additional fields for particular measurements. Definitions and parameters will be machine-readable and linked to the relevant numerical outputs.

With the DAPR Resource Core, we will review mappings to DAPR and established terminology, including NINDS or OMOP concepts where their definitions apply. Each mapping will retain the source definition, target identifier and version, and any transformation. Exact matches, matches requiring transformation, related concepts, and unresolved mappings will remain distinguishable. The PI and mentor will review mappings used in the demonstrations; missing concepts will be proposed to DAPR with definitions and examples. Motion-BIDS will inform applicable conventions for signals, channels, reference frames, and data organization, with versions, adopted conventions, and additional metadata documented explicitly.

Consultation with the Resource Core will begin by confirming the initial scope and receiving requirements. Intermediate review will address the dictionary, mapping decisions, and representative exports; final review will address the completed packages, remaining limitations, and handoff or import procedures. Meeting dates and the extent of Core involvement will be agreed with DAPR.

In months 3-5, we will assemble harmonized gait and balance packages that link numerical data, definitions, provenance, and source records through stable identifiers. Files will use documented, openly readable formats; Parquet is an option for numerical tables with linked metadata files. Original values and missingness will be preserved, and any unit or coordinate transformation will be explicit. Original timestamps, synchronized data, and waveforms normalized to a gait cycle will remain distinguishable.

Evaluation will account for each selected source field as represented or excluded with a reason. Coverage will be reported by task, data type, and measurement method, distinguishing available information, recovered information, and unresolved gaps. Checks will assess identifiers, source links, dimensions, units, timing, and missing-value masks. Unchanged arrays must match exactly after lossless serialization; tolerances for explicit transformations will be fixed before evaluation using source precision and documented test cases. Representative analyses will test whether the attached definitions and inputs support reuse. By month 5, the packages, dictionary, mappings, and initial coverage and fidelity report will establish the reference representation for Aim 2.

= Research Strategy Continued
=== Aim 2: Build the Harmonized Representation into a Reusable FreeMoCap Export

In months 5-9, we will incorporate the Aim 1 requirements into FreeMoCap's processing and export workflow. Recordings and derived measurements will be associated with versioned metadata records that retain relevant information through processing stages. Available software versions, pose-estimation settings, and processing parameters will be captured from supported workflows; measurement definitions and calculation settings will be linked to their outputs. Information recovered retrospectively in Aim 1 will identify what future recordings need to store systematically.

Researchers will supply context that software cannot infer, such as task conditions and protocol descriptions, through a documented recording or study manifest. The exporter will combine this context with stored processing metadata and produce harmonized numerical and metadata files. Checks will identify missing required fields, inconsistent descriptions, and unsupported data types. An export report will describe supported uses and unresolved gaps. Older recordings will retain missing provenance unless it can be recovered from a documented source.

In months 8-10, we will compare exports with the Aim 1 reference packages across supported gait and balance tasks and processing methods. Automated checks will assess numerical fidelity, identifiers, units, timing, measurement definitions, and provenance. Constructed test cases will evaluate metadata capture and propagation, researcher-supplied context, and handling of missing essential fields or incompatible definitions. Discrepancies will be investigated before release. Evaluation will distinguish file validity from sufficient documentation for a particular analysis.

Worked examples will reproduce selected analyses from exported data using documented environments and instructions. The PI will run them in a clean environment and compare results with native analyses using predefined tolerances. The mentor will review representative exports, instructions, and results for clarity and consistency with measurement definitions. A query example will select records by task and measurement descriptors while retaining method distinctions. Findings will guide revisions to the exporter and documentation, with release materials completed in months 10-12.

=== Rigor, Feasibility, and Responsibilities

Results will be descriptive and reported by task and measurement method, retaining shared participant and trial identities. Versioned source files, mappings, transformation parameters, and software environments will support reproducibility. Aaron T. Cherian will lead harmonization, metadata architecture, implementation, evaluation, and DAPR coordination. Jonathan Samir Matthis, PhD, President and CEO of the FreeMoCap Foundation, will provide mentorship and review of scientific assumptions, mappings, software design, and findings. Monthly meetings and checkpoints at months 3, 6, 9, and 12 will track progress.

The initial release will support defined FreeMoCap versions, data types, and metadata requirements established from the validation datasets. Tested changes will be submitted through FreeMoCap's normal review process. A documented exporter will remain runnable from an archived release if inclusion in the general application takes longer. Optional metadata and graphical interface enhancements may be deferred to protect core functionality.

=== Limitations and Alternatives

Evaluation within one validation study will establish performance for its supported data; transfer to independent cohorts and sites will require later assessment. Missing information and meaningful differences among pose estimators and anatomical models will remain visible. DAPR consultation will guide terminology and receiving requirements, with local definitions retained for unresolved terms. If central ingestion is unavailable, we will provide versioned packages, mappings, and a documented handoff. Harmonized representation does not establish clinical validity or make different measurements interchangeable.
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
