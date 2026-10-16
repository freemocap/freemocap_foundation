// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Specific Aims

#project-title

Movement measurements are central to understanding walking and balance, yet their reuse across studies is limited by differences in data organization and measurement definitions. A variable called knee angle may reflect different landmarks, segment axes, or rotation sequences. Likewise, a trajectory may represent a surface marker, an estimated joint center, or a pose-estimation landmark. Pooling these measurements without their context can obscure physiological differences or mistake measurement differences for biological variation. Accessible systems such as FreeMoCap increase opportunities to collect movement data, making interoperable outputs and explicit provenance increasingly important.

FreeMoCap is a free and open-source markerless motion capture system that produces three-dimensional full-body kinematic data from consumer cameras @matthisFreeMoCapFreeOpen2026, with over 10,000 GitHub stars and at least 15,000 users across 153 countries. Published applications span reaching and grasping biomechanics @mazroueiCatchingSmallBalls2026, gait analysis @nunez-lisboaUnderstandingGaitAlterations2024a, and robotic exoskeleton design and verification @obukhovHybridVerificationMethod2026. Independent studies have evaluated FreeMoCap against marker-based motion capture for selected tasks and outcomes @dariciLowcostMarkerlessMotion2026 @minogueValidationFreetoUseMarkerless2025.

This breadth of use creates an opportunity to make harmonized outputs available to researchers at the point of export. Our validation work compared three pose-estimation backends against simultaneous marker-based measurements as unimpaired adults performed treadmill gait and the CTSIB-M balance test @cherianOpensourceDevelopmentValidation2026. Agreement depended on the estimator, the task, and the outcome; backends that performed well for gait did not necessarily perform best for balance. If validity is conditional on how a measurement was produced, those conditions must travel with the data.

The objective of this Data STACHE pilot is to harmonize existing gait and balance data with the DAPR framework and incorporate that harmonization into a reusable FreeMoCap export. We will work with the Resource Core to map relevant information to existing terminology and identify metadata needs for movement time series. Existing resources, including Motion-BIDS, will inform the representation and organization of the data. Harmonization of the validation datasets will establish the requirements for software that other researchers can use with supported FreeMoCap recordings.

*Aim 1 Harmonize existing FreeMoCap gait and balance validation datasets.* We will inventory the study's movement measurements and the information needed to interpret them, including task context, measurement definitions, and acquisition and processing provenance, along with context fields that clinical recordings will require. With DAPR consultation, we will establish a data dictionary and terminology mappings, draw on applicable standards, and document unresolved metadata needs. We will assemble harmonized datasets and evaluate preservation of numerical values and measurement meaning. The outcome will be documented gait and balance data packages that establish the representation and metadata requirements for the export.

*Aim 2 Build the harmonized representation into a reusable FreeMoCap export.* We will implement the architecture needed to capture and retain relevant metadata during processing, connect researcher-supplied study context to recordings, and export numerical data with their definitions and provenance. Using the Aim 1 datasets as a reference, we will evaluate exports across the supported tasks and processing methods, check handling of missing metadata, and demonstrate representative reuse. The outcome will be tested export software and documentation that enable other researchers to prepare DAPR-aligned outputs from supported FreeMoCap recordings.

Within 12 months, the pilot will deliver harmonized gait and balance datasets, reviewed mappings, the export capability, and an evaluation report. Because the export is part of free, open-source software, any lab using FreeMoCap, including rehabilitation and clinical groups, can produce DAPR-aligned data from its own recordings. Findings will inform DAPR's handling of movement time series and lay the groundwork for a methods manuscript and a follow-on study in rehabilitation cohorts.

// Deliberate page break preserves the grant allocation.
#pagebreak()


= Research Strategy
== Significance and Preliminary Work

Biomechanical measurements can  vary depending on the models and assumptions used to derive them. For example, in gait, anthropometric model selection can alter estimated mediolateral and vertical center-of-mass motion @catenaDoesAnthropometricModel2017. In a 2025 ISB community consultation, 46% of respondents identified insufficient methodological detail as the biggest obstacle to comparing joint-motion data across research groups @DataSharingKinematic.  Preserving these details alongside numerical outputs would help researchers assess which measurements are suitable for reuse and comparison.

FreeMoCap makes quantitative movement measurements accessible through consumer cameras and free, open-source software @matthisFreeMoCapFreeOpen2026. Its use across research settings creates an opportunity to improve how movement data are documented and shared. For rehabilitation research, reuse requires information about the protocol, measurement definitions, and processing methods. The same quantity can be stored in non-equivalent forms, and systems differ in how much processing precedes output @jeungMotionBIDSExtensionBrain2024; a familiar variable name does not establish comparability.

Our gait and balance validation compares FreeMoCap outputs from MediaPipe, RTMPose, and ViTPose with Qualisys marker-based measurements @cherianOpensourceDevelopmentValidation2026. @fig-gait-validation shows estimator-dependent differences in sagittal gait kinematics, and across the full study, the backend that performed best for gait was not necessarily best for standing balance. Developing this validation workflow has also required us to specify anatomical definitions and joint-angle conventions that are not conveyed by the resulting numerical arrays. This experience provides a practical basis for identifying the metadata that should accompany shared movement data and for evaluating whether harmonized exports preserve that information. 

