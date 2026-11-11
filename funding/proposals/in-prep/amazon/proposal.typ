
#let project = "Benchmarking Visual Recovery from Incomplete Capture on Commodity Devices"
#let foundation = "FreeMoCap Foundation, Inc."
#let pi = "Aaron T. Cherian"
#let co_pi = "Jonathan Samir Matthis"
#let cash = "$80,000"
#let credits = "$25,000"

#set document(title: project, author: (pi, co_pi))
#set page(paper: "us-letter", margin: 1in, numbering: "1", header: align(right)[
  #text(size: 9pt, fill: rgb("#465457"))[FreeMoCap Foundation, Inc.  ·  Amazon Research Awards]
])
#set text(font: "Calibri", size: 11pt, lang: "en")
#set par(leading: 0.44em, spacing: 0.87em)
#show heading: set text(size: 11.5pt, fill: rgb("#173b43"))
#show heading: set block(above: 0.7em, below: 0.27em)
#let title(body) = block(above: 0pt, below: 0.5em)[#text(size: 17pt, weight: "bold", fill: rgb("#173b43"))[#body]]
#let cols(..cells) = table(columns: (1.2in, 1fr), inset: 5pt, stroke: 0.4pt + rgb("#bbc5c6"), ..cells)

#title(project)
An open, end-to-end benchmark for recovering visual and motion information from imperfect observations

*Principal investigator:*  #pi, Chief Scientific Officer, #foundation \
*Co-principal investigator:*  #co_pi, President and CEO, #foundation \
*Research topic:*  Topic 1: Generative Visual Experience Beyond Capture Constraints \
*Project period:*  12 months  ·  *Requested funding:*  #cash cash and #credits in AWS credits

= Abstract

Low-cost cameras make visual data collection increasingly accessible, but occlusion, limited viewpoints, and imperfect recording conditions can leave important information missing or unreliable. Recovering usable information depends not only on visual detection and pose estimation, but also on the calibration, reconstruction, and processing methods that transform observations into final outputs. These methods are often evaluated individually, making it difficult to determine how improvements affect the accuracy of recovered information or whether they remain practical on commodity hardware. The FreeMoCap Foundation proposes an open, extensible framework for end-to-end benchmarking of visual perception and recovery methods. Building on our validated multiview motion-capture pipeline, we will enable researchers to evaluate processing performance on their own devices and conduct standardized accuracy comparisons using recorded camera observations and independent marker-based measurements. Shared interfaces will allow researchers to contribute and evaluate new detection, pose-estimation, calibration, reconstruction, temporal-processing, and visual-recovery methods. We will release benchmark datasets, evaluation tools, standardized reports, and reproducible workflows for local and cloud execution. The resulting framework will help researchers determine how faithfully methods recover missing information, how processing decisions affect the final output, and what computational resources are required to achieve usable results.

*Keywords*  On-device perception; incomplete capture; visual recovery; markerless motion capture; benchmarking

= Research topic and significance

Compact and inexpensive cameras capture an imperfect account of the world. Occlusions, poor viewpoints, intermittent recording, limited resolution, and variable lighting can leave important information missing. Pose estimation, multiview reconstruction, temporal prediction, and generative image or video methods can recover some of that information, but a continuous or realistic-looking result is not necessarily a faithful record of the event. Additionally, a method that works well on a high-end workstation may become too slow, memory-intensive, or unreliable on lower-end hardware.

Many evaluations examine components in isolation: detection accuracy, pose-estimation error, image similarity, or inference speed. These measures do not establish whether an improvement survives downstream processing, preserves the timing and geometry of movement, or meets a device's response-time requirements. Image-level comparisons alone also cannot establish whether visually plausible human motion matches what occurred. We propose to connect model-level performance, recovery accuracy, and device constraints within a common evaluation framework.

The FreeMoCap Foundation develops free, open-source tools for measuring human movement with consumer cameras. FreeMoCap has reached more than 15,000 users across over 150 countries, and its main GitHub repository has earned more than 10,000 stars @matthisFreeMoCapFreeOpen2026. Published applications span gait biomechanics @nunez-lisboaUnderstandingGaitAlterations2024, functional gait assessment @dariciLowCostMarkerlessMotion2025, and lower-limb exoskeleton verification @obukhovHybridVerificationMethod2026. Its use also extends into visual-content research: Landa et al. used FreeMoCap with four consumer webcams to investigate the believability of recorded and retouched human animation @landaEvaluatingIdleAnimation2025. This illustrates how accessible motion capture supplies real movement data for digital experiences, where plausible appearance and fidelity to the original movement are distinct challenges.

