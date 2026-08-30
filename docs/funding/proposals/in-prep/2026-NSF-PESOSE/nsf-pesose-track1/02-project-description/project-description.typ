// =============================================================================
// Single-file layout: consolidated 2026-08-30 from main.typ + sections/ + floats/.
// All per-part guidance comments preserved verbatim below their // PART banners.
// =============================================================================
// =============================================================================
// PROJECT DESCRIPTION — NSF 26-506 Track 1
//
// HARD LIMIT: 7 pages. Figures, charts, and tables all count.
// No URLs anywhere in this document (use `c("key")` from lib/refs.typ).
// Must include a "Broader Impacts" heading on its own line.
//
// Build:
//   typst watch project-description.typ                        # live preview (draft is the default)
//   typst compile --input draft=false project-description.typ  # submission build
//   ./build.sh final                            # all sections, submission mode
//
// THE SPINE (v2 — see notes/spine-spec.md):
//
//   FreeMoCap is a validated measurement instrument with an organically
//   growing community of users spanning students/professionals and
//   artists/researchers. Its maintainer base has not grown symmetrically:
//   in Eghbal's terms, the project has the structure of a "stadium" — high
//   user growth, stagnant maintainer growth — the common structure of
//   mid-scale open source projects, not a project-specific failure. The
//   software's recent full rebuild (V2, in alpha) — polyrepo separation,
//   client/server architecture, one-click professional desktop installer —
//   lowered the technical cost of contribution and creates the decision
//   window: what remains is organizational rather than technical. Track 1
//   funds the scoping and discovery, in service of Track 2, of five areas:
//   community landscape and needs (Part 3); documentation and
//   contributor-upskilling pathways (Part 6); governance and contribution
//   practices (Part 4); validation and benchmarking methodology (Part 5);
//   sustainability model (Part 4).
//
// TONE RULES: no branded constructs; no dramatized stakes; declarative,
// evidence-first; stadium/federation vocabulary defined once, cited once,
// used sparingly; honest about limitations without self-flagellation.
//
// V2 GUARDRAIL: Track 1 funds planning, not product development. V2 appears
// only as evidence of active maintenance and motivation for organizational
// scoping — never as funded work.
//
// CITATION RULE: proposed citations appear as // comments only. Nothing
// enters the rendered text or the .bib until Jon validates it in Zotero.
//
// TEXT LIFECYCLE: #suggestion (proposed, green) -> #new (accepted, blue,
// tracked) -> plain prose (settled).
//
// The sentence-level test stays subordinate: (1) ecosystem-believable, not
// software-impressive; (2) evidence vs. planned activity, never blurred;
// (3) which Track 1 criterion does it serve.
// =============================================================================



// -----------------------------------------------------------------------------
// Order matters. This sequence front-loads the need and the evidence, then
// spends the middle on the four solicitation-mandated Track 1 content areas,
// then closes on milestones. Reorder if your argument wants it, but keep
// Broader Impacts and Prior Support last — reviewers expect them there.
// -----------------------------------------------------------------------------




#import "../template/nsf.typ": nsf-doc, DRAFT, budget, note, broader-impacts, flag, suggestion
#import "../template/refs.typ": c

#show: nsf-doc.with(page-limit: 7, draft: DRAFT)

// PART 1 — Need and framing.  Page budget: ~1.0
//
// Serves Track 1 criterion (a): a societal or national need not currently
// being adequately addressed.
//
// This is where the accessibility argument goes, and it is your strongest
// single asset: a lab that cannot afford a six-figure marker-based system can
// run FreeMoCap on consumer cameras. State it in one or two sentences — do not
// write a literature review of motion capture. Criterion (a) asks whether the
// need is real and unmet, not whether you know the field.
//
// Land the spine claim explicitly and early. Reviewers should know by the end
// of page one that this is a proposal about building an organization, not
// about writing software.




= Vision and Need
//I feel like we could find a stronger hook to start with at the first sentence...
Although the methods behind camera based motion capture are well documented, researchers must often rebuild the infrastructure to assemble them into a usable measurement system when existing tools do not fit their needs. Commercial marker-based motion capture systems offer sophisticated general-purpose measurement, but remain costly and closed to modification. Newer markerless systems, driven by advances in AI/ML based computer vision, have lowered those barriers but are often built around the needs and assumptions of particular fields. Researchers working outside those assumptions (for instance, anyone measuring a non-human animal) are left to learn and implement components common to multi-camera markerless motion capture systems themselves. These include video recording and synchronization, camera calibration to recover each camera's position and optical parameters, 2D pose estimation using AI models to locate anatomical keypoints, 3D reconstruction by triangulating those keypoints across camera views, and post-processing and analysis. #flag(kind:"clarity")[Rebuilding this infrastructure across projects duplicates technical effort and reduces the return on public research investment in software that is difficult to maintain, reproduce, or transfer beyond the environment in which it was developed.]

