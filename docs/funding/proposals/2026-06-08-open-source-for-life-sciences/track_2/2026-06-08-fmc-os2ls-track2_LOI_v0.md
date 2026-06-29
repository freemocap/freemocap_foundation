
## Short summary
*Briefly describe the purpose of the proposal and the software project(s) it involves. 3,000 characters maximum* 

The FreeMoCap Foundation's Track 1 proposal describes our flagship software (freemocap) and its potential impact on the landscape of human-centered biomedical research. 

Our development of the FreeMoCap project has been structured around a poly-repo enforced separation of concerns whereby the different functional domains are split across individual repositories with a perscriptive naming structure: `skelly[domain]`, informally dubbed the 'sub-skelly network' after the logo and mascot of our company Skelly FreeMoCap. 

The principle sub-skelly repos are designed to provide isolated, semi-standalone developer environment to build the core functional pieces of the FreeMoCap software - `skellycam` for synchronized multi-camera streaming and recording, `skellytracker` for both traditional and AI/ML based image analysis, `skellyforge` for 3d capture volume calibration and kinematic reconstruction, and `skellyblender` for exporting basic trajectories to the animation software (such as Blender)

In addition, we also maintain a number of smaller scope utility repos to handle key sub-functionalities, such as `skellylogs` for a high-observability logging sytem, `skellypings` for Google cloud based user telemetry, etc. 

Each principle sub-skelly repository is designed provide their own interface, documentation, and API that can be used independently of the project as a whole. SkellyCam provide a synchronized multicamera streaming/recording UI, etc (see https://github.com/freemocap for a partial list of all the code repositories supported by the FreeMoCap Foundation). 


#### Gap 

This strict standard of independent isolatable usage has been instrumental for our ability to develop and maintain the complex machinery of the top-level FreeMoCap software platform.

However, in reality our ability to support each sub-repo is constrained by lack of time and resources. As a result, the individual tools are poorly documented and only loosely maintained UI with UX designed almost as a development tool rather than a properly usable tool. 

#### Goal 

This proposal aims to expand the existing FreeMoCap ecosystem to bring each independent principle and utility sub-skelly up to the same standards as the flagship FreeMoCap software. 

A robust Skelly ecosystem will also include programmatic, command-line, and batch-processing workflows, enabling researchers to process hundreds of recordings and build the kind of large-scale movement datasets that AI-driven research increasingly demands. Benchmarking and validation tools will let researchers verify that a given pipeline configuration produces data suitable for their scientific question before building a study around it. 

The activities of this proposal represent a substantial engineering labor that will effectively multiple our surface area of support by the number of sub-repositories, but if successful it could massively expand and deepen the impact of the FreeMoCap Project as a whole. 


## Expected value
*If the proposal is successfully funded, what does success look like? We're seeking to understand: what type of capabilities the proposal is unlocking for the scientific community; how upstream and downstream software will be improved by the proposal; how the proposed work supports or implements novel functionality for AI enablement and large-scale data analysis. (1,500 characters maximum)*

Success means researchers across the life sciences can assemble different pipelines from the same ecosystem, using only the packages they need, with confidence that the components are documented, validated, and interoperable.

The project improves upstream software by giving tracking models, calibration methods, and reconstruction algorithms standardized interfaces - a new pose-estimation model can reach life sciences users through SkellyTracker without requiring them to rebuild their pipeline. Downstream, standardized data schemas mean that 3D datasets from different labs, organisms, and contexts share a common structure, making them combinable for large-scale analysis and usable for training new AI models. Improvements to any single package propagate to every researcher using the ecosystem rather than remaining trapped in one lab's codebase.

The work supports AI enablement and large-scale data analysis through programmatic APIs, batch workflows, and structured outputs with embedded metadata and quality metrics. Researchers can process hundreds of recordings and integrate Skelly packages into scripted or automated workflows. Because each package is versioned and independently maintained, pipeline configurations become reproducible and shareable - a property that emerges from the modular architecture itself.


## Landscape Analysis 
*We are looking for proposals from software projects with demonstrated traction and adoption. Briefly describe other software tools that the audience for this proposal primarily uses (including proprietary alternatives, if they exist), and how the software project(s) in your proposal compare in terms of user base, adoption, functionality, and maturity relative to their target audience. You can add indicators of adoption and usage as needed. Please indicate if the software is used in AI applications and workflows. (1,500 characters maximum)*

Researchers building custom camera-based motion analysis pipelines currently assemble them from disconnected tools. OpenCV provides camera access and image processing, but even synchronized multi-camera recording requires substantial custom code. DeepLabCut and SLEAP offer AI-based 2D tracking for animals, with DeepLabCut also supporting 3D reconstruction, but these capabilities are tied to each tool's own workflow rather than available as reusable components. OpenCap and Pose2Sim offer integrated human workflows but are not component libraries. Most labs write custom code connecting these pieces, producing pipelines that work for one project but are difficult to reuse, share, or validate.

No existing ecosystem provides independently installable, interoperable packages covering the full pipeline of acquisition, calibration, tracking integration, 3D reconstruction, and structured data output as composable building blocks for any domain or organism.

The Skelly ecosystem addresses this gap by organizing at the component level. FreeMoCap's adoption (12,000+ users, ~140 countries, over 8,000 GitHub stars, ~800 forks, 3,000-member forum, publications spanning gait, kinematics, clinical assessment, and computational linguistics) demonstrates demand for the integrated pipeline these libraries power. The proposed work makes each library independently robust, documented, and usable outside FreeMoCap in researcher-built pipelines and AI-driven workflows.