DAPR's development priorities include infrastructure for gait time series @DAPRFAQ. Motion-BIDS organizes raw motion time series and describes their reference frames, but it leaves derived data such as joint angles unstandardized and does not prescribe anatomical nomenclature or landmark definitions @jeungMotionBIDSExtensionBrain2024. Those details determine how joint angles and center-of-mass estimates should be interpreted, and they are what this pilot adds. Harmonizing the existing data will establish metadata requirements; incorporating them into FreeMoCap will help other researchers retain that information during processing and export.

#block[
  #show figure.caption: set text(size: 10pt)
  #show figure.caption: set par(leading: 1.5pt, spacing: 0pt)
  #figure(
    image("../figs/main_fig.png", width: 70%), gap: 5pt,
    caption: [*Existing FreeMoCap gait validation.* Left: example reconstructions from three pose-estimation backends. Right: sagittal hip, knee, and ankle kinematics across five treadmill speeds (0.5-2.5 m/s), with Qualisys as the gray reference. Lower rows show statistical parametric mapping (SPM) t-statistics for comparisons with the reference. These comparisons motivate preserving tracking methods, measurement definitions, and processing history.],
  ) <fig-gait-validation>
]

== Approach
=== Study Design and Existing Data

The project will use the existing FreeMoCap validation release, comprising six participants and 24 treadmill gait and standing balance trials, with aligned trajectories from MediaPipe, RTMPose, ViTPose, and Qualisys @cherianFreeMoCapValidationDataset2026. Participants were unimpaired adults, a deliberate choice for a first harmonization effort. Treadmill walking at controlled speeds and the CTSIB-M are standard in rehabilitation assessment, and the slowest speeds overlap those common in clinical populations. Because each trial was measured simultaneously by three pose-estimation backends and a marker-based reference, differences between measurement methods can be separated from differences between people; in pooled clinical data, the two are confounded unless the method is recorded with the data. The dictionary will also include rehabilitation context fields, such as assistive device, orthosis or prosthesis, handrail or harness use, and affected side, recorded as not applicable for this cohort so the export can carry them for clinical recordings.

The validation study provides both shared movements observed through different measurement methods and distinct gait and balance task contexts. This combination allows us to evaluate whether a common representation preserves differences among methods while describing task-specific information consistently. Existing analysis code and configuration records will provide reference calculations and help identify metadata that FreeMoCap should retain systematically for future recordings.

=== Aim 1: Harmonize Existing Gait and Balance Validation Datasets

In months 1-3, we will inventory the selected data and source records, document versions and permissions, and define representative reuse analyses. The dictionary will cover study and coded participant identifiers, sessions and trials, task conditions, measurement definitions, units, timing, coordinate frames, and acquisition and processing provenance. We will distinguish information available from the software workflow from context supplied through protocol documentation, and specify required and optional fields for each supported data type. Missing information will remain explicit.

Metadata requirements will reflect the measurements being shared. Joint-angle records will describe segment definitions, anatomical axes, sign conventions, and the rotation sequence or projection method, referencing applicable ISB recommendations and documenting the conventions actually used @wuISBRecommendationDefinitions2002. For center-of-mass estimates, we will identify the anthropometric model and implemented parameters, including segment definitions, mass fractions, and relative segment COM locations @winterBiomechanicsMotorControl2009. Other records will identify the pose estimator, model and software versions, filtering, interpolation, and analysis intervals. These examples will guide a common metadata core with additional fields for particular measurements. Definitions and parameters will be machine-readable and linked to the relevant numerical outputs. For example, a knee flexion record will carry its segment definitions, rotation sequence, sign convention, and pose estimator, mapped to the corresponding DAPR term or proposed as a new one.

With the DAPR Resource Core, we will review mappings to DAPR and established terminology, including NINDS or OMOP concepts where their definitions apply. Each mapping will retain the source definition, target identifier and version, and any transformation. Exact matches, matches requiring transformation, related concepts, and unresolved mappings will remain distinguishable. The PI and mentor will review mappings used in the demonstrations; missing concepts will be proposed to DAPR with definitions and examples. Motion-BIDS will inform applicable conventions for signals, channels, reference frames, and data organization, with versions, adopted conventions, and additional metadata documented explicitly.

Consultation with the Resource Core will begin by confirming the initial scope and receiving requirements. Intermediate review will address the dictionary, mapping decisions, and representative exports; final review will address the completed packages, remaining limitations, and handoff or import procedures.

In months 3-5, we will assemble harmonized gait and balance packages that link numerical data, definitions, provenance, and source records through stable identifiers. Files will use documented, openly readable formats; Numerical tables will use Parquet, the FreeMoCap 2.0 output format, with linked metadata files. Original values and missingness will be preserved, and any unit or coordinate transformation will be explicit. Original timestamps, synchronized data, and waveforms normalized to a gait cycle will remain distinguishable.

