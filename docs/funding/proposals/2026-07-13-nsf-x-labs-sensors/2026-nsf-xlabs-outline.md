# Title
Complete Empirical Capture of Agent/Environment Interactions Across All Dimensional Domains

## 0 - Mission
> Proposing teams must describe one or more novel platform technologies that the proposed NSF X-Lab is uniquely suited to advance. Successful teams will have a clear vision statement of how their work will result in an end-state that reshapes an entire field of scientific inquiry or a sector of technology, and how their Mission is currently unmet by existing organizational structures and funding mechanisms.
> [Typst template](./proposal/sections/0-mission.typ)

### Complete Empirical Capture of the Agent/Environment Interaction across all spatial and temporal scales

#### Complete Empirical Capture
- Want to record all relevant empirically accessible data relating to an agent's internal state and external environment across species, spatial and temporal scales
- Record external data (body eye kinematics, reaction forces, etc)
- Record internal data (neural activity, muscle activation, etc)
- Record Environment through allocentric (  e.g. mocap) and egocentric (e.g. head cam) means
- Manipulate environment using VR/AR/XR methods for experimental control

#### Dimensional Domains:
A "dimensional domain" is any thing that can vary across an ordinal dimension, including but not limited to
- **Species** - Data models mapped to phylogenetic tree, all vertebrates have a skull, all tetrapods have fore/hind limbs, etc
- **Scales** - Data alignment across spatial scales, c. elegans, fruit flies, mice, monkeys, humans, and elephants
- **Time** - Data alignment across high density measurements across short timescales (e.g. high speed vid) and longitudinal timescales (e.g. tracking in a cage across the full lifespan)
- **Numerosity** - Data alignment whether studying animal swarms from drones or single/countable animals in a VR/AR Lab setting
- **Complexity** - Data alignment whether doing animal segmentation from satelite or precise full-body kinematics. 


### Endstate  reshape entire field statements
 - Like Anduril/Palantir, but for science
 - True Cross-discplinary interoperability
 - Birth of Mesoscale research revolution
 - Solve the Replication crisis
 - Ground hyperspecialized research in cross-discplinary glue
 - Science as collective tool-building, rather than an endless parade of 8-10 page PDFs

#### Aligned data models and toolsets across each dimensional domain
  - Shared Ontologies -> Shared Protocols -> Shared Tools
  - A member of a mouse lab can walk into a marmoset lab and use the exact same analyses to process the new dataset
- 
### Unmet by current whosits

- Breaking the skill ceiling in the academic sciences
- Building truly world class tools
- Interdisciplinary breakthroughs through UX/UI designed for cross-disciplinary transfer






# Technology Landscape
>Provide  analysis of  current technology landscape that justifies how the proposed platform technology would accelerate the emergence of new technologies and lines of research. The Technology Landscape Analysis should compare current state-of-the-art technology and should provide a clear description of the team's goal to progress the technology and unlock fundamentally new capabilities. A plot or other figure to quantitatively depict the current technology landscape and desired goal(s) the NSF X-Lab may be included here.
> [Typst template](./proposal/sections/1-technology-landscape.typ)
## FreeMoCap 
  - What it is 
  - Community
    - 15k users from 150+ countries
    - 10k stars on GH 
    - 3.5k members in Discord server
  - Poly-repo:
    - core
    - skellycam
    - skellytracker
    - skellyforge
    - skellyblender
  - FreeMoCap will form the basis of the field/domain spanning framework we seek to build in this proposal

## **AGENT**
### External 
- **Kinematics**
  - Pose detection
    - CNN, VIT, etc
    - FMC Expertise
- **Kinetics**
  - 3-axis High Speed Force Plates
  - MD Expertise - We can do KINDA better than our current options
- **Perception**
  - Eye tracking
  - JSM Expertise - we can do WAY better than our current options 
### Internal
- **Musculoskeletal**
  - **Muscle**  
    - OpenSim - Powerful and widely used but awful to use. Can incorporate into our UI and build protocol bridges to research community
      - Can do better than current options
    - EMG implants, motor-unit resolution
      - Ask MD for details
  - **Bones**
    - Multi-view XRay
      - ground truth bone and muscle kinematics 
      - Can operationalize new tech
      - MD Expertise
- **Neural**
  - *Brain Imaging*
    - Miniscopes for 1-photon records of neural behavior across the cortex surface
    -   Target Visual and/or Motor cortex
  - *Electrophysiology*
    - Neuropixels high density arrays
    - Electrophysiology records from deeper layers
    - can target: visual/motor cortex, or sub-cortical regions
  - *EEG*
    - Easy access to high level neural signals (e.g. surprise) w/o skull-invasive surgery
    - Advanced localization via Dan Ferris like methods

