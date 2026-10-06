// =============================================================================
// DATA MANAGEMENT AND SHARING PLAN — 2 pages max (PAPPG II.D.2.i(ii))
//
// As of PAPPG 24-1 Supplement 2 (eff. Jan 22, 2026), the FINAL plan must be
// created in the DMSP tool on Research.gov — it is no longer a free-uploaded
// PDF. Use this file to DRAFT the content, then paste it into the tool.
//
// Required substance: recipients must share all data supporting NSF-funded
// publications at time of publication; exceptions must be justified here.
// Cover: data types produced, standards/metadata, access & sharing (incl.
// privacy/confidentiality), re-use/redistribution, archiving/preservation.
// For FreeMoCap the main research products are the software itself,
// validation datasets, and benchmark data — say how each is shared.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT, note

#show: nsf-doc.with(page-limit: 2, draft: DRAFT, title: [Data Management and Sharing Plan])

= Types of Data and Products

Track 1 produces five classes of research products: (1) open-source software,
including the existing FreeMoCap product, its component repositories, and the
governance, documentation, and contributor-onboarding artifacts developed
during the project; (2) ecosystem-discovery outputs — stakeholder findings,
user and contributor barrier maps, and requirements documents; (3) validation
and benchmark datasets, including reference recordings and cross-version
regression baselines, that support publications; (4) educational and training
materials developed in community pilots; and (5) minimal operational
telemetry describing aggregate software usage.

= Standards and Metadata

Software releases follow semantic versioning with tagged, documented
releases. FreeMoCap recordings follow a documented, versioned folder
structure that separates raw video, de-identified annotated video, and
derived kinematic data; this taxonomy is a project standard, and it doubles
as the mechanism by which contributors de-identify shared data (see Access
and Sharing). In parallel with the security scoping described in the Project
Description, the project will define provenance metadata sufficient to trace
any produced dataset to the software versions, pose-estimation models, and
processing parameters that generated it. Where community standards exist for
new data types, they will be adopted; where they do not, formats and schemas
will be documented and versioned publicly.

= Access, Sharing, and Privacy

*Privacy by architecture.* FreeMoCap is a standalone desktop application in
which all processing occurs on the user's own computer. Recordings of human
participants — video of identifiable bodies foremost among them — never
leave the user's machine, and the workflow is operable in fully air-gapped
settings. The ecosystem shares software, derived kinematic data, and
benchmarks; it is not a repository of user biospecimens.

*Community-contributed data.* Community members may voluntarily submit
recordings for demos, showcases, and troubleshooting through a published
media-sharing form that implements tiered, per-submission consent along two
axes: data identifiability (raw video; de-identified annotated video;
non-identifying 2D/3D kinematics) and sharing context (full public; limited
public, e.g. the Discord community or conference presentations; internal use
by the development team). The form includes self-service de-identification
instructions, credit preferences, and a privacy notice describing each data
type. Submissions are used and redistributed only within the selected tiers.

*Telemetry and operational data.* Telemetry consists of basic usage events
keyed to a random, non-identifying per-installation UUID and is used to
produce aggregate usage statistics. Raw telemetry logs are retained
internally and are not shared.

*Planned account systems.* As the ecosystem develops credentialing and
training-recording capabilities, user accounts will use standard OAuth2
authentication on Google Cloud Platform infrastructure, with minimal data
collection, published disclosure, and user-facing controls. Payment
processing is delegated to a commercial platform (Shopify); payment
information is never handled by Foundation systems.

*Exceptions to immediate sharing.* Two classes of data will not be shared
publicly, per the justification requirement of this plan: raw interview
recordings and transcripts from ecosystem-discovery activities (human
participant confidentiality; only aggregated findings will be published),
and raw telemetry logs (personal privacy; only aggregates will be published).

= Re-use and Redistribution

Software is licensed under the AGPL-3.0, so that improvements and extensions
return to the community under the same terms. Benchmark and validation
datasets will be released under permissive terms (CC-BY 4.0) to maximize
re-use with attribution. Educational and training materials will be released
under CC-BY 4.0. Governance and documentation artifacts are published in
public repositories. Derivative works of community-contributed media are
governed by the consent tier selected by the contributor at submission.

= Archiving and Preservation

Tagged software releases are archived through the Zenodo–GitHub integration,
yielding a citable DOI per release, so that publications can reference
immutable, permanently available versions. Datasets supporting publications
will be deposited in a DOI-issuing public repository at the time of
publication, per NSF public access requirements. Documentation, governance
artifacts, and educational materials are version-controlled in public
repositories. The ecosystem's distributed development model provides
additional resilience: complete copies of the product exist across many
independent stakeholders and hosting locations.

#note[DEFAULTS PENDING JON'S CONFIRMATION: Zenodo as the named DOI archive;
CC-BY 4.0 for datasets + education materials. Veto or swap freely.]
