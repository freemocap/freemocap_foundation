// ── 2. Technology Landscape ──
// [Provide an analysis of the current technology landscape that justifies how the proposed platform technology would accelerate the emergence of new technologies and lines of research. The Technology Landscape Analysis should compare current state-of-the-art technology and should provide a clear description of the team's goal to progress the technology and unlock fundamentally new capabilities. A plot or other figure to quantitatively depict the current technology landscape and desired goal(s) of the NSF X-Lab may be included here.]

= Technology Landscape

== The measurement threads and their instruments

- The DOME unifies six measurement threads, each served by a mature but isolated instrument ecosystem.
    - Kinematics: markerless pose estimation (DeepLabCut, SLEAP, VitPose, FreeMoCap), marker-based (Vicon, Qualisys, OptiTrack), and inertial (Xsens, Notch), with a gap between clinically-valid kinematics and inverse-dynamics-grade accuracy.
    - Kinetics: force plates (AMTI, Bertec), pressure-sensing insoles, and instrumented treadmills, with ground reaction forces still hard to measure outside the lab.
    - Eye tracking: Pupil Labs (Core, Neon, Invisible), Tobii, and SMI, none of which capture torsion or accommodation.
    - Neural recording: Neuropixels, miniscopes (1-photon calcium imaging), and mobile EEG, with neural activity still hard to record during unconstrained movement.
    - Muscle activity: surface and intramuscular EMG at motor-unit resolution, with a gap between what OpenSim models need and what current sensors deliver.
    - Environment: photogrammetry, Gaussian splatting, neural radiance fields, RGB-D (stereo, LiDAR, structured IR), and event cameras.

== The composition problem

- These instruments do not compose, for four concrete reasons.
    - Coordinate frames are incompatible, because each sensor defines its own.
    - Clocks are unsynchronized, because there is no common timebase.
    - Semantic schemes are non-interoperable: a "gaze point" in one system is not the same quantity as in another.
    - Uncertainty does not propagate across modality boundaries.
- Mobile Brain/Body Imaging (Makeig et al. 2009) is the fifteen-year case study: a methodology, not a platform, because the integration burden falls on each lab.

== The metrology gap

- The field co-records without co-measuring.
    - Calibration quality κ = (κ_s, κ_t) is the fundamental bottleneck. [Reference observability calculus.]
    - The GUM/VIM framework applied to multimodal capture shows why an unbroken chain of traceable calibrations matters — and why no existing system provides one.

== The ontology gap

- Existing tools are sensor-specific rather than measurement-specific.
    - They are built around a particular camera model or force-plate vendor, not around the measurement itself; kinematics is kinematics whether it came from cameras or IMUs.
    - The consequence: data from different labs, species, and equipment generations cannot be compared, pooled, or cumulatively improved.
    - The DOME's sensor-grounded ontology is the solution: define the measurement, not the sensor.

== The CV field's plateau

- Computer-vision pose estimation has drifted away from the pixels toward ungroundable targets.
    - Targets such as 3D-from-2D, SMPL mesh fitting, and semantic segmentation lack physical ground truth.
    - Trackers still benchmark against aging COCO data scraped from early-2000s Flickr, and fail on out-of-distribution movement — clinical populations, extreme athletics, animal locomotion.
    - The field needs physical ground truth at scale, which a calibrated multi-camera array provides, along with corpora of the movements it currently cannot track.

== The robot training bottleneck

- Reinforcement learning for legged robots is limited by the sim-to-real gap, not by simulation.
    - Simulation has advanced rapidly (MuJoCo, Isaac Lab, Genesis), but sim-to-real transfer remains the critical barrier.
    - The missing resource is ground-truth, uncertainty-tagged, multimodal recordings of real agents in real environments.
    - Existing datasets (Human3.6M, AMASS, GRAB) are single-modality, lab-constrained, or lack uncertainty quantification.

== Quantitative landscape figure

- A single figure will locate current capability against the DOME's target.
    - For each modality, plot current commercial and academic capability against the DOME's target, with the "uninstrumented region" highlighted.
    - Axes: spatial precision, temporal synchronization quality, degrees of freedom captured, and usability/deployability.
