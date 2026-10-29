# BSSw 2027 Fellowship Application — First Draft

Aaron T. Cherian | Prepared October 28, 2026

Working project: **Validating Scientific Pipelines with AI Components**



## Application requirements

Verified against the official 2027 application page and FAQ on October 28, 2026:

- Deadline: Friday, October 30, 2026, before midnight Pacific Daylight Time (before 3:00 a.m. Eastern Daylight Time on Saturday, October 31).
- Project period: April 1, 2027–April 30, 2028.
- Uploads: a CV/resume of no more than two pages and a supervisor support letter of no more than one page, both PDFs.
- Enter the responses directly in the online form. Linked answers elsewhere will not be reviewed.
- The public instructions give the character limits below. Counts include spaces and paragraph breaks, excluding headings and count labels.

| Response | Published length | Draft characters |
|---|---:|---:|
| Scientific software experience | 1000–1500 | 1308 |
| Background for the fellowship and scientific software advocacy | 1000–1500 | 1374 |
| Project title | Up to 100 | 50 |
| Proposed fellowship activity | 1500–2000 | 1818 |
| Technical impact | 1000–1500 | 1408 |
| Broader community impact | 1000–1500 | 1354 |
| BSSw focus areas and subtopics | Up to 500 | 168 |
| Relationship to previous BSSw fellowship work | Up to 500 | 472 |

All eight responses fall within their stated ranges or maximums. The live form may count line endings differently; there is room below each maximum.

## Draft responses

### 1. Scientific software experience

*1308 characters; required range 1000–1500.*

For the past six years, I have been a maintainer and core developer of FreeMoCap (freemocap.org), free open-source motion capture software that has reached more than 15,000 users across at least 150 countries and received over 10,000 GitHub stars.

My contributions extend across the main application and its supporting packages: designing and implementing features, developing shared components, integrating changes across repositories, debugging problems, and preparing releases. This work includes architectural decisions about how data and calculations are organized and accessed throughout the system.

My doctoral research evaluated FreeMoCap's accuracy and scientific use through comparisons with marker-based motion capture across gait, balance, and prosthesis prescription tasks. This work also includes an open validation dataset and analysis pipelines for comparing pose estimation models and their downstream measurements.

My work on shared data models makes outputs from different estimators easier to load, access, and analyze. It brings measurements and their metadata together, supports access by anatomical names, and provides reusable calculations such as joint angles and center of mass. These structures support analyses throughout my validation pipelines.


### 2. Background for the fellowship and scientific software advocacy

*1374 characters; required range 1000–1500.*

As Chief Scientific Officer of the FreeMoCap Foundation, I work to make scientific movement measurement accessible to researchers, educators, and other users who may lack specialized equipment or software expertise. This involves both developing open tools and helping people understand how to use them, evaluate their results, and recognize their limitations.

Effective advocacy also requires relationships with the people who might adopt these practices. Through our weekly community calls, we maintain ongoing contact with users and learn about their applications, questions, and difficulties. Conversations with researchers and demonstrations at scientific conferences where we exhibit extend these connections across research communities. This gives me experience with different audiences and established channels for sharing resources and better practices.

