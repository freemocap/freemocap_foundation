// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Resources
== Institutional Environment and Infrastructure

The FreeMoCap Foundation is a nonprofit organization responsible for the development and stewardship of
FreeMoCap, an open-source platform for accessible markerless motion capture. The proposed work will make a
harmonized export capability available for supported FreeMoCap outputs. Familiarity with the software and its
development process provides a practical basis for implementing the workflow and documenting how researchers
can use it.

Aaron T. Cherian, Chief Scientific Officer, is the proposed PI and will carry out data harmonization, metadata
architecture, export implementation, checks, and documentation. His experience with markerless motion capture,
gait and balance analysis, and comparisons among tracking methods will inform metadata selection and
measurement definitions. He will coordinate DAPR consultation, lead evaluation, and develop dissemination and
follow-on research plans. Final PI designation, credentials, and institutional eligibility must be documented
in the application records.

Jonathan Samir Matthis, PhD, President and CEO of the FreeMoCap Foundation, will serve as project mentor. He
will review measurement definitions and mappings, advise on metadata architecture and export design, and
review evaluation results and release documentation. The budget supports the PI and mentor. The PI will run
reproducibility checks in a clean environment; mentor review will identify questions or gaps in the examples
and documentation. The initial release will support defined FreeMoCap versions and data types, the existing
gait and balance datasets, and representative analyses.

Development will use existing computers and the team's repository workflow, with modest funds for storage and
computational evaluation. Existing reconstructed data provide the necessary inputs. The project does not
require new recording equipment, recruitment, or a model-training cluster. Any additional essential
institutional or collaborator resources will be documented explicitly before submission.

== Data and Computational Resources

The data source is the public FreeMoCap validation release and analysis repository. It provides aligned
trajectories from multiple pose-estimation backends and a marker-based reference, together with gait and
balance analysis code. \[2\] The data and existing analyses will support harmonization in Aim 1 and provide
reference packages for evaluating the exporter in Aim 2. Measurements from the same trial will retain their
relationship and method identities. According to the repository, the public release excludes raw videos and
direct participant identifiers; institutional review will separately consider investigator familiarity with
participants.

The gait and balance datasets belong to the same validation study and provide differing task contexts and
measurement types for the pilot. Associated configurations, analysis code, and study records will help recover
available metadata and identify information that FreeMoCap should retain systematically. The final source
inventory will document the release, eligible records, and permissions for use and sharing. Broader
application across independent studies will be enabled by the reusable export and assessed in subsequent work.

The implementation will add persistent metadata records and links through the supported FreeMoCap processing
workflow, using documented, openly readable numerical and metadata formats with example loading and analysis
code. Parquet is an available option for numerical tables, with linked files for detailed metadata and
terminology mappings. Existing analysis code will provide reference calculations where supported. The package
definitions will be independent of any one internal software library so that other researchers can inspect and
use the exported data.

Source files, working copies, metadata, and outputs will be connected through identifiers and checksums.
Computation will focus on conversion, automated checks, and representative analyses using existing hardware
and the budgeted allowance. Code, configurations, dependencies, and relevant source versions will be retained
together. Public releases will be archived in an established repository; restricted working materials, if
approved, will use institutional access controls.

// Deliberate page break preserves the grant allocation.
#pagebreak()
= Resources Continued
== DAPR Resources and Existing Standards

We request Resource Core consultation to review the representation, map the selected study descriptors and
measurements, and identify information that current terminology does not adequately capture. Initial
consultation will address scope and receiving requirements. Intermediate review will examine the dictionary,
mapping decisions, and representative exports. Final review will address study packages, limitations, and
handoff or import procedures. Meeting dates and effort will be agreed with the Core.

DAPR describes a Schema, Dictionary, Thesaurus, and MAPR mapping application. \[6\] Where appropriate, mapping
tools may suggest candidate terms; the team will review definitions, units, and relationships before accepting
a match. Broader or related concepts will remain distinguishable from exact mappings. Terms without an
adequate match will retain clear definitions and be proposed for DAPR review.

Existing resources, including Motion-BIDS, will inform how motion signals, channels, reference frames, and
related metadata are represented. \[3,4\] Applicable conventions will be adopted and the scope of conformance
documented. Additional metadata will remain explicit, with source links and a rationale for its inclusion.
This will allow the export design to draw on established work while responding to the needs identified in the
study inventory and DAPR consultation.

The contribution to DAPR will include harmonized gait and balance datasets, reviewed mappings, a reusable
export workflow, and an evaluation of the information needed for interpretation and reuse. If a central
receiving interface is unavailable during the award, we will provide versioned packages and a documented
handoff. Actual ingestion and acceptance of proposed terms will be recorded when completed.

== Resource Stewardship and Career Development

The PI and mentor will use monthly reviews and quarterly checkpoints to track implementation and evaluation.
Matthis will provide scientific and technical guidance and support the PI's development of manuscript
materials and follow-on research aims. Work with DAPR will develop expertise in rehabilitation terminology,
data standards, and harmonization across studies. The evaluation will inform a methods manuscript and future
research on movement-data sharing across rehabilitation cohorts and settings.

The Foundation will be asked to identify a custodian for archived releases and a contact for corrections. The
proposed support letter describes preservation of release links and discoverable documentation. The metadata
and export integration changes will be submitted for review through the normal FreeMoCap contribution process,
with a documented exporter available for the supported inputs. Archived versions will preserve the pilot's
outputs while later maintenance and expansion follow the project's established processes.
]

#show: grant
#body
