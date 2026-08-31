# DMSP → Research.gov form crosswalk

**Why this file exists.** Per NSF policy notice NSF 26-202 (published 2026-01-22,
implemented as PAPPG 24-1 Supplement 2), the Data Management and Sharing Plan
changed from a PDF upload to a Research.gov webform effective **April 27, 2026**.
There is no upload slot. `data-management-sharing-plan.pdf` remains our source of
record and internal review artifact, but it is **not submitted** — its content is
typed into the webform.

**Do not check** the "a detailed Data Management and Sharing Plan is not needed"
box. That is only for projects producing no data or research products, and it
requires a clear justification.

## Two rules confirmed against official sources

1. **The empty dropdown is expected, not a bug.** The webform is generated from
   the proposal's primary Directorate. Research.gov's own DMSP guidance says PIs
   "either select a predefined title that matches well with the intended data
   category or provide such a title through the 'Add New' mechanism if one is not
   available." Most directorates have not populated their dropdowns yet; TIP is
   one of them. Where a dropdown offers only "Add New," selecting it and entering
   our own value **is** the correct procedure — for Category, and equally for
   Data/Metadata Standard, Data Sharing Location, and any other dropdown that
   comes up empty.

2. **Maximum FOUR categories.** This is a hard cap in the form. Our PDF lists
   five classes of product, so they must be consolidated — which the guidance
   explicitly permits: similar product types may be grouped, and it "does not
   require that each dataset or type of data receive its own entry."

## The consolidation: 5 PDF classes → 4 form categories

Categories 2 and 5 of the PDF (ecosystem-discovery outputs; operational
telemetry) merge into one entry. They are otherwise unrelated, but they share the
identical sharing profile — **raws withheld, aggregates published** — which is
exactly what the Access Policies and Limitations section is asking about, and
that section accepts up to six limitations per category. The other three
categories are fully public and stay clean.

---

## Category 1 — Open-source software and ecosystem artifacts

- **Category:** `Add New` → *Open-source software and ecosystem artifacts*
- **Title:** FreeMoCap software, component repositories, and governance artifacts
- **Description:** The existing FreeMoCap product and its component repositories,
  together with the governance, documentation, and contributor-onboarding
  artifacts developed during the project.
- **Access Limitations:** check **Not Applicable** — fully public.
- **Data/Metadata Standard:** `Add New` → *Semantic versioning with tagged,
  documented releases.*
- **Data Source:** new data collection / produced by the project.
- **Data Sharing Location:** `Add New` → *Public GitHub repositories, with tagged
  releases archived via the Zenodo–GitHub integration.*
  - *Additional Details:* Each tagged release yields a citable DOI, so
    publications can reference immutable, permanently available versions. The
    distributed development model adds resilience: complete copies of the product
    exist across many independent stakeholders and hosting locations.
- **Timeline:** already public; continuously available, updated per release.
- **Availability Period:** indefinite (select the longest option offered).
- **Re-use terms** (put in Additional Details): AGPL-3.0, so improvements and
  extensions return to the community under the same terms.

## Category 2 — Discovery and telemetry data (aggregate release only)

**This is the category carrying both of our non-sharing justifications. NSF
specifically requires justification for anything withheld, so this is the entry
most likely to be scored — get it right.**

- **Category:** `Add New` → *Human-subject discovery data and operational telemetry*
- **Title:** Ecosystem-discovery findings and aggregate usage telemetry
- **Description:** Stakeholder findings, user and contributor barrier maps, and
  requirements documents from Track 1 discovery activities; and basic usage
  events keyed to a random, non-identifying per-installation UUID used to produce
  aggregate usage statistics.
- **Access Limitations:** do **not** check Not Applicable. The TIP dropdown DOES
  have options here (unlike the Category dropdown): Human Data Protection, Legal
  Considerations, National Competitiveness, Natural Resource Protections,
  Resource Limitations, plus Add New.
  Select **Human Data Protection** — it covers both of our exceptions. The
  taxonomy is coarser than the instruction text above the field, which lists
  "legal, privacy, ethical, technical, confidentiality, security, or
  intellectual property concerns"; privacy sits inside Human Data Protection
  rather than having its own bucket.
  Justification text, covering both:
  > Two classes of data will not be shared publicly. Raw interview recordings and
  > transcripts from ecosystem-discovery activities are withheld to protect
  > human-participant confidentiality; only aggregated findings will be
  > published. Raw operational telemetry logs are withheld because event-level
  > records can be re-identifying in aggregate even when keyed to a random,
  > non-identifying per-installation UUID; only aggregate usage statistics will
  > be published.
  Do NOT spend the Add New slot here — the form allows only ONE custom option,
  and it is worth saving for an exception that genuinely has no bucket.
