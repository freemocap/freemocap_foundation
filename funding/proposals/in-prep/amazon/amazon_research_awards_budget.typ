#let project = "Benchmarking Visual Recovery from Incomplete Capture on Commodity Devices"
#let foundation = "FreeMoCap Foundation, Inc."
#let cash = "$80,000"
#let credits = "$25,000"
#let ink = rgb("#173b43")
#let rule = rgb("#bbc5c6")

#set document(title: "Budget — " + project, author: foundation)
#set page(paper: "us-letter", margin: 1in, numbering: "1", header: align(right)[
  #text(size: 9pt, fill: rgb("#465457"))[FreeMoCap Foundation, Inc.  ·  Amazon Research Awards  ·  Budget]
])
#set text(font: "Calibri", size: 11pt, lang: "en")
#set par(leading: 0.44em, spacing: 0.75em)
#show heading: set text(size: 11.5pt, fill: ink)
#show heading: set block(above: 0.68em, below: 0.28em)
#let title(body) = block(above: 0pt, below: 0.45em)[#text(size: 17pt, weight: "bold", fill: ink)[#body]]

#title[Proposed Project Budget]
*Project:* #project \
*Organization:* #foundation  ·  *Period:* 12 months

*Cash support requested:* #cash  ·  *AWS Promotional Credits requested:* #credits

= 1. Cash budget

#table(
  columns: (2.5fr, 2.35fr, 0.95fr), inset: 5pt, stroke: 0.4pt + rule,
  table.header([*Cost category*], [*Basis of estimate*], [*Amount*]),
  [Principal Investigator — Aaron T. Cherian], [200 hours × \$100/hour], [\$20,000],
  [Co-Principal Investigator — Jonathan Samir Matthis], [200 hours × \$100/hour], [\$20,000],
  [Research Software Developer], [425 hours × \$80/hour], [\$34,000],
  [Commodity-device testing], [Computers, upgrades, cameras, and accessories], [\$4,000],
  [Dissemination and travel], [Research presentation and conference expenses], [\$2,000],
  [*Total cash request*], [], [*\$80,000*],
)

== Personnel justification

*Scientific Co-PI (\$20,000).* Lead benchmark study design, validation metrics, reference-data alignment, interpretation of performance/accuracy trade-offs, reproducibility checks, and scientific reporting (Aims 1–3).

*Technical Co-PI (\$20,000).* Guide software architecture, integration of benchmark interfaces throughout FreeMoCap, technical review, experimental design, and release quality assurance (Aims 2–3).

*Research Software Developer (\$34,000).* Implement hardware-aware inference and model benchmarking, including ONNX execution-provider and precision comparisons, multiview batching, method adapters, experiment automation, and reporting interfaces (primarily Aim 1, with contributions to Aims 2–3). This work may be performed through a direct project-services contract.

== Other direct costs

*Commodity-device testing (\$4,000).* Purchase or upgrade representative CPU-only, integrated-graphics, and consumer-GPU systems, as needed after inventorying existing equipment, with low-cost cameras, storage, and peripherals for repeatable local tests (Aims 1 and 3).

*Dissemination and travel (\$2,000).* Support presenting findings, sharing benchmark methods, and engaging researchers at a relevant scientific or open-source conference (Aim 3).

= 2. AWS Promotional Credits

#table(
  columns: (3.15fr, 0.9fr), inset: 5pt, stroke: 0.4pt + rule,
  table.header([*Planned use*], [*Credits*]),
  [EC2 GPU compute — model and recovery-method benchmark sweeps], [\$17,000],
  [EC2 CPU compute — baselines, compatibility checks, regression testing], [\$4,000],
  [S3 — permitted benchmark inputs and versioned results], [\$2,000],
  [Supporting cloud usage — data transfer, logs, and related resources], [\$2,000],
  [*Total AWS credit request*], [*\$25,000*],
)

AWS Promotional Credits will support the planned experiments across all three aims. Using AWS Batch and EC2 CPU and GPU instances, we will compare pose models, numerical precisions, and execution settings (Aim 1), then evaluate how calibration, reconstruction, interpolation, and filtering affect recovery when frames or camera views are withheld (Aim 2). Amazon S3 will store permitted recordings, reference measurements, and intermediate results so that methods can be compared using the same inputs. We will publish the cloud workflow and use it to reproduce benchmark results and rerun the suite as researchers contribute new methods (Aim 3). Complementary tests on commodity devices will measure camera-to-result latency and sustained performance on the target hardware.

#text(size: 9pt, fill: rgb("#465457"))[Budget basis: estimated direct project hours and rates, subject to final project agreements, plus itemized expenses. AWS credits are separate from the cash request; no AWS expenses are counted in both categories.]