#flag(kind:"verbose")[*There is therefore a need for accessible, shared research infrastructure that allows specialized motion capture adaptations developed by one community to be contributed back and reused by others, requiring defined stewardship and governance as much as software.*]

//This bolded statement is a good sentiment, but its too verbose and wordy for the text blob here. I'm also ware of hanging the WHOLE grant off this claim - its a good point, but there's much much more thats good about freemocap aside from just allowing others to avoid duplicating effort. I think basing the whole proposal on a claim like this sells us short])


FreeMoCap #c("queenFreeMoCapFreeOpen2024") provides an existing technical foundation for this model. Maintained by the FreeMoCap Foundation, FreeMoCap is free and open-source software that transforms synchronized video from consumer-grade cameras into research-grade 3D motion-capture data through a modular workflow (@fig-overview). This proposal requests Track 1 support to scope the organizational and infrastructure requirements needed to *transition FreeMoCap from an open-source project maintained by a small core team into a secure, sustainable, community-driven ecosystem.* //NOTE - clarity - we use the word "freemocap" too many times in this short paragraph. Can probably make this punchier

// FIGURE — FreeMoCap workflow overview. Rendered in Part 1 (fig-overview).
// Lives in its own file so it can be moved/retuned without touching prose.
// Image paths are relative to 02-project-description/ (../figures/).
#figure(
  image("../figures/overview_v2.png", width: 100%),
  caption: [The FreeMoCap workflow and its component repositories (blue). (A) Synchronized video from consumer-grade USB webcams (skellycam) is processed through camera calibration and 3D reconstruction (skellyforge) and modular pose estimation (skellytracker), producing 3D motion trajectories for downstream analysis or animation export. Separation of the pipeline by domain allows individual components to be modified or replaced independently. (B) Reconstructed 3D trajectories alongside the source camera views.]
) <fig-overview>

// PART 2 — Current status of the open-source product.  Page budget: ~1.0
//
// REQUIRED by NSF 26-506 for all PESOSE proposals. The solicitation asks for
// four things, and this part plus Part 1 must cover all four:
//   1. a pointer to the existing publicly available open-source product
//      (in-line citation only — no URLs)
//   2. current status of the development and testing model, methods of
//      dissemination, user base, and contributor base
//   3. a description of the problem being addressed
//   4. a strong justification that the team is qualified to do this work
//
// This is the EXISTING EVIDENCE register. Everything here is a fact about
// today, not a plan. Keep the boundary visible — the most common failure mode
// for a Track 1 proposal from a mature project is blurring evidence into plan,
// which gets read as either "you already did Track 1" or "there is nothing
// here yet."
//
// DISCIPLINE: architecture details earn space ONLY as evidence of something
// ecosystem-relevant — e.g. modularity that lets an outside contributor work
// on one stage without understanding the whole pipeline. A sentence about the
// pipeline for its own sake is a sentence about your software in a proposal
// that is not about your software.
//
// Track 1 supports planning, NOT product development. Ongoing refactor work
// belongs here as evidence of active maintenance, never in the work plan.




= Current State of the Software and Community

FreeMoCap, distributed through Github and a standalone desktop installer (freemocap-dot-org-slash-download), has over 10,000 Github stars, telemetry indicating over 15,000 users across 153 countries, and a community forum with over 4,000 members. The software is organized as interoperating repositories separated by domain: `skellycam` for camera synchronization and recording, `skellytracker` as a modular interface for pose estimation, `skellyforge` for calibration, 3D reconstruction, and post-processing, and `freemocap_blender_addon` for export to Blender.  //NOTE - need to update these numbers correctly with actual accurate numbers, and give a better description of the PolyRepo structure of freemocap and the reasoning/advantage behind it. Ask me for details. Also first sentence buries tf out of the lede - need a better and stronger way to say "Not only do we have all our source code on Github with automated CI/CD through github actions, We have a single click installer at freemocap.org/download and thats WILD. "

//NOTE - generally, we need a section somewhere in this proposal with Key PErformance Indicators, and include our various numbers there. 