#### **Environment** 
- *Measurement*
  - 3d Reconstruction
    - Classical Calibration
      - Allows triangulation of image data
      - FMC Calibration
      - Standard Video  
        - Photogammetry 
        - Gaussian Splatting
        - Neural fields (?)
      - RBG-D
        - Stereo
        - Lidar
        - Structred IR
      - Temporal
        - Event cameras - bio inspired analog framerates, best match to neural data
- *Manipulation*
  - VR/AR Skinner boxes (e.g. BS, JSM)
  - Magnetically controlled toys/food targets (e.g. BS)
  - Remote controllable terrain (e.g. MD)
  - 

# Personnel
>Provide a brief description of the qualifications of Senior/Key Personnel on the team. Include technical expertise, experience commercializing technology, past efforts, and other qualifications that will contribute to achieving the team's Mission. Include information for all Senior/Key Personnel, including team members not currently affiliated with the lead organization.
> [Typst template](./proposal/sections/2-personnel.typ)
- JSM
  - Chief maintainer of freemocap project
  - NEI NIH K99/R00 Recipient
  - Leaving TT Faculty position at Northeastern to follow path to better research
- ATC 
- EI

# Outcomes
>An NSF X-Lab is expected to deliver high-impact, measurable outcomes that advance a nascent platform technology, overcome critical bottlenecks, and realize the team's vision to reshape an entire area of technology or field of scientific research (see Section 7.0 for example outcomes). Phase 0 proposals should describe the team's ambitious target outcomes over a 5- to 7-year timescale to accomplish the stated Mission and the scientific and technical performance benchmarks needed to get there.
> [Typst template](./proposal/sections/3-outcomes.typ)

- Estimate per timestep-
  - State
  - Inputs
  - Outputs 
  - Environment

- Align across dimensional domains:
  - Species
  - Scale
  - Space
  - Time 

- Shared framework across fields
  - Complete **interoperability** between different labs and domains using FMC-XLAB tools or protocols



## Protocols
  - HTTP/WS
  - Matrix protocol
  - Lab Streaming Layer
  - FMC BINARY DATA PROTOCOLS

- The Widest Possible Net
  - Maximum spread across the world and across resource strata
  - Everyone who uses it: 
    - Gets trained in the core concepts, ontology, toolsets
    - Prepared for dropin work in any lab that follows FMC-XLAB protocols
    - Recruitment through community events (like conferences, workshops, and congresses)
  - FMC-XLAB Protocol is allows complete interoperability across:
    - Sensor qualities
      - people trained in a low-resource lab are fully prepared to move into high resource research environments. 
        - Same data across different quality. A 720p@30fps USB Webcam produces the functionally equivalent data to a 500k fps Phantom camera 
    - 
      - New data types (e.g. neural or eye tracking data) exists alongside standard outputs (video, mocap, etc)

- Workshops, Conferences, Congresses, and Hackathons
  - **Workshop**
    - Training, upskilling
    - Vertical educational practices equally suited to students and high-level interdisciplinary researchers
    - Student, User, and Teacher trainings
    
  - **Conference**
    - Reporting on research
    - Sharing individual progress reports
    
  - **Congress**
    - Discussion of Data Protocols, Software Architecture, UI/UX Design 
    - Alignment with changing technology
    - Organizational governance
     
  - **Hackathons**
    - Maintainer alignment
    - Feature development (e.g. integrating new tech)
    - In-person co-working to accelerate remote collaboration
  

# Team Capabilities
> Provide a Team Capability Statement describing how the Senior/Key Personnel on the proposed leadership team bring together complementary expertise in strategic leadership, technical expertise, and/or entrepreneurship, as applicable. The statement should describe how, collectively, the team demonstrates the experience, adaptability, and collaborative approach necessary to execute the Mission. Briefly describe the team's intended governance structure and autonomy during Phase 0 and Phase 1. If applicable, include an overview of networks, partnerships, and capital resources your team currently has and how they will be deployed in support of the proposal.
> [Typst template](./proposal/sections/4-team-capabilities.typ)

## Core team
- JSM - Central guy, did freemocap and laser skeleton research
- ATC - Clinical validation specialty
- EI - Deep professional experience in Tech Sector, high level software architecture experienced necessary to develop truly global scale enterprise level of software in open-source/academic contexts

## Collaborators
- [ ] BS - Ferrets - Visual/Perceptual neuroscience, ephys, etc
- [ ] MD - Guinea Fowl - Musculoskeletal Biomechanics, muscle units
- [ ] DF - Mice - System Biology (?)
- [ ] AH - Marmosets and NHP - ephys
- [ ] MH - Human vision and CPS
- [ ] Mayo Clinic Epilepsy guy - human brain scans and implanted sensors
- [ ] BD [ ] GN/RAI(?) [ ] CH(?) [ ] JH(?) - Robots and Fabrication, control theory
- [ ] AA - Physical facilities, rapid iteration, recruiting