- **Data/Metadata Standard:** `Add New` → *Formats and schemas documented and
  versioned publicly where no community standard exists.*
- **Data Source:** new data collection.
- **Data Sharing Location:** `Add New` → *Public project repositories
  (aggregated findings only).*
- **Timeline:** aggregated findings published as each assessment completes.
- **Availability Period:** indefinite for published aggregates.
- **Re-use terms:** CC-BY 4.0 for published findings.

## Category 3 — Validation and benchmark datasets

- **Category:** `Add New` → *Validation and benchmark datasets*
- **Title:** Validation and benchmark datasets
- **Description:** Reference recordings and cross-version regression baselines
  supporting publications and ongoing benchmarking.
- **Access Limitations:** **Not Applicable** — public. But use Additional Details
  elsewhere in this entry to state the privacy-by-architecture point below.
- **Data/Metadata Standard:** `Add New` → *Documented, versioned folder structure
  separating raw video, de-identified annotated video, and derived kinematic
  data; provenance metadata sufficient to trace any dataset to the software
  versions, pose-estimation models, and processing parameters that generated it.*
- **Data Source:** new data collection.
- **Data Sharing Location:** `Add New` → *DOI-issuing public repository,
  deposited at time of publication per NSF public access requirements.*
- **Timeline:** at time of associated publication.
- **Availability Period:** select the longest offered. **Note the form's own
  warning:** if availability is less than two years after project completion, a
  justification is required. Ours is indefinite, so this should not trigger.
- **Re-use terms:** CC-BY 4.0, to maximize re-use with attribution.

## Category 4 — Educational and training materials

- **Category:** `Add New` → *Educational and training materials*
- **Title:** Educational and training materials
- **Description:** Introductory, intermediate, and developer-facing materials
  developed and piloted with community partners.
- **Access Limitations:** **Not Applicable** — public.
- **Data/Metadata Standard:** `Add New` → *Version-controlled in public
  repositories.*
- **Data Source:** new data collection.
- **Data Sharing Location:** `Add New` → *Public project repositories.*
- **Timeline:** released as developed.
- **Availability Period:** indefinite.
- **Re-use terms:** CC-BY 4.0.

---

## Accountability field (every category)

Each category requires a **Responsible Personnel** selection — a PI or co-PI,
populated from Manage Personnel and Subaward Organizations. Add personnel there
first or the dropdown will be empty too. Jon as PI is the default for all four
unless you want Aaron carrying the validation-datasets entry.

## PDF content with no dedicated field — put in Additional Details

- **Privacy by architecture** — the strongest thing in our plan, and it has no
  home in the form's structure. FreeMoCap is a standalone desktop application;
  all processing occurs on the user's own computer, recordings of identifiable
  bodies never leave the user's machine, and the workflow is operable fully
  air-gapped. The ecosystem shares software, derived kinematic data, and
  benchmarks; it is not a repository of user biospecimens. Put this in
  **Category 3's** Additional Details, where it is most relevant.
- **Community-contributed data** — tiered per-submission consent along two axes
  (identifiability: raw video / de-identified annotated video / non-identifying
  2D-3D kinematics; and sharing context: full public / limited public / internal),
  with self-service de-identification instructions, credit preferences, and a
  privacy notice. Submissions used and redistributed only within the selected
  tier. Goes in **Category 3**.
- **Planned account systems** — OAuth2 on Google Cloud Platform, minimal
  collection, published disclosure, user-facing controls; payment processing
  delegated to Shopify so payment information is never handled by Foundation
  systems. Goes in **Category 2**.

## Before submitting

- The form warns it "may not be used to circumvent the Project Description page
  limit." We are not — nothing here is Project Description content.
- **Save** each category before navigating away; the form has a per-category
  Save button separate from the proposal-level save.
- Use **Preview/Print** to render the assembled plan and read it end to end. That
  rendering is what reviewers see, and it is the first point at which the form's
  output reads as a document.
- Diff the preview against `data-management-sharing-plan.pdf`. Confirm both
  non-sharing justifications in Category 2 survived, and that the
  privacy-by-architecture paragraph landed somewhere.

## Sources

- [Research.gov DMSP tool guidance](https://www.research.gov/research-web/content/DMSP)
- [PAPPG 24-1 Supplement 2 / NSF 26-202 policy notice](https://www.nsf.gov/policies/document/pappg24-1-supplement-2)
- [NC State Libraries, 2026 NSF DMSP guidance](https://www.lib.ncsu.edu/do/data-management/elements-of-a-dmp/2026-NSF)