FreeMoCap is used across several distinct communities, including researchers, educators and students, creative and technical users, and software contributors. Published use of FreeMoCap spans reaching and grasping biomechanics #c("mazroueiCatchingSmallBalls2026"), gait analysis #c("nunez-lisboaUnderstandingGaitAlterations2024"), computational linguistics #c("orrMULTICOLLABASLAffectiveComputing2024","peechattMULTICOLLABMultimodalCorpus2024", "nunnariDGSFabeln1MultiAngleParallel2024"), and animation #c("landaEvaluatingIdleAnimation2026"). Independent validation studies have reported agreement with marker-based motion capture across several movement tasks #c("dariciLowcostMarkerlessMotion2026", "minogueValidationFreetoUseMarkerless2025"), while our own work #c("cherianOpensourceDevelopmentValidation2026") has characterized gait and balance performance, demonstrated integration of multiple pose-estimation backends, and extended the workflow to non-human locomotion (@fig-data).
// Pretty good, but also buries the lede on our validation - we were able to show that our system produces the sub-5-degree of error that some source (cited in aaron's disseration, ask me for it and I will pvide a link) said is the accuracy needs of a clinically useful tool. 

//ALSO IN GENERAL - there are a number of places in this proposal where we reference things that should reference to our letters of collaboration (e.g. Scholl Lab) - need to come up with a good system for doing that, like a naming convention or something to reference the letters from this text? 

// FIGURE — FreeMoCap applications across biomechanics → specialized use cases.
// Rendered in Part 2 (fig-data).
// NOTE - (B) should reference SkellyClicker repo
#figure(
  image("../figures/data.png", width: 100%),
  caption: [FreeMoCap applications from standard human biomechanics to specialized movement-analysis use cases. A. Lower-extremity joint-angle comparison and statistical parametric mapping against Qualisys marker-based motion capture across multiple pose-estimation backends. B. Custom DeepLabCut integration for tracking a lower-limb prosthesis user. C. Extension to ferret locomotion and neural-behavioral research in collaboration with the Scholl Lab, CU Denver Anschutz]
) <fig-data>

While user adoption has grown, it has outpaced the growth of the maintainer base. Much of the architectural and operational knowledge needed to contribute to the core pipeline remains concentrated within a core development team, while contributor onboarding and technical knowledge decentralization remains immature. 
// Good thoughts in this paragraph, but could be made punchier. We should try to tie this into the global "problem of low quality help" described in Eghbal's book - we have a TON of people who WANT to (a) use the tool, and (b) help develop the tool - BUT the project is so complex its hard to onboard them. Need to solve this problem both to serve users adn onboard developers and build easy routes for users to upskill, self-align, trnsition from user to developer, etc. 

== Team Qualifications
The FreeMoCap team combines scientific and engineering expertise with more than five years of direct experience developing the FreeMoCap software, supporting its community, and managing the technical and organizational challenges associated with its growth. 
// The wording here is a bit awkward and kind of undersells us - the PROJECT is five years old, the team itself has much more XP than that. The PI has 20 years XP in mocap and camera based tools for the study of human perceptomotor research, Aaron has close to a decade, the PROJECT is over 5 years old. 



// PART 3 — Ecosystem Discovery.  Page budget: ~0.75
//
// One of the four Track 1 content areas mandated by NSF 26-506:
//   "Define strategies to assess the need for the innovation, justify why an
//    OSE is the right approach, and identify potential users and developers."
//
// This is PLANNED ACTIVITY. Every item should be something you will DO in the
// twelve months, with an output. "We will interview 30 users across three
// segments" is an activity. "We believe there is demand" is not.
//
// This is also where the mandatory I-Corps for PESOSE participation naturally
// belongs — it is ecosystem discovery training, so reference it here and make
// sure the budget carries salary for the 3-5 person team.




= Ecosystem Discovery

== Need for Innovation
// note - weak start - begining a section with "the available tools" is too swuishy. 
The available tools demonstrate substantial demand for accessible markerless motion capture, but each is built around particular assumptions about users, domains, hardware, or deployment. Commercial systems include biomechanics-focused platforms such as Theia3D and animation/production tools such as Move.ai and Rokoko, while open-source alternatives such as OpenCap #c("uhlrichOpenCapHumanMovement2023"), Pose2Sim #c("pagnonPose2SimEndtoEndWorkflow2022"), and PosePipe #c("cottonPosePipeOpenSourceHuman2022") are largely centered on clinical applications of human biomechanics. These systems also impose different operational constraints: Theia3D relies on expensive hardware, while OpenCap's standard workflow depends on supported iOS devices, necessary log-in screens,  and remote cloud processing. The continued development of domain-specific workflows in individual research laboratories #c("matsumotoThreedimensionalMarkerlessMotion2025", "yangEvaluationCameraConfigurations2025", "needhamDevelopmentEvaluationFully2022", "cimorelliPortableInclinicVideobased2022") indicates that researchers with specialized requirements still build substantial portions of this infrastructure independently.

