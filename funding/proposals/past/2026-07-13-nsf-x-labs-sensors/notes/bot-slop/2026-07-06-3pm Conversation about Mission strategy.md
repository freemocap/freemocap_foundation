# Progress Capture — NSF X-Labs (Topic 2) Mission Reorientation

**Conversation date:** 2026-07-06 **Subject:** Reorienting the Mission section of the FreeMoCap Foundation's NSF X-Labs (Topic 2, Scientific Instrumentation for Sensing and Imaging) Written Proposal. **Output directory for this file:** `/mnt/user-data/outputs/conversation-progress-capture-mission-reorientation.md` **Companion artifact produced this session:** `/mnt/user-data/outputs/mission-section-outline.md` (the Mission structural outline, v2).

> **Reading note.** Part 1 is the turn-by-turn narrative. Part 2 foregrounds **what Jon actually said** (his framings and claims, kept close to his words). Part 3 is an **assumption ledger** that separates Jon's assertions from Claude's interpretations — written because Jon explicitly flagged that Claude over-commits to assumptions, and there is at least one instance in this conversation where Claude reshaped Jon's point. Parts 4–6 are extracted themes, open decisions, and operative NSF constraints.

---

## PART 1 — Narrative (turn by turn)

### Exchange 1 — First read of the draft, and the fit problem

**Jon** uploaded three NSF documents (the OTASO solicitation, its Attachment A template, and the Topic 2 announcement) plus a heavily-commented Typst source file for the Mission section. The draft was organized in seven beats (hook → gap/fracture → instrument → build → xlab → vision → mission), built around a "Dense Empirical Capture Volume" (DECV), with DECV-L and DECV-W variants, a sensor-grounded ontology, the "hydration" idea, a torsion/accommodation eye-tracker thread, an animal-model network, and the FreeMoCap Foundation as the organizational vehicle. It was full of self-critical TODOs. He asked for an evaluation of **quality and fitness** for the Sensing-and-Imaging topic, noting it's a draft that will be polished later.

**Claude** read it against the topic announcement and led with the single biggest risk, framed as a _fitness_ question: **does this read as "Sensing and Imaging"?** The argument: Topic 2 opens with "telescope → MRI," its examples are all new transducer _physics_, and it explicitly excludes "computational or software solutions without practical integration into an instrumentation system" and anything "narrow / not widely deployable." The draft's novel contribution — the _ontology + calibration/fusion layer_ — is real and hard, but to a primed reviewer it can pattern-match to _systems integration / software_, i.e. the out-of-scope bucket, because the DECV is not on its face a new sensing modality; it's a new way to unify existing ones.

Claude then argued Jon **already had the antidote written down twice and had flagged both as weak:**

