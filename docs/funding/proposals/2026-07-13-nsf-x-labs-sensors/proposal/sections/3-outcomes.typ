// // ── 3. Outcomes ──
// [An NSF X-Lab is expected to deliver high-impact, measurable outcomes that advance a nascent platform technology, overcome critical bottlenecks, and realize the team's vision to reshape an entire area of technology or field of scientific research (see Section 7.0 for example outcomes). Phase 0 proposals should describe the team's ambitious target outcomes over a 5- to 7-year timescale to accomplish the stated Mission and the scientific and technical performance benchmarks needed to get there.]


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

#import "../helpers/shared.typ": semibold, Dome, Domes, Dome-Mobile


= Outcomes
We will create a flag ship facility in the Greated Boston area, and then use it to build 3 #Dome variants, selected to provide cross validation method to develop and validate different kinds of #Domes. Specifically - #Dome -L is large auto-calibrating space big enough to hold smaller #Domes within it. teh #Dome -static variant is an extension of the volumes we make in FreeMoCap, the kind of thing we would expect to put in a lab or classroom. WE also will choose a space large enough to run #Dome-Mobile variants, which allows us to develop and validate that system indoors before moving outdoors where validation becomes much harder. 


We continually fan out our work to the collaborator network - working with each collaborator to build their own system specific to their research direction, and then validate relative to our core cross-validation network. 

We build the initial DOME variants with off-the-shelf equipment (e.g. Pupil), and then build new iterations of each of the sub-instruments prioritized on things that are bottlenecks to our resarch. We specifically target the abilty to estimate the retinal projected input accurately enough to predict neural activitym which we'll  define by saying we need to be able to predict the retinal projection of a world object with an accuracy of 1-degree at the fovea (when looking at a point on the ground at a 45-degree angle). We have already charcterized joint-angle accuracy in freemocap (cite: aaron's disseration) so we can combine that with the reported errors of commercial eye trackers to define our uncertainty budget. 

We need to build a new eye tracker, beucase no existing eye tracker can measure torsion, and that directly corrupts the Curl dimension of retinal optic flow, which is a research target per \@matthis2022. 

 In all the #Domes we build, assume the person or persons tracked will be tracked by full-body mocap (camera-based, imu-based, or hybrid-both), and wearing an eye tracker (either a pupil labs tracker to start, then our new custom system later)

== FMC-X flagship facility

- Main Facility - Combined office and warehouse space in Greater Boston area with attached outdoor space for #Dome-Mobile testing
    - Office space for full time staff
    - Mutlipurpose conference rooms for meetings, classes, and lectures
    - Ad hoc lab space
    - Office/Lab space for visiting scholars
    - Fabrication facility and workshop
  
- DOME-L is a warehouse-scale instrumented volume in the greater Boston area.
    - Specs: configurable capture volume targetting a 20mx30mx10m(tall) space, grid of rails on the wall allo placement of cameras on a 1m grid. Ground is laser-leveled raised panel flooring, allowing modular force-plate floor array (each 0.5 m² panel a force plate, terrain panel, LED panel, or stacked combination).
    - Consists of a distrbuted array of Centrally Controllable Cameras {ref - below}, daisy chained by PoE connections to control centrally. Can centrally define a desired capture volume, and the system can automatically configure for different spaces and levels of coverage [TODO - ref back to the 'self-driving' ai training systems from the proposal]. 
    - This array solves the central practical bottlenck to large mocap spaces - its so labor intensive to align that in practrice the cameras are set once and never move. 
        - This system allows for flexible defining lower coverage over wide spaces or tight coverage over small spaces. BBecause each camera will pan, tilt, roll extrinsics control and zoom, apperature, focus control of intrinisics, we can craete auto-benchmarking systems to train next gen models of camera pose detection and multi-camera reconstructions and calibration-aware LLMs that can diagnose camera problems from raw inputs. Also, offer advice for best operational pracices
        - We can link up drone swarms to auto-configuring camrea array, and the groups can auto-run experiemtns, like, drones fly and camera try to track them in dfferent configurations, and we learn about best ways to cover differetn kinds of spaces nad movements. 
    - Phase 0 deliverable: site selection, facility design, and initial build-out.
    - Phase 1 deliverable: an operational DOME-L able to cross-validate DOME-S and DOME-Mobile.
    - KPI: Same validations that Aaron dissertation, extended to overground and multi-person

== DOME-S dissemination

- DOME-S extends FreeMoCap's existing webcam-based capture volumes into the disseminated, lab- and classroom-scale instrument.
    - Phase 0: validate DOME-S against DOME-L on a standardized movement battery, establish a calibration protocol any lab can follow, and publish a build guide and parts list.
    - Phase 1: deploy DOME-S at [N] collaborator sites spanning human biomechanics, robotics, visual neuroscience, and clinical applications.
    - KPI: number of deployed and validated DOME-S instances, kinematic accuracy against the DOME-L reference, and inter-site measurement comparability.
        - SPECIFIC TARGET - 510(k) certification of FreeMoCap and DOME instrument as FDA certified for clinical rehab and assessment. Let that validation system drive development and protocols. 