FreeMoCap's modular pipeline separates synchronized video acquisition (SkellyCam), pose-estimation interfaces (SkellyTracker), camera calibration, 3D reconstruction, and subsequent processing (FreeMoCap and SkellyForge). Our prior validation compared MediaPipe, RTMPose, and ViTPose against simultaneous Qualisys measurements during treadmill gait and standing balance @cherianOpensourceDevelopmentValidation2026. Accuracy varied by estimator, task, and outcome, demonstrating the importance of evaluating how processing choices affect the final measurements. We released aligned trajectories and reproducible analyses @cherianFreeMoCapValidationDataset2026, providing an established reference-based validation framework that we will extend across the full recovery pipeline.

This infrastructure makes human movement a tractable test case for *Topic 1, Generative Visual Experience Beyond Capture Constraints*. We will develop an open framework for measuring how effectively methods recover information from imperfect visual observations, how faithfully outputs represent the event, and what resources they require. Human movement provides both camera observations that can be withheld for evaluation and independently measured motion. Initial benchmarks will focus on this use case, while enabling outside researchers to contribute other visual perception and recovery methods.

= Research design

We will build on synchronized treadmill-gait and standing-balance recordings acquired using six consumer webcams and an independent Qualisys system. Our public validation release provides aligned 3D trajectories for six participants across 24 trials, together with reproducible analyses @cherianFreeMoCapValidationDataset2026. We will prepare a public multiview video benchmark with corresponding reference measurements, using existing recordings with appropriate participant permissions. This will enable image-level and end-to-end evaluations alongside the corresponding marker-based reference measurements. We will also publish procedures researchers can apply to their own recordings.

The framework will support two complementary forms of evaluation. *Device-specific benchmarks* will measure performance and resource use on a researcher's own hardware and recordings, without requiring reference data. *Standardized validation benchmarks* will use shared recordings and reference measurements to evaluate detection, reconstruction, and recovery accuracy. Controlled tests will vary available observations, including missing views, frames, or degraded images, alongside naturally imperfect recordings. 

== Aim 1. Characterize accuracy and performance of on-device visual detection and pose estimation

For visual recovery methods to be useful on commodity devices, they must be able to extract reliable information from imperfect camera observations within the computing resources available. The same pose-estimation model may perform very differently depending on the device, camera configuration, and execution settings. We will extend our SkellyTracker package to provide an open benchmarking framework that allows researchers and developers to evaluate these trade-offs on their own hardware and determine which configurations are practical for their applications.

We will compare representative model sizes, FP32 and FP16 variants, and INT8 quantization where supported. We will vary ONNX Runtime execution providers and fixed input and batch dimensions, including sequential camera processing versus batches matched to the number of views. Tests will include CPU-only laptops, integrated-graphics systems, and computers with consumer-grade GPUs across camera counts and resolutions, identifying configurations that sustain real-time processing. Model conversion and quantization procedures will be documented so differences can be attributed to the appropriate settings.

The framework will support device-specific performance testing using a researcher's own cameras or recordings, without requiring an independent reference dataset. For each configuration, it will measure model inference time separately from preprocessing, data transfer, and total frame-to-result latency. It will also report sustained throughput, latency variability, startup or compilation costs, peak memory, missed real-time deadlines, detection coverage, and unsupported or fallback configurations. These measurements will help researchers determine which models and execution settings can reliably process the camera observations available on their devices.

We will complement deployment tests with accuracy comparisons using annotated recordings and independent reference measurements. These will measure detection precision and recall where appropriate, landmark localization accuracy, and downstream reconstructed-motion error. We will test whether gains in model throughput improve end-to-end performance without compromising recovered information. An extensible adapter will let contributors specify preprocessing, landmark definitions, model provenance, and supported execution settings for new detectors or pose estimators.

*Significance.* Recovering useful information from imperfect visual observations requires methods that can operate within the computing resources available in real-world environments. This aim will give researchers a way to determine which perception models and configurations can run reliably on their own hardware, how their performance changes with camera and processing constraints, and whether faster processing comes at the expense of the information needed for accurate recovery.

== Aim 2. Extend end-to-end validation to reconstruction and recovery methods

Recovering useful information from imperfect observations depends on more than detection or pose estimation. Camera calibration, multiview reconstruction, interpolation, filtering, and other methods transform observations into usable data. Each stage can introduce, reduce, or propagate errors; improvements at one stage do not necessarily improve the final result. We will extend FreeMoCap's validation framework across the recovery pipeline so researchers can determine how individual processing decisions affect accuracy and completeness.

Building on our synchronized multiview recordings and independent marker-based measurements, we will establish standardized procedures for evaluating recovery methods against known observations and reference data. Researchers will be able to compare alternative methods within individual processing stages while holding the remainder of the pipeline fixed, or evaluate how different combinations of methods affect the final output. The benchmark will measure reconstruction accuracy, recovery of missing information, preservation of movement timing, and the computational cost of processing. This will allow improvements at intermediate stages to be evaluated in terms of their contribution to the recovered result.