- `gap_technical` — "the fracture is in the measurement itself, not just in the sociology of the fields" — which Claude called the most important sentence in the document _for fitness_ and told him to elevate rather than cut (he'd marked it "this sucks").
- The **torsion/accommodation eye tracker** — an actual new-transducer capability — which was buried in a footnote/TODO and should be a hero deliverable.

Claude endorsed his own TODO "Talk about hardware before software," pointed out Topic 2 explicitly lists "instruments intentionally engineered for next-generation AI training pipelines" as in-scope, praised what was working (the hook "the brain exists to yank the bones around"; the beat spine; `mission_a`; the structural-not-grievance X-Lab framing; `xlab_b`'s proven-model credibility), and named two weaknesses beyond prose: **focus/sprawl** (three heroes fighting — DECV, ontology, network) and **beat overlap** (`gap_technical` and `gap_structural` both arguing "nobody built it"). Summary of the panel's future skepticism: _"Is this a new instrument, or a very good software layer over existing instruments?"_

### Exchange 2 — The DOME reorientation and the acronym

**Jon** uploaded a knowledge-graph zip he'd built "with the bot" (broader than what reached the page) and described the plan: reorient around building the **DOME** (a backronym reworking of DECV; he floated "Dense Observation Measured Environment or something" and asked for help picking a good acronym). Three DOMEs specifically:

- **DOME-L** (Large) — warehouse-scale, big enough to hold and validate smaller DOME-S copies.
- **DOME-S** (Standard/small) — the kind found in a standard lab or classroom.
- **DOME-W** (wearable/walking) — IMU suit + eye tracker + mocap drone swarm, building on Matthis 2018/2022.

His framing: _build the DOME as a tool to measure the full agent/environment interaction; the mission of the X-Lab is to develop and validate the platform for use by others in their research_ — which is why DOME-L (to develop and validate DOME-S and DOME-W) matters. The ontology helps because it makes the DOME a platform where **the researcher decides which instruments to attach, and which weaknesses in existing hardware define the next focus.** For his lab: mocap (done-ish via FreeMoCap) and **eye trackers (which suck right now)**. Then the hardware build: the best mocap camera, integrating IMU + camera into a hybrid estimate, plus the future/"wacky" drone swarm to ground the drifty IMU signal during overground walking in DOME-W. He was emphatic that the **biggest weakness in modern tech is mobile eye trackers** — "shitty and old and closed," fundamentally unable to measure **torsion or lens accommodation** — and that modern (smartphone-grade) cameras could measure both, which matters because _you need those values to actually estimate the retinal projection hitting the back of the eye._ He added they're building equivalent eye trackers for humans, mouse, and ferret, and have already done so successfully in ferret and mouse. He asked: would that help?

**Claude** read the vault and observed it **confirmed Jon had already converged internally on this reorientation** (the "instrument, not software" thesis note; "software exclusion is largely a non-issue now"; "lead with the physical thing"). On the acronym: endorsed DOME, with the argument that **a dome is natively a scientific-instrument enclosure (the observatory dome), which rhymes with the topic's "telescope"** — so the word does framing work regardless of the expansion. Recommended "Dense Observational Measurement Environment" (with "Dense Omni-modal Measurement Environment" as an alternative), and flagged the **suffix-axis inconsistency** (L/S are scale, W is form-factor), mapping it onto the vault's Wing A (room) vs Wing B (wearable): DOME-L/DOME-S are fixed-volume rooms; DOME-W is the mobile variant.

Claude then argued the reorientation **fixes the fit problem four ways**: (1) three physical DOMEs are self-evidently instrumentation, so the ontology demotes to a "how it scales" clause; (2) the eye tracker is the real sensing-and-imaging crown jewel (torsion + accommodation = DOFs no tracker measures at any price; his "camera-quality bet, not a physics bet"; the VOR/Listing's-law retinal-projection argument) and should be a hero beat; (3) DOME-L-validates-DOME-S gives NSF a mission-justified reason the flagship must be warehouse-scale (a metrology/validation platform, not "bigger is cooler"); (4) it resolves the platform-technology-singularity — the platform _is_ the DOME, and the prettiest form is that **the instrument's ontology tells you which sensor to build next**. Four cautions: focus risk is sharper not gone; scope the drone swarm as later-phase; keep mocap reading as "solved substrate," never "the new thing"; and the vault flags several citations as possibly post-cutoff.

### Exchange 3 — The robot ecosystem, ARGPv3, and "is there anyone else?"

**Jon** said there was another piece to integrate: **the robot-training ecosystem the DOME could feed.** Because they're building the DOME and hydrating what he called the **"Sensor-Grounded-Ontology-Web-of-Belief"**, they're well-positioned to use the recorded data to build/feed **reinforcement-learning models for robotics** — porting DOME data into Nvidia Isaac Gym and MuJoCo. The loop he described: feed the data to roboticists and "exo folks," they build RL and control-theory models off it, and those models become **testable hypotheses back in DOME-L.** He also wants to build **ARGPv3** — the third iteration of the augmented-reality ground plane (V1: Matthis 2013/2014/2015/2017; **V2 was at NEU and never got off the ground _precisely because of_ unmet institutional needs within standard academic institutions and funding**). ARGPv3 = modular LED screen ground panels (plus projectors and VR) to run controlled full-body perception-and-action experiments that **"close the loop"** from the DOME's pure observation and the control theories extracted from the robot people and the animal-collaborator network. Then the framing statement: _"I know this is a lot to promise, but remember — I am Jonathan Samir Matthis. I am literally the guy to do this."_ He noted the proposal offers tens to hundreds of millions of dollars, that they want to be **grandiose** in the presentation, and asked Claude to **look him up online** and say whether **anyone else could pull this plan off** (him plus his network of human, animal, and robot collaborators).

**Claude** searched and confirmed the public record: Assistant Professor of Human Movement Neuroscience, Northeastern Biology; ~1,431 citations; the two paradigm papers (Matthis 2018 gaze/gait outdoors, Matthis 2022 retinal optic flow); FreeMoCap founded 2021 with the "$100 / 14-year-old" mission, now a global user base. Claude then made the **framing upgrade**: the robot loop + ARGP together **convert the DOME from an observation instrument into a full experimental instrument** — you can run the whole hypothetico-deductive cycle (observe → model → predict → manipulate → re-observe) inside one apparatus, which is what actually earns the "reshapes a field" claim. Specific placements: the robot loop is the bridge to **NSF TIP's** technology-sector/competitiveness mandate (and hits the named in-scope "AI training pipelines" example); **ARGPv2's death is a first-person, evidentiary instance of the exact "unmet by existing structures" criterion**; and ARGP is the _lowest-risk_ "wow" deliverable (V1 is built). Claude advised **alluding in the Mission, developing in Outcomes**, flagged the ResNet≈V1 convergence claim as citation-needed, and gave the honest **"anyone else?" verdict**: the _intersection_ of the six required capabilities is rare-to-unique, but the strongest defensible form of the claim is that Jon is uniquely suited to **architect and hold together** the instrument and network — not to personally execute every arm — and that grandiosity works only when each large claim is paired with a specific receipt.

### Exchange 4 + 5 — Two consecutive messages: the tool-building lesson, and the commons insight

_(Jon sent two messages back-to-back before Claude replied; Claude's next response addressed both.)_

**Jon (message 4)** asked Claude to **flush out and properly ground the robots-training-illuminates-neural-activity claim** ("I do think that's important to get out"). Then he described **the main lesson he learned at Northeastern:** it is _fundamentally not the job of a student to create a tool._ His career has converged on tool-building — specifically _integrated_ tool-building — and he realized that's not a task you can offload to students/trainees under the standard academic model, because **"students just don't have the right intuition… they haven't learned all the lessons that you have to learn to make a tool correctly,"** so they make sloppy tools. His framing: **a tool wants to be built by a master, so the master can impart their experience/mastery into the tool, so that it can then be used by students to do the science the master believes matters.** Feeding tool-building back into the least-experienced layer of the hierarchy "just doesn't work." This, he said, is why he pivoted to FreeMoCap and why his research career **couldn't happen at a university** — both because academia doesn't reward tool-building (novelty/publication incentives) and because of this structural inversion.

**Jon (message 5)** added, on the theme of _not trying to do everything himself:_ he thinks a core reason FreeMoCap succeeded is that **it is very careful to bound its task.** Unlike OpenCap (sports/clinical biomechanics) or DeepLabCut — which are scoped to a specific research domain — **FreeMoCap is focused entirely on the measurement and the usability of a tool that turns cameras and lights into skeleton estimates**: the focus is the tool, the cleanliness of the metrology, and — most critically — the **usability.** The result: FreeMoCap became **an intellectual commons for both researchers and animators**, because those groups overlap in what they measure (both care about high-quality recordings of humans moving in the world). Because the focus is the measurement apparatus, specialists in disparate fields — **sports biomechanists, roboticists, animators, video game designers** — now operate in the same space and build entirely new things, and **"the cross pollination that comes out of that is really incredible to watch."**

**Claude** replied that these are the same insight aimed at two targets, and did three things. (1) **The robot→neural citation ladder**, weakest-to-strongest: the shallow filter-resemblance result (AlexNet first-layer Gabors, Krizhevsky 2012; Zeiler & Fergus 2014) — but _don't rest there_; the strong version is DiCarlo-lab goal-driven modeling (Yamins et al. 2014 PNAS; Yamins & DiCarlo 2016 Nature Neuroscience), where task-optimized networks became the best predictors of IT/V4 firing rates _without ever being fit to neural data_; plus Khaligh-Razavi & Kriegeskorte 2014. Claude was explicit that these are pre-2020 landmarks it's confident about _from training, not this session's search_, that DOIs need pulling, and that the **more on-target literature is motor-cortex RNNs** (Sussillo, Michaels — RNNs trained on reaching recover M1 dynamics), which is post-2018 and would need a live search. The safe Mission-level framing: the trained model is a _falsifiable hypothesis_, and the DOME + animal network is the _test bench_. (2) **The institutional argument**, where Claude drew a weak-framing/strong-framing distinction and steered toward "tool-building and training are inverted apprenticeships; academia only has machinery for one" — an incentive/structure mismatch, _not_ a competence claim. (3) **The commons argument as the strongest single point:** a tool defined by a _domain_ partitions its users; a tool defined by a _measurement_ unites everyone who needs that measurement — the boundary-object move — and FreeMoCap already ran that experiment successfully, making it the completed pilot study for the DOME's central bet. Claude offered to draft the "why this can't be academic science" passage and run the citation searches.

### Exchange 6 — The request for a Mission outline

**Jon** said this was really helpful, told Claude **not to stress about the citations yet** ("we can nail that down later… for now it's just enough to know the general story"), and asked for a **detailed OUTLINE artifact** that structurally lays out the whole Mission and every point to include — written as an outline with phrases/sentences that _allude_ to the intended content, to be worked up into prose later. He re-scoped: **only the Mission section for now**, since other sections have room for the overflow. He asked Claude to re-check the NSF X-Labs OTASO, the Topic 2 announcement, and the template.

**Claude** re-read the three source docs, confirmed no markdown skill was needed, and produced `mission-section-outline.md`: a beat-by-beat structure (boxed Mission line → hook → measurement-revolution frame → the fracture → the DOME hero, hardware-first → the closed loop, allude → why-unmet, three moves → vision, two-sided), each beat tagged with the criterion it serves and marked `[SAY]` / `[ALLUDE]` / `[DEFER]`, plus three Mission-statement candidates and a Part D of sequencing rationale and open decisions.

### Exchange 7 — The download problem

**Jon** reported the file wouldn't download. **Claude** confirmed the file was intact on disk (a UI/rendering issue, not a broken file), re-presented it, and pasted the full outline inline as a guaranteed fallback, with a couple of practical suggestions (desktop web view, download-blocker).

### Exchange 8 — This progress-capture request (current)

**Jon** set standing **code-style preferences** (typehints everywhere, kwargs-over-args, fail-loud/throw-don't-warn, no backwards-compat, new-style typehints, no local imports, explicit filenames, TypeScript-not-JS, no comments referencing prior code states, no "_fixed/_new" naming) and requested an **extremely deep, detailed, narrative progress capture** of the whole conversation, followed by extracted main points/themes/things-to-remember, with **particular attention to what he said rather than Claude's interpretations**, explicitly warning that **Claude over-commits to assumptions.** _(This document is that capture. The code preferences are prose-irrelevant here but logged for future code work.)_

---

## PART 2 — What Jon said (his positions, foregrounded)

Kept close to his own framing. These are **his** claims and framings, not Claude's.

**On the reorientation and the DOME**

- The plan is to reorient the whole proposal around building the **DOME**, in three specific instances: **DOME-L** (warehouse, validates the smaller ones), **DOME-S** (standard, lab/classroom), **DOME-W** (wearable — IMU suit + eye tracker + drone swarm).
- The DOME is _a tool to measure the full agent/environment interaction_; **the X-Lab's mission is to develop and validate the platform for use by others in their research.** DOME-L exists _to develop and validate_ DOME-S and DOME-W.
- The ontology matters because it makes the DOME a **platform where the researcher decides which instruments to attach, and where the weaknesses in existing hardware define the next thing to build.** He calls the broader construct the **"Sensor-Grounded-Ontology-Web-of-Belief."**

**On eye trackers (his most emphatic technical point)**

- The **biggest weakness in modern tech is mobile eye trackers** — "shitty and old and closed."
- They **fundamentally cannot measure torsion or lens accommodation.**
- **Modern cameras (smartphone-grade) could measure both** — and this matters because **you need those values to actually estimate the retinal projection hitting the back of the eye.**
- They are building **equivalent eye trackers for humans, mouse, and ferret**, and have **already done so successfully in ferret and mouse.**
- Mocap is "done-ish" via FreeMoCap; the hardware build ahead is the best mocap camera and an **IMU + camera hybrid estimate**, plus the "wacky" drone swarm to ground drifty IMU during overground walking.

**On the robot ecosystem**

- Because they build the DOME and hydrate the ontology, they are in a great position to use the recorded data to **build/feed RL models for robotics** — porting DOME data into **Isaac Gym and MuJoCo.**
- The intended flow: **give the data to roboticists and "exo folks," they build RL/control-theory models, and those models become testable hypotheses in DOME-L.**
- He wants the robots-illuminate-neural-computation claim **flushed out and properly grounded** because he thinks it's important to get out.

**On ARGPv3**

- ARGPv3 is the **third iteration of the augmented-reality ground plane** (V1 = Matthis 2013/2014/2015/2017).
- **V2 was at NEU and never got off the ground _precisely because of_ unmet institutional needs within standard academic institutions and funding.** (He offered this as evidence, not backstory.)
- ARGPv3 = **modular LED ground panels + projectors + VR** to run controlled perception-action experiments that **"close the loop"** between the DOME's observation, the robot-derived control theories, and the animal-collaborator network.

**On the institutional argument (his Northeastern lesson)**

- **It is fundamentally not the job of a student to create a tool.**
- His career has converged toward **tool-building, specifically integrated tool-building.**
- **Students "just don't have the right intuition"** and "haven't learned all the lessons you have to learn to make a tool correctly," so they make sloppy tools. _(Noted here in his own words; see the ledger in Part 3 for where Claude reframed this.)_
- **A tool wants to be built by a master**, so the master imparts their experience/mastery into it, **so it can then be used by students to do the science the master believes matters.** Feeding tool-building down to the least-experienced layer "just doesn't work."
- His research career **couldn't happen at a university** — both the incentive structure (novelty/publication) _and_ this structural inversion.

**On the commons / bounded-task insight**

- A core reason FreeMoCap succeeded: **it is very careful to bound its task.**
- Unlike OpenCap (sports/clinical biomech) or DeepLabCut (a specific research domain), **FreeMoCap is focused entirely on the measurement and the usability of a tool that turns cameras and lights into skeleton estimates** — the tool, the **cleanliness of the metrology**, and, **most critically, the usability.**
- The result: FreeMoCap became **an intellectual commons for researchers _and_ animators**, groups that overlap because both care about high-quality recordings of humans moving in the world.
- Consequently **sports biomechanists, roboticists, animators, and video game designers now operate in the same space and build entirely new things**, and the **cross-pollination "is really incredible to watch."**

**On ambition and himself**

- _"I am Jonathan Samir Matthis. I am literally the guy to do this."_
- The proposal offers tens to hundreds of millions; they **want to be grandiose** in the presentation.
- He asked directly whether **anyone else could pull this plan off** (him plus his network of human, animal, and robot collaborators).

**On process / scope**

- The draft "will get polished later."
- **Don't stress about citations yet** — the general story is enough for now.
- **Only the Mission section for now**; other sections will hold the overflow.
- This progress capture should weight **what he said** and be wary of Claude's assumptions.

---

## PART 3 — Assumption ledger (Claude's contributions vs. Jon's assertions)

Written specifically because Jon flagged that Claude over-commits to assumptions. Each item names who originated it and how settled it is.

**Reframes Claude introduced that Jon did _not_ explicitly ratify:**

- **The observatory-dome resonance** ("a dome is an instrument enclosure; it rhymes with the telescope"). _Claude's framing._ Jon asked for acronym help; he did not confirm this reading lands or that it should appear in the proposal.
- **"Dense Observational Measurement Environment"** as the DOME expansion. _Claude's recommendation._ Jon floated "Dense Observation Measured Environment or something" and asked for options; the expansion is **unresolved.**
- **The four-ways-it-fixes-fit analysis** and the **"instrument's ontology tells you what sensor to build next"** phrasing. _Claude's synthesis_, drawn partly from Jon's vault, but the specific formulation is Claude's.
- **The "anyone else?" verdict** — that Jon is uniquely suited to _architect and hold together_ the network rather than personally execute every arm; that OpenCap/DeepLabCut/Hayhoe are the nearest adjacencies but none holds the whole stack; that grandiosity needs receipts. _Claude's assessment._ Jon asked the question; he has not responded to the answer.
- **Scope recommendations** — drone swarm as "highest-risk, later-phase," ARGP as "lowest-risk wow deliverable," mocap as "solved substrate, never the new thing." _Claude's recommendations_, not Jon's stated decisions.

**The one place Claude reshaped what Jon said — flagged explicitly:**

- Jon's stated version of the tool-building lesson leaned partly on **competence**: students "don't have the right intuition," "haven't learned all the lessons," make "sloppy tools." **Claude deliberately steered this toward a purely _structural/incentive_ framing** ("inverted apprenticeship," "category error," "not competence") on the grounds that reviewers are professors with students and the competence-flavored version is a trap. **This is a genuine reshaping, not a transcription.** Whether the proposal should adopt Claude's softened structural version or keep more of Jon's sharper competence claim is a decision **Jon has not yet made** and should ratify consciously.
- Relatedly: Jon said FreeMoCap was "built from the sort of student-oriented way." Claude folded this into "built by a master, used by students" without dwelling on the tension. Jon's exact meaning of "student-oriented" (usable-by-students vs. built-by-students) was **not pinned down**; it is left as his words rather than Claude's interpretation.

**Claims Claude presented as evidence but did not fully verify this session:**

- The neural-modeling citations (Yamins/DiCarlo, Zeiler & Fergus, Khaligh-Razavi & Kriegeskorte, the motor-cortex-RNN line). Claude was explicit these come **from training, not live search**; DOIs unpulled. Jon said not to worry about it yet.
- The vault's own `#verify` flags (post-cutoff arXiv/bioRxiv IDs; the primate/marmoset collaborator "TBD"; per-species eye-tracker DOF targets) remain **unverified** and are Jon's calls.

**Verified this session (web search):**

- Jon's title/affiliation (Assistant Professor of Human Movement Neuroscience, Northeastern Biology), citation count (~1,431), the two paradigm papers, and FreeMoCap's founding/mission are **corroborated by public sources.** NSF TIP as the sponsoring directorate and the Topic 2 in-scope/out-of-scope lists are **directly in the uploaded documents.**

---

## PART 4 — Main points, themes, things to remember

**The governing risk (the thing everything else serves):** a Sensing-and-Imaging reviewer may read the proposal as _software/systems-integration_ rather than a _new instrument_, which lands it in an explicit out-of-scope bucket. Every reorientation move exists to make the answer to _"new instrument, or software layer?"_ unambiguously "new instrument."

**The reorientation, in one line:** lead with the **DOME** as a physical, buildable, three-variant instrument; demote the ontology to "how it scales"; promote the **eye tracker** to a hero new-transducer contribution; frame the **robot loop + ARGP** as what closes the observation→intervention experimental cycle; and ground the **why-unmet** argument in the tool-building/commons logic that FreeMoCap already proved.

**The eye tracker is the single cleanest "sensing and imaging" win** — torsion + lens accommodation are channels no tracker measures at any price; the bet is _camera quality, not physics_; the payoff is a retinal-projection reconstruction that current trackers can't support, plus an archive that improves retroactively as the sensor improves.

**The closed loop is what earns "reshapes a field."** Pure capture is observational; DOME + robot-derived hypotheses + ARGP intervention = the full hypothetico-deductive cycle in one apparatus. The robot half also reaches NSF TIP's _technology-sector_ mandate and a named in-scope example (AI training pipelines).

**The why-unmet argument is a three-move sequence, and it is unusually strong because it has a completed pilot study attached:** (1) tools must be built by masters, not trainees — a structural inversion academia can't fix; (2) the right scope for a shared tool is the _measurement_, not the _domain_ — which is what creates a commons; (3) FreeMoCap already demonstrated both, which turns OpenCap and DeepLabCut from competitors into _foils_ (excellent but domain-scoped). ARGPv2's death at NEU is first-person evidence of the gap.

**The credibility posture:** grandiose _and_ grounded. The strongest true claim is that Jon uniquely can **architect and hold the whole thing coherent** (the ontology/metrology spine + the pre-wired human/animal/robot network), with the arms executed by named collaborators/hires. Every large claim pairs with a receipt (FreeMoCap-at-scale; Matthis 2022; the ferret/mouse rigs; ARGP V1; ARGPv2's institutional death).

**The say/allude/defer discipline** is the operating constraint for the ~1.5–2pp Mission: SAY the DOME + variants, the new observable, the eye-tracker must-build, the three-move why-unmet, the two-sided vision; ALLUDE (one clause each) to the ontology mechanics, drone swarm, five-station robot loop, ARGP lineage, animal network; DEFER entirely the DOF targets, FreeMoCap metrics, budget/phasing, roster, citations, and the Palantir/Anduril analogy.

**Recurring structural signature of Jon's thinking:** self-refining loops. The robot loop, the master-builds-tool-students-improve-tool loop, and the observe→model→manipulate→re-observe loop are the same shape at different scales. Worth keeping as a through-line.

---

## PART 5 — Open decisions & agreed next actions

**Unresolved decisions (Jon's calls):**

1. **DOME expansion** — confirm "Dense Observational Measurement Environment," pick an omni-modal variant, or keep the word and drop the backronym.
2. **Whether the boxed Mission line names the closed loop** (candidate C-2) or stays instrument-and-science (candidate C-1).
3. **How hard to claim embodied-AI/robotics as a _technology sector_** in the vision beat vs. keeping field-of-science primary.
4. **The students argument's framing** — Claude's softened structural version vs. more of Jon's original competence-flavored version (see Part 3).
5. **Drone-swarm and ARGP scope** — how much to promise in Phase 1 vs. later.
6. Vault `#verify` items: primate/marmoset collaborator; per-species eye-tracker DOF targets; facility buy-vs-lease/budget/phasing.

**Citations to firm up later (explicitly deferred by Jon):**

- The robots-illuminate-neural-computation ladder: Yamins et al. 2014 (PNAS), Yamins & DiCarlo 2016 (Nat Neuro), Zeiler & Fergus 2014, Khaligh-Razavi & Kriegeskorte 2014 — DOIs to pull.
- The **motor-cortex-RNN** line (Sussillo, Michaels, et al.) — more on-target; needs a live search.
- Torsion-from-iris (`sangi2010`) and the DPI-on-consumer-cameras result (`yates2025` / OpenIrisDPI — the one vault ref web-verified so far).
- The vault-flagged possibly-post-cutoff arXiv/bioRxiv IDs.

**Agreed next action:** Claude offered to draft **Beat 4 (the DOME hero paragraph, hardware-first) and Beat 6 (the three-move why-unmet argument)** as full connected prose — the two "spine" beats — which will also test whether the ~1.5–2pp budget holds. Jon redirected to do _this progress capture first_; the prose draft is the queued next step.

---

## Appendix — Operative NSF constraints (from the uploaded documents)

- **Page/format:** Written Proposal ≤ **8 single-sided pages** (excl. COI), 12-pt, single-spaced, 1" margins, PDF, no cover letter; COI a separate PDF, no page limit; tables/graphs may use smaller font.
- **Five sections:** (1) Mission, (2) Technology Landscape, (3) Outcomes, (4) Senior/Key Personnel Qualifications, (5) Team Capabilities Statement.
- **Key dates:** Written Proposal due **July 13, 2026, 5:00 p.m. ET**; oral presentations **Aug 17–21, 2026**; Phase 0 begins **Nov 2026** (9 months, Go/No-Go at 7 months); Phase 1 begins **Aug 2027** (~24–36 months). Topic questions deadline was **July 6, 2026** (this conversation's date).
- **Eligibility limits:** max **two** Written Proposals per Topic per lead org; Senior/Key Personnel on **at most one** Written Proposal per Topic.
- **OTASO §11.2 Mission selection criteria** (per Jon's draft comments): **C1** ambitious + technically sound + well-defined; **C2** landscape justifies a dedicated full-time team; **C3** aligned with X-Labs strategic objectives (reshape a field); **C4** unmet by existing institutions.
- **Topic 2 in-scope hooks to hit:** "instruments intentionally engineered for next-generation AI training pipelines"; "sensors to resolve whole-brain activity at cellular resolution across long timescales"; the opening "revolution in what we can measure (telescope → MRI)" register.
- **Topic 2 out-of-scope traps to avoid:** computational/software solutions without practical integration into an instrumentation system; narrow/not-widely-deployable impact; fundamental research without platform-technology application; incremental advancement; already at full-scale commercialization.