Our Track 1 scoping will test the premise underlying this proposal: *repeated rebuilding of motion-capture pipelines is an ecosystem failure, as starting over is often easier than extending shared infrastructure.* Track 1 will determine what documentation, contribution pathways, technical interfaces, and governance structures are needed to reduce barriers to extending and contributing to shared research infrastructure.
// See above about the "premise of this proposal" languauge - we DO want to hit the 'duplication of effort' thing strongly, but we dont want to hang the ENTIRE proposal off of it.

== Necessity of an OSE approach
// Again, could be stronger start - we HAVE been FOSS for over 5 years. its core to our identity - its in our name! the project could not exist in any form other than FOSS. The question of sustainability is existential - there is no non-FOSS path for FreeMoCap. 
FreeMoCap's existing community provides early evidence that an OSE can convert
individual expertise into shared infrastructure for the broader user community.
Users have already become contributors in areas including animation, UI design,
and pose-estimation architecture, bringing domain expertise from outside the
core development team into the project, for the benefit of all users. However, these transitions occurred informally and have depended heavily on direct interaction with
the core team. Creating a repeatable path into the ecosystem first requires understanding *who* is trying to use, teach, extend, or contribute to FreeMoCap, *what* technical knowledge each group needs, and *where* the current software and documentation
fail to support them independently. 

== Stakeholder discovery
//See above - need to get th ereal numvbers here, or even betterm put key numbers as KPI's in a table and reference it

//the general thought of this section ("we only know the users that made the effort to seek us out") is strong, but could be made clearer. 
Although telemetry indicates more than 15,000 users, our current understanding of the FreeMoCap community is drawn primarily from users who contact us directly or participate in existing community channels. Some applications have emerged outside the domains we originally anticipated. For example, computational-linguistics researchers have adopted FreeMoCap in published work #c("orrMULTICOLLABASLAffectiveComputing2024","peechattMULTICOLLABMultimodalCorpus2024", "nunnariDGSFabeln1MultiAngleParallel2024") without any prior interaction with the core team. This motivates a broader discovery effort aimed not only at known users, but also at understanding unexpected communities, what drew them to the platform, and what would reduce barriers to sustained and broader adoption.

// re-org this section around the bolded terms. Also, some concept of consideration of XP ladders within each domain (i.e. low XP and high XP versions of each of our user-types)
Our proposed work will combine analysis of existing community activity, community-wide surveys, and the I-Corps for PESOSE stakeholder-discovery process to characterize four user populations reflecting the communities already observed around FreeMoCap: (1) *researchers* across application domains, (2) *educators* and *students*, (3) *creative* and technical users in animation and related fields, and (4) current and prospective *contributors*. We will also interview maintainers of mature open-source projects, not as FreeMoCap users, but as a source of comparative evidence on how successful ecosystems structure contribution, governance, and extension. Discovery will produce three assessments, each addressing one condition under
which extending shared infrastructure becomes easier than rebuilding it.

1) *Cross-domain needs assessment*: how different communities use
FreeMoCap, what brought them to it, and what their work requires that the
shared pipeline does not yet provide. 

2) *Knowledge assessment*: what users must understand to operate the software, what contributors must understand to modify it, which of that knowledge remains undocumented, and what forms of documentation or instruction would allow people to participate without direct access to the core team.

3) *Comparative ecosystem review*: how mature open-source projects of comparable or larger scale structure contribution, extension, and decision-making, and how those structures perform as projects grow. These findings will supply candidate models for evaluation in Organization and Governance and inform the security, community-building, and sustainability work that follows.





