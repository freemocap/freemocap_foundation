// ── 2. Technology Landscape ──
// [Provide an analysis of the current technology landscape that justifies how the proposed platform technology would accelerate the emergence of new technologies and lines of research. The Technology Landscape Analysis should compare current state-of-the-art technology and should provide a clear description of the team's goal to progress the technology and unlock fundamentally new capabilities. A plot or other figure to quantitatively depict the current technology landscape and desired goal(s) of the NSF X-Lab may be included here.]

= Technology Landscape
- FreeMoCap and its landscape
  - Established Tool with Growing International Community
    - >15k uses from 152 countries, 10k GH stars, 3.5k in Discord server
  - Existence is proof-of-concept of approach, XLabs scale support would accelerate FreeMoCap model into the global scale
  - v2 has realtime and professional architecture (thanks to EI)
  - DOME-L and DOME-S camera-based mocap will use FMC or a variant. Mocap, Eye, World camera software composable from FMC polyrepo (skellycam, skellytracker, skellyforge, etc)

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
  - 
  - *Modern mocap sucks*
    - Old, awful, expensive, black boxes
    - So difficult to use its a literale bottlenecks
    - Difficult limits lab size (Cant re-target cameras without shutting down the lab for a week. Can't maintain multiple configurations)
    - Theia exists, but its re-building the same problems of the previous generation in a new modality
   
  - *CV/ML tools exist and are cool, but all single threads, no unified tool*
      - OpenSim - Widely used, very difficult to operate, highly specialized niche within biomechanics, single-modality
      - DeepLabCut - Widely used, very difficult to operate, single-modality
      - OpenCap works, but only for iPhones and requires a cloud upload, and caters exclusively to clinical biomechanics. Single-modality, non-convivial.
  - *CV is drifting away from emprically grounded tools* 
      - Progress on the empirically useful parts of the CV stack (e.g. pose estimation, optical flow) hasn't stopped, but its def stalled  ("too close to the pixels" - more focus on "sematic segmentation" and single-camera scene inference - cool and useful, but not empirically grounded )
      - Things still reference benchmarks on increasingly old COCO data scaped from early 2000's flikr data, limitations havent improved. Gaps for studying patient populations and exteme human movement (acrobatics, circus, etc)
      - *SIMPL/Meshcapade* - Good example of building past empirically validity. 3d from 2d and mesh-fitting pipelines not truth preserving. Building increasingly more abstract and less tracable data channels on top of the same 2d data we've had for a while
      - Folks like *R James Cotton* doing great work, but single application exploration cannot scale beyond fairly nice application within clinical biomechanics

  - *Mobile Legged Robot revolution*
    - Unbelievable progress in legged robots in recent years
    - Largely atributable to advances in RL from physical simulations ( e.g. MuJoCo/Nvidia IsaacLab ) - [_Note that that is MY read on the recent progress of robots, we should try to back it up somehow or just state it as fact and move on? I'm pretty confident that its true enough for govt work, as they say_]
    - We can feed them directly from our DOME, make it easy for ANY robot lab to build their own DOME. Build DOMEs in previous hard to record settings (e.g. deep sea welding) to develop control theory for next gen autonomous robots
    - Control theory based on RL for Robots -> Drive controlled experiments on humans and animals
    - Inverse Reinforcement Learning on human/animal agents, jump start RL training runs for task-matched autonomous agents. 