I believe technical methods should be accessible without sacrificing the detail needed to understand and use them correctly. My communication work includes FreeMoCap illustrations, its main user guide, conference guides, and interactive plots for data visualization. My dissertation explains motion capture mathematics alongside practical data collection guidance (https://hdl.handle.net/2047/D20859645). This experience aligns with the fellowship’s emphasis on sharing better software practices: breaking complex ideas into understandable explanations that help researchers apply those practices in their own work.

### 3. Project title

*50 characters; maximum 100.*

Validating Scientific Pipelines with AI Components



### 4. Proposed fellowship activity

AI models are now routine parts of scientific pipelines, from pose estimation to microscopy segmentation. Swapping models can change the final measurement even when nothing else changes, and a pipeline can run without error while producing misleading results: two pose estimation models may label a point “knee” without marking the same anatomical location.

I will create an openly licensed, illustrated guide organized around four questions:

1. How does model choice change the final measurement?
2. How do you make the model interchangeable while accounting for differences in the format and meaning of its outputs?
3. What model details and processing history make results interpretable and reproducible?
4. What can you check with a reference system, what can you check without one, and which checks should you repeat after changes?

The guide answers each question through motion capture examples from FreeMoCap’s existing validation recordings, comparing 3D trajectories from three pose estimation models (MediaPipe, RTMPose, ViTPose) and several model sizes against marker-based data. 

An interactive explorer will show how model choice, model size, filtering, and outlier rejection affect raw and processed trajectories, a derived measurement such as joint speed, and error where a suitable reference is available. It will use precomputed outputs and record the settings behind each comparison.

Deliverables: (a) the written guide; (b) the explorer, with explained diagnostic plots; (c) a small Python repository of runnable examples, including known-answer tests, a regression check, and a report template; (d) a checklist for adapting the practices to other fields.

Timeline: months 1–4, comparisons and guide drafts; 5–8, explorer and repository, previewed at US-RSE27; 9–11, revision with feedback from three or more readers, including one outside biomechanics; 12–13, release and a BSSw article.

### 5. Technical impact

*1408 characters; required range 1000–1500.*

Developers will learn to answer a practical question: when a model or processing step changes, can the resulting measurements still serve the same scientific purpose?

The explorer makes visible how many choices sit between video and result. It separates the effects of model family, model size, and downstream processing. 

The guide will show how to handle differences in the format and meaning of model outputs while retaining their original definitions. Companion code will preserve source data and record model identity, size, available version details, mappings, and processing settings so comparisons can be traced and repeated, a pattern any Python pipeline can adopt.

Diagnostic plots will reveal patterns that an overall error score can hide. The guide will distinguish known-answer tests, reference comparisons, known-geometry checks, and regression checks after changes, explaining what each supports and which stages remain untested.

Success will be assessed through repeatable example runs and whether readers can explain an observed change, identify a comparison’s limitations, and adapt a check to a new case.

### 6. Broader community impact

*1354 characters; required range 1000–1500.*
The resource is intended for researchers and developers who use AI within scientific analyses, including those in small labs without dedicated research software engineers. They may be able to run a model but lack practical guidance for evaluating how its outputs affect the measurements they use.

Motion capture will provide a concrete setting for learning practices that extend beyond biomechanics. Each example will distinguish the general lesson from assumptions specific to movement data. The adaptation checklist will help readers identify the output definitions, processing choices, reference information, and tests relevant to their own work.

The illustrated guide and interactive explorer will let readers investigate these choices at their own pace. Precomputed examples will require no cameras, model training, or new data collection. Readers can inspect the accompanying code and reuse it as a starting point for their own comparisons.

Feedback from readers within and outside biomechanics will help identify unclear explanations and barriers to adaptation. The guide and code will be openly licensed, with versioned releases and contribution instructions. I will share them through FreeMoCap's community, offer a BSSw article, and propose a US-RSE presentation. I plan to maintain and use the examples alongside FreeMoCap's validation work, providing a practical basis for continued use after the fellowship.

### 7. BSSw focus areas and subtopics

*168 characters; maximum 500.*

Reliability: Testing; Continuous Integration Testing; Reproducibility. Planning: Design; Software Interoperability. Development: Documentation. Skills: Online Learning.

### 8. Relationship to previous BSSw fellowship work

*472 characters; maximum 500.*

This project complements Myra Cohen’s work on scientific software testing and Victor Weeks’s work on validation in AI-assisted development. It focuses on AI models operating inside measurement pipelines. An interactive motion capture example will show how model choice, model size, and processing affect scientific measurements. The guide and companion code connect these comparisons to modular pipeline design, provenance, and validation with and without a reference system.