// PART 4 — Organization and Governance.  Page budget: ~1.0
//
// One of the four mandated Track 1 content areas:
//   "Outline activities to establish governance and licensing models,
//    development and integration processes, security and privacy safeguards,
//    and metrics for long-term success."
//
// Serves criterion (b): the long-term sustaining vision.
//
// THIS IS THE HEART OF THE PROPOSAL, and the place where your unusual
// situation has to be handled head-on. The FreeMoCap Foundation already
// exists, which is atypical for a Track 1 applicant and cuts both ways.
//
// The resolution — honest, not a dodge: INCORPORATION IS NOT GOVERNANCE. A
// 501(c)(3) whose maintainers all already know each other is a legal wrapper,
// not a distributed development organization. Name the genuine gaps:
//   * a contribution and review process that works when contributors are not
//     already in the room
//   * a succession story for when a key maintainer's role changes
//   * a deliberate licensing analysis rather than an inherited license
//   * a security and release process
//   * any mechanism for funding maintenance after grant money ends
//
// Saying this plainly converts your biggest apparent weakness into evidence
// that you understand the problem well enough to be worth funding. Put it
// early in this section rather than letting a reviewer discover it.




= Organization and Governance
// I want to elevate the reference to this book to a higher level, and use its claims as an organizing spine for the proposal as a whole. Things like the users-vs-dev structure described here, but also her commentary on the various poisons and challenges ofFOSS projects ("prob of low quality help", "scope creep") help motivate our activities as targets to assuage them ("low quality help" -> docs, upskilling, interviews to build tools that let people auto-align, ai-assist learning and RTFM/PEBKAC errors to de-load troubleshooting labor, etc. "Scope creep" -> Community Extensions system (like others use) we build the core and the interfaces, community can build their own plugins targetting sub-skellies, ui, or core software - lets users take advantage of new stuff faster, tests code/etc in practice without adding to the labor of the core devs, we can pull in popular/high-performing plug-ins after they have proven themselves as community plugins (like Blender does with,e.g., Grease Pencil and Rigify - started as add-ons, eventually pulled in as core functionality) ). We should find a way to pull that conversation up EARLY in the proposal, and then reference into it throughout the rest of the sections.
_Working in Public_ #c("eghbal2020"), an analysis of open-source maintenance and sustainability,  distinguishes open-source projects by the growth of their user and contributor bases. FreeMoCap currently resembles a _stadium_: high user growth with comparatively low contributor growth, leaving a large community dependent on a small maintainer base. *Track 1 will build on that foundation by scoping the transition toward a _federation_, in which user and contributor bases grow together and technical knowledge, responsibility, and authority are distributed across the ecosystem.*

== Governance Scoping

// Undersells the PEP thing again - we shoudl reference e.g. Numpy and Scipy, both of whom use a similiar PEP-like/RFC structure for how to handle the balance between the need for transparency and community engagement w/o getting bogged down and bottlenecked by consensus seeking effort as the community of users grows and expands. 
Federated projects require the distribution of decision-making and knowledge such that it does not depend on any one person. Python's PEP process is one example, in which an elected steering council, trusted core contributors and editors, and a formal proposal process distribute technical authority across the community. We aim to evaluate such models against FreeMoCap's structure and scale, using interviews with maintainers of mature open-source projects during Ecosystem Discovery to supply the candidate models. 

== Distributed infrastructure and community extensions

A federated model requires distributed technical knowledge and the ability for
contributors to extend the software without the core team implementing each
addition. FreeMoCap's modular architecture provides a technical basis for this:
the `skellytracker` interface provides an open interface through which AI-based pose-estimation models developed by different groups can interoperate with a shared scientific workflow without modification to the underlying pipeline. This interface matters because no single pose-estimation model is adequate across
subjects. The algorithms in common use are trained on standard human datasets,
and the requirements of biomechanical measurement differ from those the models
were built to satisfy #c("seethapathiMovementScienceNeeds2019").

//The reasoning here is sound (e.g. non-standard subjects), but we should also reference the fact that models/tech changes, so creating our poly-repos around core structures (cameras, image-analysis, etc) lets us adapt our pipelines around the advances of technology with relative ease. If we do this right, we get BOTH advantages

A community extension, in this context, is code written and maintained by
someone outside the core team that runs against a published interface without
altering the shared pipeline. A researcher whose subjects fall outside existing models could implement a tracker against a documented interface rather than assembling an
entire pipeline around it, and the result would be available to everyone facing
the same problem, while an AI method published by a computer-vision researcher can be translated into a reusable scientific workflow for users who would otherwise lack the technical expertise to implement it. Track 1 will define the review, distribution, maintenance, and responsibility structures required for this model, informed by projects already operating extension ecosystems. The resulting framework could support other community-developed capabilities, including biomechanical analyses.