We will extend FreeMoCap's modular architecture to support contributions of new calibration, reconstruction, interpolation, filtering, and other recovery methods through shared interfaces and evaluation procedures. Researchers will be able to integrate their own algorithms, run them against common benchmark inputs, and compare results without developing a separate validation pipeline. The framework will also accommodate methods that generate or recover visual observations, rather than only methods that produce landmarks or trajectories. For example, a method that synthesizes a camera viewpoint could be compared with video from a corresponding camera withheld from its inputs, using the same benchmark to assess visual agreement and, where applicable, preservation of the independently measured movement.

As initial demonstrations, we will compare representative methods already supported by FreeMoCap and integrate additional approaches, including person-based camera calibration that avoids a physical calibration target @tang2024. This will demonstrate how researchers can evaluate methods that reduce calibration and deployment constraints alongside reconstruction and temporal-processing methods. These comparisons will establish examples of how to use the framework rather than limit the benchmark to the algorithms selected for this project.

*Significance.* Recovering information beyond the limits of the original camera observations requires reliable methods at every stage of processing, not just accurate initial detections. By extending validation across the full pipeline, this aim will give researchers a way to determine whether new reconstruction and recovery methods meaningfully improve the final result, identify where errors are introduced, and compare alternative approaches under consistent, independently validated conditions.

== Aim 3. Make recovery trade-offs reproducible across devices

For benchmarking results to be useful beyond an individual experiment, researchers need to know how they were obtained and whether the same methods produce comparable results under different conditions. Differences in hardware, software environments, model configurations, and input recordings can substantially affect both processing performance and recovery accuracy. We will develop a shared experimental and reporting workflow that makes the evaluations from Aims 1 and 2 reproducible, allowing researchers to compare methods, investigate performance differences, and evaluate new approaches using consistent procedures.

Each experiment will record the model or method used, relevant processing settings, input data, hardware configuration, software environment, and evaluation procedures. Results will include standardized performance and accuracy metrics, along with machine-readable reports documenting unsupported configurations, processing failures, and other conditions that affect interpretation. Researchers will be able to reproduce a published configuration, modify individual components, and determine how those changes affect the final recovered output. The reporting workflow will support both device-specific performance measurements and standardized reference-based accuracy evaluations.

We will use AWS Batch and EC2 CPU and GPU instances to run larger comparisons across methods, configurations, and software versions, with Amazon S3 supporting permitted benchmark inputs and results @awsbatch. These resources will allow us to conduct systematic evaluations and regression testing as new methods are contributed to the framework. The same benchmarking and scoring tools will run locally, allowing researchers to evaluate performance on their own devices and compare results with standardized reference experiments.

We will release the experiment runner, benchmark configurations, scoring procedures, reporting tools, and documentation for local and AWS execution. Improvements to FreeMoCap's underlying packages, including SkellyTracker, SkellyForge, and related components, will also be released as open-source contributions. To verify the framework's reproducibility, a second researcher will follow the public instructions to reproduce both the procedure and reported metrics of a reference benchmark, then evaluate an additional device or method.

*Significance.* New approaches to recovering information from limited visual observations are difficult to compare when they rely on different datasets, processing configurations, and evaluation procedures. This aim will establish a reproducible foundation for comparing recovery methods across researchers and devices, allowing improvements to be independently verified, limitations to be identified, and new methods to build on shared experimental evidence.

= Expected results and one-year deliverables

#cols(
  table.header([*Period*], [*Deliverable*]),
  [Months 1–2], [Finalize reference mappings; define held-out visual and trajectory cases; reproduce baselines on two device classes.],
  [Months 3–5], [Release model, precision, execution-provider, and multiview-batch comparisons; report inference versus end-to-end runtime and downstream accuracy.],
  [Months 6–8], [Release a consent-cleared multiview benchmark with reference measurements, scoring for withheld frames and views, and worked examples evaluating calibration, reconstruction, and temporal recovery.],
  [Months 9–10], [Run cross-device and AWS sweeps; report operating limits, failure cases, reproducibility costs, and accuracy–latency trade-offs.],
  [Months 11–12], [Complete independent replication and documentation; publish the extensible benchmark suite, reference examples, and a methods report.],
)

*Open contributions.* We will release method adapters, benchmark definitions, masking and scoring tools, result schemas, local/AWS instructions, and a consent-cleared multiview video benchmark with the existing trajectory reference. Improvements to FreeMoCap and its packages—including SkellyCam, SkellyTracker, and SkellyForge—will also be released openly, whether developed for capture, hardware-aware inference, calibration, reconstruction, or post-processing. 
= Funds needed

We request #cash in cash support for scientific personnel, benchmark engineering, device testing, data preparation, and dissemination. We also request #credits in AWS Promotional Credits to run repeated benchmark comparisons on CPU and GPU instances and store benchmark inputs and results. The separate budget itemizes these costs.

#pagebreak()
== Appendix A

= References

#bibliography("zotero_library.bib", title: none, style: "ieee")
