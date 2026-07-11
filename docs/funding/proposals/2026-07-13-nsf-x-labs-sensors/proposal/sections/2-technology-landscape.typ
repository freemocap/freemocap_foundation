// ── 2. Technology Landscape ──
= Technology Landscape

- Existing tools and methods
  
  - Some neat softwares and CV/ML tools, but all single threads, no unified tool
    - OpenSim - Widely used, very difficult to operate, highly specialized niche within biomechanics, single-modality
    - DeepLabCut - Widely used, very difficult to operate, single-modality
    - OpenCap works, but only for iPhones and requires a cloud upload, and caters exclusively to clinical biomechanics. Single-modality, non-convivial.
    - SIMPL/Meshcapade - Has built past empirically validity. 3d from 2d and mesh-fitting pipelines not truth preserving. Building increasingly more abstract and less tracable data channels on top of the same 2d data we've had for a while
    - etc

    - MuJoCo/IsaacLab- Driving revolution in mobile robotics! We will directly contribute to this by feeding RL robots DOME data, and then using resulting control theory to design controled experiments (see ARGPv3)


- FreeMoCap and its landscape
  - Established Tool with Growing International Community
  - Existence is proof-of-concept of approach, XLabs scale support would accelerate FreeMoCap model into the global scale
  - v2 has realtime and professional architecture

- ARGP
  - ARGPv1 - PhD Era @matthis2013 @matthis2014 @matthis2015 @matthis2017
  - ARGPv2 - NEU Era (Fuzzed out due to complexity, frustration spawned freemocap)
  - DOME includes ARGPv3
- Laser Skeleton research 
  - @matthis2018 @matthis2022 @muller2023 
  - etc
  - Ferret work
    - 
- Existing Instruments
  - *Modern mobile eye trackers suck *
    - Pupils labs - Used to be cool, black box proprietary now. Best Available, used in Ferret and Laser Skeleton work. 
    - Tobii et al not worth mentioning
    - Missing DoF's!
      - Can't measure Torsion 
        - Field has invoked Listing's Law to ignore torsion for decades
        - Listing's Law is NOT APPLICABLE when VOR is active
        - VOR is active during 100% of natural behavior
        - Torsion directly affects axis that Retinal Curl @matthis2022 lives on, so inabilty o measure it corrupts signal we want to propogate into visual cortex
        - We know how to measure Torsion (iris texture), and Lens Accomdation too, while we're at it (yates et al DPI)
  - *Modern mocap sucks*
    - Old, awful, expensive, black boxes
    - So difficult to use its a literale bottlenecks
    - Difficult limits lab size (Cant re-target cameras without shutting down the lab for a week. Can't maintain multiple configurations)
    - Theia exists, but its re-building the same problems of the previous generation in a new modality