Evaluation will account for each selected source field as represented or excluded with a reason. Coverage will be reported by task, data type, and measurement method, distinguishing available information, recovered information, and unresolved gaps.  Representative analyses will test whether the attached definitions and inputs support reuse. By month 5, the packages, dictionary, mappings, and initial coverage and fidelity report will establish the reference representation for Aim 2.

= Research Strategy Continued
=== Aim 2: Build the Harmonized Representation into a Reusable FreeMoCap Export

In months 5-9, we will incorporate the Aim 1 requirements into FreeMoCap's processing and export workflow. The exporter targets FreeMoCap 2.0, whose pipeline separates raw, processed-data, and export zones, writes Parquet outputs, and saves intermediate 2D detections and raw 3D reconstructions so each stage can be restarted independently. A restartable stage must already record its inputs and parameters, so provenance capture extends the existing design rather than adding a parallel system. Recordings and derived measurements will be associated with versioned metadata records that retain relevant information through processing stages. Available software versions, pose-estimation settings, and processing parameters will be captured from supported workflows; measurement definitions and calculation settings will be linked to their outputs. Information recovered retrospectively in Aim 1 will identify what future recordings need to store systematically.

Researchers will supply context that software cannot infer, such as task conditions and protocol descriptions, through a documented recording or study manifest. The exporter will combine this context with stored processing metadata and produce harmonized numerical and metadata files. Checks will identify missing required fields, inconsistent descriptions, and unsupported data types. An export report will describe supported uses and unresolved gaps. 

In months 8-10, we will compare exports with the Aim 1 reference packages across supported gait and balance tasks and processing methods. Automated checks will assess numerical fidelity, identifiers, units, timing, measurement definitions, and provenance. Constructed test cases will evaluate metadata capture and propagation, researcher-supplied context, and handling of missing essential fields or incompatible definitions. Discrepancies will be investigated before release. Evaluation will distinguish file validity from sufficient documentation for a particular analysis.

Worked examples will reproduce selected analyses from exported data using documented environments and instructions. The PI will run them in a clean environment and compare results with native analyses using predefined tolerances. The mentor will review representative exports, instructions, and results for clarity and consistency with measurement definitions. Findings will guide revisions to the exporter and documentation, with release materials completed in months 10-12.

=== Rigor, Feasibility, and Responsibilities

Results will be descriptive and reported by task and measurement method, retaining shared participant and trial identities. Versioned source files, mappings, transformation parameters, and software environments will support reproducibility. Aaron T. Cherian will lead harmonization, metadata architecture, implementation, evaluation, and DAPR coordination. Jonathan Samir Matthis, PhD, President and CEO of the FreeMoCap Foundation, will provide mentorship and review of scientific assumptions, mappings, software design, and findings. Monthly meetings and checkpoints at months 3, 6, 9, and 12 will track progress.

The initial release will support defined FreeMoCap versions, data types, and metadata requirements established from the validation datasets. The exporter will be merged into FreeMoCap through standard code review and released as a standalone archived package. Optional metadata and graphical interface enhancements may be deferred to protect core functionality.

=== Limitations and Alternatives

Evaluation within one validation study will establish performance for its supported data; transfer to independent cohorts and sites will require later assessment. Data come from unimpaired adults; estimator performance and required context in clinical populations will be assessed in follow-on work. Missing information and meaningful differences among pose estimators and anatomical models will remain visible. DAPR consultation will guide terminology and receiving requirements, with local definitions retained for unresolved terms. If central ingestion is unavailable, we will provide versioned packages, mappings, and a documented handoff. Harmonized representation does not establish clinical validity or make different measurements interchangeable.
// Deliberate page break preserves the grant allocation.
#pagebreak()
= Dissemination, Sharing, and Future Research Plan

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
datasets. The exporter will ship in a FreeMoCap release and as a standalone archived package that runs independently of any particular application release. Feedback received through demonstrations and repository issues will inform future
improvements. Archived releases and versioned documentation will preserve the pilot's results as the software
evolves.

We plan to submit at least one peer-reviewed methods or research-software manuscript describing the
representation and its evaluation. The paper will address the metadata needed to interpret gait and balance
time series, how existing standards and DAPR terms cover those needs, and how metadata capture and export
preserve that information for reuse. We will prepare the manuscript outline in months 10–11 and submit after the award ends.

In the second half of the award, we will consult NCMRR program staff, identify clinical-research collaborators through DAPR and the other Medical Rehabilitation Research Resource Centers, and draft follow-on specific aims. We anticipate an NIH R21, or a mechanism program staff recommend, applying the export to rehabilitation cohorts and testing whether estimator performance and metadata requirements differ in clinical populations. The pilot's coverage results and documented metadata gaps will define its questions.

The PI will coordinate the six-month progress report, final scientific and expenditure reports, and required
annual follow-up reporting. The final report will identify the harmonized datasets, supported
exports, evaluation results, and remaining work needed for broader adoption.
]

#show: grant
#body
