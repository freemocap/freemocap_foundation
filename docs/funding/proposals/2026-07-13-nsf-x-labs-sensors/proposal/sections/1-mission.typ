
//OFFICIAL INSTRUCTIONS

// [Proposing teams must describe one or more novel platform technologies that the proposed NSF X-Lab is uniquely suited to advance. Successful teams will have a clear vision statement of how their work will result in an end-state that reshapes an entire field of scientific inquiry or a sector of technology, and how their Mission is currently unmet by existing organizational structures and funding mechanisms.]

#import "../helpers/shared.typ": semibold, Dome, Domes

= Mission

#let mission_statement = [
Develop and disseminate a new class of scientific instrument called a #semibold([Densely Overlapping Measurement Environment #smallcaps([(Dome)])]) that records the complete perception–action loop of a behaving agent as a single calibrated, uncertainty-tagged measurement, and build the autonomous organization dedicated to the measurement itself and form the boundary object that will align perceptual and motor neuroscience, musculoskeletal biomechanics, mobile robotics, and embodied AI into a single convergent science of sensorimotor control.]
 
#block(
  fill: rgb("#ddd"),
  radius: 1pt,
  stroke: (left: 2pt + gray),
  inset: (x: 0.5em, y: 0.5em),
)[#mission_statement]

==  A New Observable: The Sensorimotor Loop

 Every agent, living or engineered, must solve the same problem -  sense a thin slice of available energy in the environment through a limited set of imperfect transducers and on its basis push its body against the world to propel itself towards its goal. Information flows in, forces flow out; the brain exists to yank the bones around.

 We can measure individual components of this loop with extraordinary precision progressing at the rate of our technology. Camera and IMU based motion capture can track the kinematics of the body, force plates measure the kinetic forces between the body and world. Outward facing cameras can measure the world, and inward facing cameras can track the eyes. For humans, EEG nets and surface EMG record course records of patterns of neural activity in the cortex and musculoskeletal system. In animal models, dense electrode arrays resolve the individual spikes of neurons and motor units.  

 And yet, despite the extradradoinary precision and progress along these individual threads of measurement, access to the coherent whole representing the shared observational context that each of these tools illuminates remains ellusive. Occasionally, a research team will reach accross disciplinary divides and stitch several threads together for heroic integrative studies, but the methods rarely escape the Methods sections of a small cluster of publications spanning roughly the timescale of a single PhD. 
 
  Each of these teams sought out to answer a question at the edge of their discipline and instead found themselves in the business of tool building. The build these tools because they know the answers to the questions that they seek lie in the output of the integrated tool that does not exist.  In an institution that rewards the plating of seeds over the tending of gardens, the long and laborious work of maintaining a novel complex instrument quickly overwhelms the capacity of an academic lab.  Eventually the nascent tool collapses under the weight of its own complexity, and what was meant to be a bridge between two domains of study instead fades into an evergrowing pile of academic abandonware.
  
  We need a new organization that exists outside of the siloed domains of the Academia that dedicates itself to the #smallcaps[measurement], the development and dissertation of world-class, convival tools and novel skillsets explore the landscape the capacity unlocks. That organization is the #semibold[FreeMoCap X-Lab] [FMC-X]. We have already changed the landscape human-focused research by bringing high-quality capture to over 15,000 researchers, clinicians, robotists, and animators across 152 countries. With the support of the NSF X-Labs program, we will extend our mission and change entire landscape of neuroscience, biomechanics and robotics.
  
  // Eschewing any specific application or discipline, it reifies the complexity of the intergration to generate a new observable of the #semibold[complete sensorimotor] loop between an agent and its environment, packaged and prepared for anyone that needs it.   

// BOT NOTES ON ABOVE
// Read the draft, the Topic 2 announcement, and the OTASO selection criteria. Giving you content and strategy, page 1 focus, ignoring length/figures/placeholders.

// ## Top-line verdict

// The core bet is right for *this* solicitation. X-Labs is explicitly funding **autonomous organizations that build platform technologies**, and it rewards Missions that are "unmet by existing organizational structures and funding mechanisms." Most applicants will pitch a technology and bolt on an org. You're pitching the org and the instrument as one thing, and your "academia structurally cannot build this" argument (1.4) is a *direct* hit on criterion 11.2 ("the extent to which the technology landscape justifies a dedicated, full-time team"). That's your strongest strategic asset. Keep it central. Most reviewers will have read fifty decks that can't answer "why doesn't a normal lab do this," and you answer it in a way that's hard to argue with.

// The risk is the inverse of the strength: the writing is so committed to the *idea* of measurement-as-boundary-object that a hardware-oriented panel may finish page 1 without a crisp answer to "what is the instrument and why is it novel sensing/imaging hardware." Topic 2 reviewers are instrumentation people, and the Topic explicitly rules out "computational or software solutions without practical integration into an instrumentation system." FreeMoCap's public identity is markerless-mocap software. You have to actively defeat the "this is webcams + off-the-shelf eye tracking" read, and page 1 is where that impression sets.

// ## The Mission box specifically

// It's two missions in one sentence — (1) a new class of instrument, (2) the autonomous org / boundary object that convergences four fields — welded with "and… and form the boundary object that will align…" Grammatically the org and the "boundary object" carry equal weight with the instrument, and "boundary object" is sociology-of-science jargon that will not land with a metrology reviewer cold.

// Reorder so the instrument is the noun and the organization is the *mechanism*, not a co-equal deliverable: instrument first ("a new class of scientific instrument that records the complete perception–action loop as a single calibrated, uncertainty-tagged measurement"), then "and the autonomous organization required to build, standardize, and disseminate it." Let the four-field convergence be the *consequence* you state plainly, and retire "boundary object" from the box — you earn that term honestly in 1.4, so let it live there.

// Two words on that page are wrong and it's the page everyone reads: **"convival" → convivial** (line 40), and **"dissertation of world-class tools"** (line 39) reads as the wrong word — I think you mean dissemination.

// ## Section 1.1

// The prose is genuinely strong — "the brain exists to yank the bones around," the tool-builders dying in Methods sections "at the timescale of a single PhD." The argument architecture is exactly right: precise parts, inaccessible whole, punished tool-builders → therefore a new organization. That's the X-Labs thesis and you arrive at it earned.

// Two structural fixes, both about *timing*:

// **Name and picture the instrument sooner.** DOME doesn't appear until page 2; on page 1 the reader gets the org (FMC-X, line 44) before the thing. Given Mission Clarity is ~half your score and panels skim, plant the instrument flag within the first paragraph or two after the box — even one line: "We call this instrument the DOME, the inverse of a space telescope." You can still deliver the full reveal on page 2; just don't make them wait to know what you build.

// **Seed the proof-of-existence early.** Your single best de-risking fact — FreeMoCap already exists, 15,000 users in 152 countries, and there's a *working animal-scale DOME* (ferret/mouse) — is buried on pages 2 and 4. A reviewer's biggest doubt on any "revolutionary instrument" pitch is *can they actually build it*. You have the answer and you're hiding it. One clause on page 1 ("we have already built a smaller version, and it is in daily use worldwide") converts the whole thing from aspiration to trajectory.

// ## Scope alignment — the thing I'd worry about most

// "Eschewing any specific application or discipline" is your philosophical crux and also your biggest scoring risk. NSF wants impact that is "widely deployable" (domain-agnostic helps) but *also* "measurable impact on the U.S. science and technology landscape" and technology "positioned for widespread use and investment." Pure domain-neutrality can read to a reviewer as *no customer*. You resolve this later (1.3: RL/embodied-AI corpora, computer-vision training data), but page 1 leans entirely on the refusal to specialize.

// Give page 1 one concrete pull market so the boundary object doesn't float free of a beneficiary. Your strongest one, given the current NSF appetite, is **embodied AI / robotics needing real-world, uncertainty-bounded sensorimotor training data** — that's a "new sector of the economy," which is the exact phrase the initiative uses. The uncertainty-tagged, metrologically-traceable record is what makes it *training data no one else can produce*, not just another dataset. That's also your cleanest defense against the "it's just software" read — uncertainty traced from each transducer to every derived value is a *metrology* claim, i.e. an instrument claim. Elevate it onto page 1.

// Also worth doing: echo their vocabulary back at them. "Platform technology" and "unlock a new sector" appear in the strategic objectives; the box currently says neither.

// ---

// Net: the strategy is sound and unusually well-matched to X-Labs specifically — don't second-guess the dual instrument/org framing, it's a feature here. The work on page 1 is (1) make the instrument the grammatical and narrative subject, (2) surface the "we already built a working one" proof earlier, and (3) name one economic beneficiary so domain-agnosticism reads as reach rather than homelessness.

==  A New Instrument: Building the #smallcaps[Dome] 


We define a #Dome as a densely instrumented region of real space engineered (at some aspirational extreme) to record every  possible measurable channel of the agent–environment interaction at once. It is the opposite of a space telescope, an empty volume of of lenses focused inward at the mysterious place where the body meets the world. 

 In practice, individual #Domes will comprise a partial subset of available instrumentation, selected based on use-case. However, criticall, #semibold([All #Domes produce the same output]) regardless of the component instruments - a metrologically-grounded record of semantically-coherent cannonical models *partially hydrated* by measurements from the available instruments. A motion capture recording produces the same reconstructed `Head`  A mocap  `Skull` is assumed to have `Eye`s, reagardless of whether the subject was wearing an eye tracker. Both a ferret and a human have a `Skull` wqhich maybe approxomated as the same `RigidBody` defining segments of the body of a `HumanoidRobot`. The reconstructed `RetinalInput` derived from reconstructions of the `Body`, `Eye`, and `Environment` of a human participant running across a rocky field [Ref-Collab-MH/KB] are precisely the same data models as those derived from a `Marmoset` leaping from branch to branch with Neuropixel electrodes emdedded in its `SuperiorColliculus` leaping to platform [Ref-Collab-AH/JY], a `Ferret` chasing a fictive prey with a Miniscope viewer mounted over of its `PosteriorParietalCortex` [Ref-Collab-BS], and a `GuineaFowl` running across a pneumatically actuated platform with EMG-electrodes implanted in its `MedialGastrocnemius` [Ref-Collab-MD].


// Move Dome Variants and specific tech tagets to Outcomes section
//
// - The DOME is one instrument built in three forms, each defined by the role it plays in the network.
//     - DOME-L is the warehouse-scale flagship in greater Boston: it pushes each instrument to its limits, and is large enough to physically contain and cross-validate the smaller forms, which makes it the metrological reference for the whole network.
//     - DOME-S is the lab- and classroom-scale form we disseminate to other groups, extending the webcam capture volumes the FreeMoCap Foundation already supports worldwide.
//     - DOME-Mobile is the wearable form we carry outside the lab, used to validate lab-bound research against real-world behavior in natural terrain.
//     - Every form produces the same kind of record, because the instrument is defined by its measurement ontology rather than by any single sensor: a camera-based and an inertial estimate describe the same kinematics and fuse into one estimate better than either alone.

// - The DOME is not built around one new sensor; we advance the measurement on both halves of the loop, so the platform's own capability frontier keeps moving and the instrument tells us which transducer to build next.
//     - On the motor side, we build an actuated, self-calibrating camera array: daisy-chainable Power-over-Ethernet cameras with swappable sensors on programmable mounts, re-aimable and re-focusable from a single console while staying metrically calibrated as one instrument — solving the lived problem of large capture volumes whose cameras get frozen in place because re-aiming and re-calibrating them by hand is too costly.
//     - We fuse these outside-in camera estimates with inside-out inertial estimates: cameras are accurate but noisy, inertial capture is precise but drifts, and their principled fusion carries explicit uncertainty rather than hidden guesswork, making trustworthy inverse dynamics and muscle-force estimation tractable from markerless data.
//     - On the sensory side, we build the flagship new transducer: a binocular mobile eye tracker that measures degrees of freedom commercial eye trackers do not — ocular torsion and lens accommodation — because a faithful reconstruction of what lands on a moving agent's retina requires them, and because smartphone-grade imagers behind controlled illumination make this a camera-quality bet, not a physics bet.

// - We have already built a working animal-scale version of this instrument.
//     - The team's ferret and mouse eye trackers already integrate three-camera gaze, full-body kinematics, and world cameras in one calibrated system — a working animal-scale instance of the flagship instrument — and the human, mouse, and ferret builds are being made functionally equivalent so the same measurement crosses species.

// - [ALLUDE → §3: DOME-L warehouse specs, DOME-S build plans and FreeMoCap community metrics, DOME-Mobile sensor suite, eye-tracker DoF targets and validation, actuated camera array engineering, camera↔IMU fusion uncertainty budgets, force-plate floor panels, ARGPv3, drone swarm (later phase).]


== The New Capability

Because every channel is spatially calibrated, temporally synchronized, uncertainty-traced within a unified sensor-grounded ontology, #Dome records provide ideal training data for internal and external applications. Internally, each sensor stream is modelable agaist every other stream, both within recordings (modelling eye movements against head movent to model VOR) and across recordings (back-fill old datasets with models of Cyclotorsion after we build a new eye tracker that measures torsion). The data also provides internal automatic erorr signals - downstream estimates of body kinematics fused from IMU- and Camera-mocap can back project onto the the original cmaera images, defining a reprojection-error signal that can improve image pose-detection algorithms that are currently stuck on an increasingly long-in-the-tooth [TODO - synonym ] COCO dataset. 

The Sensor-Grounded Ontology [SGO TODO - define this above] also imporvides LLM's ability to reason over #Dome domains, such as providing user assistance by routing SGO-tagged logs and sensor samples through a local LLM during runtime (e.g. "Looks like someone bumped Camera 2"), assisting analysis of resulting data, and teaching the tool to students and out-of-domain experts. 

// [→ §3: RigidBody/contact-force mapping, reprojection-error pipeline + Isaac Lab/MuJoCo RL integration, IRL methodology + validation, backfill/upfill statistical framework, AR perturbation hardware — LED floor panels, projection, VR.]
== Why Unmet

// An instrument like

// [→ §4, §5: PI expertise + departure from Northeastern; EI enterprise software; AC clinical validation; KM mobile DOME lineage; MN large-scale lab; JKL AI systems; RR org health + NSF grant mgmt; NR CEO ops; collaborator roster; governance (FMC-X within FMC-F, PI final say); autonomy at submission; congress/hackathon cadence; community grants; FreeMoCap scale receipts.]
== The Vision
The vision of this proposal represents an grand acceleration of movement the FreeMoCap Project has fostered since 2021, and there is no upper limit to our ambition. The global spread of the FreeMoCap software shows that the world has a hunger for this kind of tool, and we intend to feed it. We will put a #Dome in every research lab, every classroom, every Physical Therapy clinic, animation studio,  and athletic facility. We will create field-deployable wearble #DOME-Mobile systems that provide lab-quality data of humans and animals in the remote wilderness. We will build them into the SCUBA systems of deep sea welders and into the EVA suits and HAB volumes of the ISS. We will create \$100 "Student #Dome" kits that fit in a backpack and cost less than a textbook, and which produce fundamentally the same data model as \$1,000,000 flagship facility. Every country hospital and retirement home will have an AI-enabled, auto-calibrating, self-analyzing Gait and Posture facility that will have plain language conversations with patients about their own kinematic data. We will build #Domes into the sides of moutains to measure the aerodyanmics of hunting hawks, and onto the hulls of shipping boats to understand the mechanics of the dolphins that play in their wake. 