== DOME-Mobile wearable

- DOME-Mobile is the wearable form: an IMU suit, binocular eye tracker, and head-mounted world-camera array (stereo RGB, structured IR, LiDAR).
    - Phase 0: sensor selection, initial integration, and benchtop validation.
    - Phase 1: validate DOME-Mobile against DOME-L on locomotion tasks (walking, running, obstacle navigation, stair climbing), indoors and outdoors.
        - Build Drone Swarm Mocap - Drones mounted with simnilar world-scanner on the eye tracker, used to ground the IMU- mocap and flesh out world-scan from head-mounted scanner. 
    - KPI: kinematic accuracy against the DOME-L reference during co-recorded trials, gaze-in-world angular uncertainty, and drift over [TBD]-minute outdoor walks.

== Eye tracker development

- The binocular eye tracker measures torsion and accommodation at 200+ Hz.
    - Phase 0: bench prototype measuring torsion (via iris texture) and accommodation (via higher-order Purkinje reflections) binocularly, validated against a reference eye tracker and an artificial eye.
    - Phase 1: mobile form factor, integrated into DOME-Mobile and DOME-S, validated on human participants during natural locomotion.
    - KPI: torsion accuracy [TBD arcmin], accommodation accuracy [TBD diopters], gaze-in-world uncertainty during walking [TBD degrees], and per-unit cost target [TBD].

== Actuated camera array

- The actuated camera array places cameras on controllable mounts that recalibrate under dynamic reconfiguration.
    - Phase 0: prototype array of [N] cameras on controllable mounts, a calibration method for dynamic reconfiguration, and validation on static and moving reference objects.
    - Phase 1: production array in DOME-L, a remote configuration API, and auto-calibration on sub-volume selection.
    - KPI: post-reconfiguration calibration quality (κ_s, κ_t), time from sub-volume selection to calibrated capture, and reprojection error against a fixed-calibration baseline.

== Camera↔IMU sensor fusion

- Camera↔IMU fusion combines outside-in and inside-out estimates with explicit per-joint uncertainty.
    - Phase 0: develop the fusion algorithm on existing FreeMoCap + IMU-suit data, validate against the DOME-L reference on standardized movements, and establish uncertainty budgets per joint per movement type.
    - Phase 1: real-time fusion in DOME-L and DOME-Mobile, validated for inverse dynamics (joint torques, muscle forces via OpenSim).
    - KPI: joint-center uncertainty at k=2, joint-torque uncertainty against force-plate ground truth, and muscle-force uncertainty against EMG-informed estimates.

== Reprojection-error training pipeline

- The reprojection-error pipeline turns calibrated 3D reconstructions into a training signal for pose estimators.
    - Phase 0: build a pipeline that back-projects calibrated 3D reconstructions onto each camera's 2D view, computes per-joint reprojection error, and uses that error to fine-tune pose estimators.
    - Phase 1: demonstrate measurable improvement on out-of-distribution movements (clinical gait, acrobatics, animal locomotion).
    - KPI: percentage reduction in pose-estimation error on held-out movements, and improvement on standard benchmarks.

== Robot RL integration

- DOME data feeds robot reinforcement learning and inverse reinforcement learning.
    - Phase 0: define a DOME export format mapping directly to MuJoCo/Isaac Lab rigid-body models, record an initial human-locomotion corpus, and demonstrate policy learning from DOME data in simulation.
    - Phase 1: sim-to-real transfer of DOME-trained policies onto physical robots, inverse RL to extract apparent human control policies, and tests of IRL-derived hypotheses in DOME-L via ARGP perturbation.
    - KPI: sim-to-real transfer success rate, policy performance against a simulation-trained baseline, and IRL reward-function predictive accuracy on held-out behavior.

== ARGPv3

- ARGPv3 is a modular augmented-reality ground plane extending the PI's published ARGPv1 apparatus (Matthis 2013–2017).
    - Phase 0: design a modular LED floor-panel system (0.5 m² tiles), prototype with projection-based visual stimuli, and validate that visual perturbations produce measurable locomotor adjustments in DOME-L.
    - Phase 1: full DOME-L floor integration, VR-headset integration for immersive manipulation, and coupled LED floor + wall panels for full visual-field control.
    - KPI: latency from perturbation command to visual update, spatial calibration between LED panels and the DOME coordinate frame, and magnitude of locomotor adjustment per unit visual perturbation.

== Cross-species validation network

- The cross-species network deploys functionally equivalent instruments at animal-collaborator labs.
    - Phase 0: establish calibration and data-exchange protocols with ferret (visual neuroscience + ephys), mouse (systems neuroscience + miniscope), guinea fowl (musculoskeletal biomechanics + EMG), and marmoset (primate electrophysiology) labs.
    - Phase 1: deploy functionally equivalent DOME-S instances at each site and validate cross-species measurement comparability.
    - KPI: number of validated cross-species measurement channels, and inter-species kinematic-model alignment quality.