== Licensing
// Need stronger explaination here - we use AGPLv3+ because so much of the landscape here hides critical functionlaity behind server endpoints, and the AGPLv3 is the ONLY license that protects us from those folks just running FMC behind a proprietary endpoint. Our ownership structure allows us to create B2B sub-licensing agreements to people that need a more permissive non-AGPLv3 license, and those licenses can be part of our sustainability/busieness model 
FreeMoCap and its component repositories are licensed under the AGPLv3+, on the
premise that improvements to publicly funded infrastructure are most valuable
when they return to the broader community. The Foundation retains the ability to
offer alternative terms to organizations whose intended use is incompatible with
the AGPLv3+, keeping the software freely available while generating resources for
maintenance and stewardship.

== Long-term Sustainability
The FreeMoCap Foundation was incorporated as an IRS-recognized 501(c)(3) public charity to provide an institutional home for the project, and the governance structures scoped above are intended to give that home a distributed contributor base rather than a dependence on any particular maintainer. In parallel, the Foundation will evaluate a diversified model for the long-term sustainability of this research infrastructure, including alternative commercial licensing, standardized hardware kits, training and support services, institutional partnerships, and continued grant funding. SkellyTech, LLC, a separate for-profit entity associated with the project, provides an additional pathway for commercial services and other revenue-generating activities that may support the long-term sustainability of the ecosystem.

// Money making sources - Shop (sell hardware, student kits, etc), Clients (specialized workflows, custom rigs, etc), Grants, Donations (small potatoes for now, but grows with user base). Also seek - SBIR/STTV w/e under the SKellyTrech LLC to support these business-flavored activities

// -----------------------------------------------------------------------------
// CLOSING OUTPUT SENTENCE — one sentence, no heading, naming what this section
// produces. Keeps activity and output adjacent so the section does not read as
// pure intention, without duplicating the milestone table in Part 7.
// Must correspond to a row in that table.
// -----------------------------------------------------------------------------
// TODO: "This work produces draft governance and licensing documents, posted publicly and reviewed by maintainers of comparable OSEs."

// PART 5 — Risk Analysis / Security Plan.  Page budget: ~0.75
//
// One of the four mandated Track 1 content areas:
//   "Identify anticipated security, safety, and privacy risks and explore
//    mechanisms for quality assurance, secure modification and release,
//    identity management, and chain of custody."
//
// PESOSE added "Secure" to the program name in the 26-506 revision, so this
// is not boilerplate any more — it is a named program priority and a
// reviewer will look for it.
//
// For FreeMoCap specifically, the privacy surface is real and worth naming:
// the software processes video of human bodies, frequently in clinical,
// pediatric, or research settings. That is a genuine safety and privacy
// consideration that a generic software project cannot claim, and it
// strengthens the case rather than complicating it.
//
// The solicitation also points proposers at CISA/NSA software supply chain
// guidance and the OpenSSF best practices criteria. Referencing those signals
// that you know the landscape.




= Risk Analysis and Security Plan

Video-based motion capture creates inherent privacy concerns because identifiable recordings must be captured and processed. These concerns can themselves become a barrier to adoption: recent work on OpenCap found that patients remained concerned about video sharing, storage, and access despite HIPAA-compliant cloud safeguards #c("aitkenPatientPerceivedFeasibilityImplementing2026"). FreeMoCap avoids this cloud-data surface by processing video and derived data locally, without requiring a network connection, allowing sensitive recordings to remain under the user's direct control.

Secure and trustworthy research infrastructure also requires addressing software-supply-chain risk. FreeMoCap depends on a substantial stack of computer-vision, machine-learning, and scientific-computing libraries, and the proposed community extension system would introduce additional third-party code into the processing environment. Track 1 will assess FreeMoCap against security standards maintained by the Open Source Security Foundation (OpenSSF), which provides established criteria and certification pathways for secure open-source development. This assessment will identify gaps and the requirements needed to reach an appropriate certification level, informing both a project security roadmap and the review, approval, and release controls needed to guard against malicious or inadvertently unsafe community extensions.

== Data Integrity
While the fidelity of FreeMoCap-produced data has been and continues to be validated, *preserving the integrity of that data (i.e., that modifications to the software do not silently alter the measurements it produces) is an ecosystem responsibility*. Track 1 will scope stage-specific integrity checks across the processing pipeline, with expected outputs tracked across software versions. These may include calibration checks against known board geometry, 2D pose-estimation consistency, 3D reconstruction metrics such as positional differences, smoothness, and jerk, comparisons against reference datasets, and checks before and after each post-processing operation so that the effect of filtering or other transformations is explicitly measured. Camera characteristics are also part of the measurement chain. Collaboration with Imatest LLC, whose work includes ISO/TC 42 standards activity on image-information content, will inform how imaging-system limitations can be characterized, reported, and made visible to users.

