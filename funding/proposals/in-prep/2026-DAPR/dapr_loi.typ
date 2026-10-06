// DAPR 2026-2 Pilot Grant Program - Letter of Intent
// LOI instructions do not specify typography or margins.
// This version keeps a conservative grant-style layout while improving readability.

#set page(
  paper: "us-letter",
  margin: (x: 0.55in, y: 0.5in),
)

#set text(
  font: ("Arial"),
  size: 11pt,
)

#set par(
  justify: false,
  leading: 0.30em,
  spacing: 0.90em,
)

#set list(
  indent: 1.05em,
  body-indent: 0.45em,
  spacing: 0.2em,
)

#let project-title = [Harmonizing FreeMoCap Biomechanical Time-Series Data for Rehabilitation Research]
#let pi-name = [Aaron Cherian, PhD]
#let pi-email = [aaron\@freemocap.org]
#let pi-phone = [(845) 269-9563]

// ---------- Header ----------
#text(size: 15pt, weight: "bold")[Letter of Intent]
#v(0.25em)
#line(length: 100%, stroke: 0.55pt)
#v(0.55em)

// ---------- Administrative information ----------
#grid(
  columns: (1.42in, 1fr),
  column-gutter: 0.15in,
  row-gutter: 0.22em,
  [*Title*], [#project-title],
  [*Contact Information*], [#pi-name \ #pi-email \ #pi-phone],
  [*Proposal Type*], [Data STACHE],
)

#v(0.4em)
#text(weight: "bold")[Research Team]
#v(0.08em)
- #pi-name\; Chief Scientific Officer, FreeMoCap Foundation; Principal Investigator
- Jonathan Samir Matthis, PhD; President/CEO, FreeMoCap Foundation; Project Mentor

#v(0.55em)
#text(size: 13pt, weight: "bold")[Project Overview]
#v(0.12em)
#line(length: 100%, stroke: 0.3pt)
#v(0.4em)

// 411 words; limit = 500 words.
The FreeMoCap Foundation is responsible for the development and stewardship of FreeMoCap (#link("https://freemocap.org")[freemocap.org]), a free, open-source markerless motion-capture platform designed to make quantitative movement measurement more accessible to users ranging from hobbyists to researchers, including those without access to traditional laboratory motion-capture systems. FreeMoCap has already reached more than 15,000 users across 150+ countries and has been used in published scientific research. As the platform continues to be disseminated across research settings, including applications with potential relevance to rehabilitation, there is an opportunity to ensure that the biomechanical time-series data it produces are not only accessible to collect, but also structured and described in ways that support sharing, aggregation, and reuse across rehabilitation studies.

The objective of this project is to determine how biomechanical time-series data generated using FreeMoCap can be harmonized within the evolving DAPR framework and existing rehabilitation data standards. We will use existing gait and balance validation datasets that contain FreeMoCap markerless motion-capture outputs alongside laboratory marker-based reference measurements. These datasets include three-dimensional body trajectories, joint angles, center of mass measures, gait events, task conditions, and associated acquisition and processing information. They also include outputs generated using different pose-estimation approaches, providing a useful test case for understanding how common biomechanical measurements can be represented across studies and technologies without losing important information about how those measurements were produced.

Working with the DAPR Resource Core, we will map participant, task, trial, and biomechanical variables to existing standards and DAPR terminology where appropriate, and identify areas in which biomechanical time-series data require additional terms, metadata, or organizational structures. Particular attention will be given to information needed to interpret and reuse movement data, including anatomical definitions, units, sampling characteristics, coordinate systems, task conditions, acquisition technology, pose-estimation method, processing history, and other provenance.

This provenance is especially important for future pooled analyses and AI/ML applications, because measurements that represent the same underlying biomechanical concept may differ systematically depending on the acquisition and processing methods used to generate them. Harmonization should therefore support common interpretation across datasets while preserving information needed to characterize these differences.

The project will produce harmonized versions of the existing datasets together with reusable mappings and documentation describing how biomechanical time-series data and their provenance can be represented within the DAPR ecosystem. These results will also inform future development of an optional standards-aligned research-data output from FreeMoCap, allowing researchers to generate datasets that are better prepared for sharing, cross-study analysis, and integration with broader rehabilitation data resources.

#pagebreak()

#text(size: 15pt, weight: "bold")[Letter of Intent]
#v(0.25em)
#line(length: 100%, stroke: 0.55pt)
#v(0.65em)

#text(size: 13pt, weight: "bold")[DAPR Resources and Relevance]
#v(0.12em)
#line(length: 100%, stroke: 0.3pt)
#v(0.4em)

// 176 words; limit = 200 words.
This project will use consultation and harmonization support from the DAPR Resource Core to determine how biomechanical time-series measurements and their associated metadata and provenance should be represented within the evolving DAPR framework. We will seek guidance on mapping existing variables to established rehabilitation data standards, identifying gaps in current terminology, developing new DAPR terms or conventions where needed, and determining what information is necessary for movement datasets to be useful for rehabilitation research and future pooled analyses. These activities align with the Resource Core support described for harmonization, data infrastructure, analytic tools, and consultation.

The project will extend DAPR's ecosystem into a rehabilitation-relevant time-series domain while providing a pathway from retrospective harmonization of existing datasets toward prospective generation of standards-aligned movement data. By using FreeMoCap as an accessible, open-source data-generation platform, the resulting guidance can inform future research outputs that preserve the metadata and provenance necessary for cross-study, cross-technology, and downstream AI/ML use. Longer term, this approach could also facilitate integration of movement data with other rehabilitation data streams and support larger, reusable multimodal datasets.
