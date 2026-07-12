
//OFFICIAL INSTRUCTIONS

// [Proposing teams must describe one or more novel platform technologies that the proposed NSF X-Lab is uniquely suited to advance. Successful teams will have a clear vision statement of how their work will result in an end-state that reshapes an entire field of scientific inquiry or a sector of technology, and how their Mission is currently unmet by existing organizational structures and funding mechanisms.]

#import "../helpers/shared.typ": semibold

= Mission

#let mission_statement = [
Build the DOME — a new class of scientific instrument that records the complete perception–action loop of a behaving agent as a single calibrated, uncertainty-tagged measurement — and the autonomous organization required to turn it into shared infrastructure, fusing four disconnected sciences of behavior into one.]
 
#block(
  fill: rgb("#ddd"),
  radius: 1pt,
  stroke: (left: 2pt + gray),
  inset: (x: 1em, y: 0.5em),
)[#mission_statement]

==  A New Observable: The Perception/Action Cycle

- Every agent, living or engineered, runs the same loop: it senses a thin slice of its environment through imperfect transducers and pushes back against the world to move toward a goal.
    - Information flows in, forces flow out; the brain exists to move the bones.
    - This loop is the shared object of four fields that rarely speak: perceptual and motor neuroscience, musculoskeletal biomechanics, mobile robotics, and embodied AI.

- We can already measure each thread of the loop with extraordinary precision — but only one thread at a time.
    - Silicon probes resolve single neurons; markerless capture and force plates resolve kinematics and kinetics; electromyography resolves individual motor units; mobile eye trackers resolve gaze.
    - Each instrument is superb in isolation and blind to the rest of the loop.

- No one can record the whole loop at once, because the integration is harder than any single lab can sustain.
    - Every so often a team stitches several threads together for one heroic study.
    - But the method lives only in a Methods section, and the wiring decays on the timescale of a single PhD, as the burden of maintaining the integration outstrips what an academic lab can hold together.
    - Each of those teams was reaching for the same measurement — the coupled record of perception *and* action — and each was stopped by the same wall.

- The unmet need is therefore a single instrument, not a better sensor.
    - It must capture every empirically available channel of an agent's perception and action at once: spatially calibrated, temporally synchronized, and rendered commensurable across labs and species.
    - It must be faithful enough that its record can predict neural activity along the sensory and motor pathways — the fidelity bar that separates a recording from a measurement.

==  A New Instrument: The #smallcaps[Dome]/(Densely Overlapping Measurement Environment)

- We call this instrument the DOME — a Densely Overlapping Measurement Environment.
    - It is a densely instrumented region of real space engineered to record every measurable channel of the agent–environment interaction at once: full-body kinematics and kinetics, muscle and motor-unit activity, binocular gaze and reconstructed retinal input, and, where feasible, neural activity.
    - It is the inverse of a space telescope: a room of lenses aimed inward, at the place where the body meets the world.

- The DOME is one instrument built in three forms, each defined by the role it plays in the network.
    - DOME-L is the warehouse-scale flagship in greater Boston: it pushes each instrument to its limits, and is large enough to physically contain and cross-validate the smaller forms, which makes it the metrological reference for the whole network.
    - DOME-S is the lab- and classroom-scale form we disseminate to other groups, extending the webcam capture volumes the FreeMoCap Foundation already supports worldwide.
    - DOME-Mobile is the wearable form we carry outside the lab, used to validate lab-bound research against real-world behavior in natural terrain.
    - Every form produces the same kind of record, because the instrument is defined by its measurement ontology rather than by any single sensor: a camera-based and an inertial estimate describe the same kinematics and fuse into one estimate better than either alone.

- The DOME is not built around one new sensor; we advance the measurement on both halves of the loop, so the platform's own capability frontier keeps moving and the instrument tells us which transducer to build next.
    - On the motor side, we build an actuated, self-calibrating camera array: daisy-chainable Power-over-Ethernet cameras with swappable sensors on programmable mounts, re-aimable and re-focusable from a single console while staying metrically calibrated as one instrument — solving the lived problem of large capture volumes whose cameras get frozen in place because re-aiming and re-calibrating them by hand is too costly.
    - We fuse these outside-in camera estimates with inside-out inertial estimates: cameras are accurate but noisy, inertial capture is precise but drifts, and their principled fusion carries explicit uncertainty rather than hidden guesswork, making trustworthy inverse dynamics and muscle-force estimation tractable from markerless data.
    - On the sensory side, we build the flagship new transducer: a binocular mobile eye tracker that measures degrees of freedom commercial eye trackers do not — ocular torsion and lens accommodation — because a faithful reconstruction of what lands on a moving agent's retina requires them, and because smartphone-grade imagers behind controlled illumination make this a camera-quality bet, not a physics bet.

- We have already built a working animal-scale version of this instrument.
    - The team's ferret and mouse eye trackers already integrate three-camera gaze, full-body kinematics, and world cameras in one calibrated system — a working animal-scale instance of the flagship instrument — and the human, mouse, and ferret builds are being made functionally equivalent so the same measurement crosses species.

- [ALLUDE → §3: DOME-L warehouse specs, DOME-S build plans and FreeMoCap community metrics, DOME-Mobile sensor suite, eye-tracker DoF targets and validation, actuated camera array engineering, camera↔IMU fusion uncertainty budgets, force-plate floor panels, ARGPv3, drone swarm (later phase).]

==  The New Capability

- Because every channel is spatially calibrated, temporally synchronized, and expressed in one sensor-grounded ontology, DOME records make heterogeneous sensor streams directly commensurable, with uncertainty traced from each transducer to every derived value.

- This structure makes DOME data consumable by modern reinforcement-learning and robotics stacks with minimal reshaping.
    - A measured bone segment and a simulated robot link are the same RigidBody; a measured ground reaction force and a simulated contact force are the same quantity.
    - Embodied AI and legged robots gain real-world sensorimotor corpora annotated with the explicit uncertainty bounds that safe learning requires.

- The same calibrated array provides physical ground truth for computer vision at large scale.
    - Back-projecting the reconstructed 3D solution onto each camera's 2D view yields a reprojection-error signal that directly improves the underlying skeleton trackers, both as single-camera models and as in-volume estimators — an instrument, in the Topic's own language, engineered to produce better AI training data.

- The archive appreciates over time, because the ontology defines slots for channels no current sensor fills.
    - Once a tracker measures torsion or accommodation, models trained on the new channels can back-predict them for older recordings made before any instrument could capture them, and the same principle up-fills data from lower-cost DOMEs using models trained on flagship data.

- The instrument closes the hypothesis loop on itself.
    - Inverse reinforcement learning on DOME records extracts the reward a biological agent appears to optimize, which both jump-starts robot training and becomes a testable hypothesis about the underlying neural computation.
    - That hypothesis is then probed back inside the DOME by controlled perturbation of the loop, through a reconfigurable augmented-reality ground plane of LED floor panels, projection, and VR that reshapes the terrain a real agent navigates while it is measured.
    - Observation, modeling, and intervention become a single apparatus: the full hypothetico-deductive cycle inside one instrument.

- [ALLUDE → §3: reprojection-error pipeline, robot RL integration with Isaac Lab/MuJoCo, IRL methodology and validation, backfill/upfill statistical framework, ARGPv3 build plan and lineage from ARGPv1 (Matthis 2013–2017), environment-manipulation modalities, the five-station closed loop.]

==  Why Unmet

- An instrument like this cannot be built inside the institutions that most need it, for structural reasons that are well understood but rarely stated plainly.
    - A trainee's job is to learn by doing science; a tool's job is to encode hard-won mastery so others need not re-learn it — and these point in opposite directions.
    - Academia rewards the experienced builder for novel findings and pushes infrastructure onto trainees who rotate out on degree timelines, so the shared instrument never accumulates the mastery that would make it trustworthy.
    - The result is the well-documented graveyard of abandoned research software: the incentive structure rewards the thread, not the loom.

- A second structural problem is scope.
    - A tool defined by a research domain partitions its users into specialists; a tool defined by a measurement unites everyone who needs that measurement, however different their goals, and becomes a boundary object — a commons — precisely because it imposes none of them.
    - The FreeMoCap Foundation already ran this experiment: scoped entirely to the measurement, refusing to claim any domain, it became a commons where biomechanists, neuroscientists, roboticists, animators, and game designers now cross-pollinate across 15,000 users in 152 countries.
    - OpenCap and DeepLabCut are excellent and, by being domain-scoped, are the foils that prove the point: measurement-not-domain scoping is what creates a commons rather than a user base.

- A third problem is organizational shape, and it names the answer the Observable left open: the measurement needs its own organization.
    - Conway's Law holds that organizations produce systems mirroring their own structure, so an enterprise of domain-named departments, journals, and grants produces domain-scoped instruments, reviewed by reviewers who can only score work inside one domain — never the long, unglamorous metrology that turns a proof of concept into a tool others trust.
    - The PI left a tenure-track faculty position because the institution could not support this work, and founded the FreeMoCap Foundation as a 501(c)(3) whose primary output is open scientific instruments.
    - The X-Lab's operating model follows: scope the deliverable to the instrument, and fan the science out to a standing network of collaborators — human perception-and-action researchers, robotics and prosthetics groups, and animal labs spanning mouse, ferret, and guinea fowl — who use the tools and convene to feed insight back.
    - Building the tool and leaving the science to others is the mechanism of impact, not a retreat from it: a working shared instrument as the success metric, and full-time career engineers held for years, are exactly the X-Labs model and exactly what a university cannot provide.

- [ALLUDE → §4, §5: PI's expertise and departure from Northeastern, EI's enterprise software background, AC's clinical validation dissertation, KM's mobile DOME lineage, MN's large-scale lab expertise, JKL's AI systems role, RR's organizational health and NSF grant management, NR's CEO operations role, collaborator network roster, governance (FMC-X within FMC-F, PI has final say), autonomy (already autonomous at submission), semi-annual congress/hackathon/workshop/conference cadence, community grants program, FreeMoCap scale receipts.]

==  The Vision

- The end-state is a single empirical science of sensorimotor control.
    - Perceptuomotor neuroscience, musculoskeletal biomechanics, mobile robotics, and embodied AI — today four parallel literatures with incompatible tools and vocabularies — become commensurable, so a finding in one becomes evidence in another and four bodies of work collapse into one cumulative science of real-world behavior.
    - On the very same measurements sits a second end-state: the uncertainty-tagged corpora embodied AI and robotics need to learn real-world sensorimotor behavior, reshaping a field of science and seeding a sector of technology at once.

- In seven years, the jogger crossing a rocky field is a routine measurement.
    - Her kinematics, forces, muscle activity, gaze, the terrain beneath her, and the image on her retina are recorded as one object, with a defensible uncertainty on every value, by an instrument a graduate student can operate.
    - The same kind of record — lower precision, not a different kind — is produced by a classroom in Ohio and by a ferret hunting in a laboratory, and the three can be compared because every value traces to the same references.

- We will build the full range and put it everywhere.
    - Hundred-dollar three-camera kits for students, mobile eye trackers that measure ocular torsion and accommodation, field-deployable gait laboratories, and wearable research environments — all interoperable, all producing the same kind of record.
    - Deployed in hospitals and physical-therapy clinics, athletic centers and robotics labs, classrooms, and on the International Space Station — each one an instance of the same instrument, the same measurement, the same growing archive.

- The telescope showed us our place in the universe by pointing outward; the DOME shows us ourselves by pointing inward, at the place where the body meets the world — bringing the ordinary condition of behavior, an agent using vision to place its feet in an unconstrained environment, into routine, traceable measurement.