== Identity and Telemetry
Potential ecosystem features such as contributor recognition, authenticated accounts, and usage telemetry introduce additional privacy and security considerations. Track 1 will scope approaches that minimize collected data and preserve FreeMoCap's local-first principles, including evaluation of established authorization approaches such as OAuth 2.0 for account-based features. The project's industry mentor, Endurance Idehen, will advise this work, including authentication, authorization, telemetry, and related security controls.

Together, these activities will produce a risk register, draft extension review and release controls, and a data-integrity and security roadmap.



// PART 6 — Community Building.  Page budget: ~0.75
//
// One of the four mandated Track 1 content areas:
//   "Describe plans to engage users and developers through activities such as
//    workshops, hackathons, competitions, and research networks."
//
// Serves criterion (c): a recruitment strategy for new contributors AND for
// growing the userbase. Note that criterion (c) has two halves — contributors
// and users are different populations with different funnels. Address both
// explicitly or you will lose half the credit.
//





= Community Building

Community building is a critical part of the transition from a _stadium_ to a
_federation_ ecosystem. *A larger contributor base only reduces dependence on the
core team if users and contributors have enough knowledge to act independently;
otherwise, growth simply shifts effort toward support, review, and correction.*

The FreeMoCap Foundation maintains an active Discord community forum of more than
4,000 members, structured so that users can ask and answer questions without
relying exclusively on the core development team. The core team also hosts a
weekly community call for project updates, user feedback, technical discussion,
and interaction with potential contributors. These activities provide an
established foundation for community engagement, but rapid user growth in 2026
(@fig-star-chart) *has increased the need for education and participation models
that can scale beyond direct interaction with maintainers.
*
// FIGURE — GitHub star history. Rendered in Part 6 (fig-star-chart).
#figure(
  image("../figures/star-history.png", width: 50%),
  caption: [Github star chart]
) <fig-star-chart>

Track 1 will develop and pilot accessible educational and participation pathways at three levels: *introductory materials* for general users; *intermediate and domain-specific resources* for scientific, technical, creative, and educational applications; and separate *developer documentation* covering software architecture, contribution workflows, testing, and maintenance responsibilities.

These materials will be piloted through hands-on classes and workshops with
partner organizations, including The Possible Zone and Artisans Asylum, and through tutorials and guided projects made available to the broader community. Pilots will identify where learners encounter conceptual or technical barriers, which formats work best for different audiences, and what knowledge can be transferred without direct core-team instruction. 

Track 1 will also test low-barrier forms of community participation that do not
require software development, including community-created visualizations,
artwork, examples, challenges, and other ways for users to contribute domain
expertise. Together, these activities will inform a scalable education and
onboarding model that supports progression from user, to informed participant,
to sustained contributor. Longer term, the resulting model could inform a
larger FreeMoCap community meeting or conference bringing together users,
developers, educators, and researchers as part of a subsequent Track 2 effort.



= Milestones and Evaluation Plan

// TABLE — quarterly milestones and evaluation matrix. Rendered in Part 7.
// Set rules are scoped inside the block so nothing leaks into the sections
// included after this one (Typst #include behaves like pasting the file's
// content inline at the include point).
// NOTE: table cell text may legally drop below 10pt (PAPPG 24-1 II.C.2.a
// exempts tables) — e.g. `text(size: 9.5pt, table(...))` if width demands.
#block(
  breakable: false,
  [
    #{
      set par(
        justify: false,
      )

      table(
        columns: (2.5em, 1.55fr, 1.15fr),

        // More vertical breathing room inside each cell
        inset: (x: 2pt, y: 2.5pt),

        stroke: 0.4pt,

        table.header(
          [*Qtr*],
          [*Milestone / Deliverable*],
          [*Evaluation*],
        ),

        [Q1],
        [Complete I-Corps for PESOSE; establish baseline ecosystem metrics],
        [Completion confirmed by I-Corps instructors],

        [Q1--Q2],
        [Stakeholder discovery; prioritized user and contributor barrier map],
        [Target groups covered; recurring barriers confirmed],

        [Q2],
        [Develop candidate governance, contributor, and stewardship models],
        [Compared with discovery findings and reviewed by OSE maintainers],

        [Q2--Q3],
        [Define extension contribution, maintenance, licensing, and review requirements],
        [Tested against discovered extension needs; external OSE review],

        [Q3],
        [Security/data-quality scoping; prototype benchmarking and regression suite],
        [Known output differences detected; risks mapped to controls],

        [Q3],
        [Pilot education and onboarding with partner organizations],
        [Participant feedback and observed barriers],

        [Q4],
        [Integrate findings into governance, sustainability, community, and implementation roadmap],
        [Processes usable without direct core-team consultation],
      )
    }
  ],
)

== Evaluation
Track 1 success will be evaluated by: (1) documented governance roles, contributor pathways, and software architecture, assessed by whether contributors outside the core team can act on them without direct consultation; (2) educational and onboarding materials, assessed through pilot participant performance and observed barriers; and (3) a framework for developing, reviewing, distributing, and maintaining community extensions, assessed through limited pilots of the proposed extension process. Each output will be revised in response to stakeholder feedback before incorporation into the final ecosystem plan.



// PART 8 — Broader Impacts.  Page budget: ~0.5
//
// PAPPG II.D.2.d(i) is unusually prescriptive: this must be a separate
// section within the narrative, labeled "Broader Impacts", with that phrase
// appearing as a heading on its own line. The `broader-impacts()` helper
// guarantees the exact string — do not hand-type the heading.
//

//
// Also worth connecting to the solicitation's own Measures of Success:
// data sets established or expanded, new technologies or techniques
// established, participants hired into a STEM field, new infrastructure built.




= Broader Impacts
In a fully developed ecosystem, the same software can serve a thirteen-year-old with a webcam and a research laboratory measuring clinical populations. A contribution made by an animator can improve the software for researchers and clinicians, and scientific advancements can become accessible to artists, educators, students and hobbyists.  A sustainable FreeMoCap ecosystem can turn specialized adaptations into shared infrastructure, increasing the return on public investment in scientific software while creating pathways for expertise to move across fields.

The educational activities piloted under this proposal will help develop and test materials for users of differing technical backgrounds to progress towards independent software use, and where desired, contribution. A mature ecosystem can help a user understand how a pixel on an image can become a 3D point in space with the software, rather than just operating it. By pairing extensible infrastructure with education and cross-domain participation, FreeMoCap, supported by a developed ecosystem, can broaden not only who has access to quantitative measurement tools, but also who is able to understand, adapt, and help shape them. 


// ════════════════════════════════════════════════════════════════════════════
// PART 9 — Results from Prior NSF Support — DISABLED (the include was already
// commented out in main.typ). PAPPG II.D.2.d(iii) REQUIRES this section if any
// PI/co-PI has current or recent NSF funding (e.g. the 2024 POSE award, if received).
// Status must be confirmed; until then the scaffold stays commented so no empty
// section ships. Scaffold preserved verbatim below.
// ════════════════════════════════════════════════════════════════════════════
//// PART 9 — Results from Prior NSF Support.  Page budget: ~0.5-1.0
////
//// PAPPG II.D.2.d(iii). REQUIRED if any PI or co-PI has current NSF funding,
//// or an award whose end date falls within the past five years — regardless of
//// whether that award related to this proposal. If more than one award
//// qualifies, report only the single most closely related one.
////
//// The rules: results must be split under two distinct headings, Intellectual
//// Merit and Broader Impacts. Publications must be listed, or you must state
//// that none were produced. Evidence of research products and their
//// availability is required, and PAPPG names software explicitly — good for
//// you.
////
//// SPACE WARNING: PAPPG allows up to five pages here, but those five pages come
//// out of your seven. At Track 1 length, five pages would leave two for the
//// entire proposal. Target half a page to one page. The allowance is written
//// for 15-page Tracks 2 and 3.
////
//// IF NEITHER PI NOR ANY CO-PI QUALIFIES: delete this file and remove its
//// #include from main.typ. Do not include an empty section.
//
//#import "../../template/nsf.typ": budget, prior-support
//
//
//
//#prior-support(
//  award-number: [TODO],
//  amount: [TODO],
//  period: [TODO],
//  proj-title: [TODO],
//  intellectual-merit: [TODO],
//  broader-impacts: [TODO],
//  // Pass `publications: none` to auto-emit the exact required sentence
//  // "No publications were produced under this award."
//  publications: none,
//  products: [TODO — software counts, and PAPPG names it explicitly],
//)
