// // ── 3. Outcomes ──
// [An NSF X-Lab is expected to deliver high-impact, measurable outcomes that advance a nascent platform technology, overcome critical bottlenecks, and realize the team's vision to reshape an entire area of technology or field of scientific research (see Section 7.0 for example outcomes). Phase 0 proposals should describe the team's ambitious target outcomes over a 5- to 7-year timescale to accomplish the stated Mission and the scientific and technical performance benchmarks needed to get there.]
= Outcomes

- Develop, validte, and disseminte - DOME Variants
  - *#smallcaps[Dome]-L* — the flagship instrumented volume, in the greater Boston area. Large enough to fully enclose the smaller variants for validation and metrological grounding.

  - *#smallcaps[Dome]-S* — the extension of the commodity-camera capture volumes already built and disseminated through the FreeMoCap Project. Representative of the #smallcaps[Dome] a research lab or a classroom would build. 

  - *#smallcaps[Dome]-Mobile* — a wearable, self-contained #smallcaps[Dome] producing Dense Observations in unconstrained indoor and outdoor environments, continuing the lineage of the PI's gaze/gait and retinal optic flow work @matthis2018 @matthis2022 @muller2023 @muller2024. 
    - Validate in large DOME-L so we can trust the outdoors

  - Also - disseminate custom use-directed builds of DOME variants through network of collaborators studying Humans, animals, and robots. 

== Bottlenecks
- *Technology*
  - *New eye tracker*
    - Best ever made
    - Add every sensor we can, see which allow us to measure DoFs we need, optionally scale back and remove 
    - Optionally also make cheaper version for classroms - fully compatible data output (with less precision and depth)
      - Remake the field by retraining the next generation of researcher in the tools of the field you want to build
    - Dense instrumentation in the eye and world cameras
      - *Eye sensor array*
        -  includes
          - High res IRGB
          - High speed IRGB
          - MEMS single-pixel sensor
          - LIDar scanner 
          - IR/Structured IR illuminators
          - Event Camera

      - *World sensor array* 
        - Build differnt form factors (big heavy, small light)
        - Head- or Drone- mountable
        - Stereo RGB, Structured IR, LiDAR, etc
        - High density multi-model environment scan
        - Fast scan (RGB-D)
        - Slow scan (Textured Mesh)
        - Semantic segmentation (via SAM3, YOLO, etc)
        - 
- *Auto-configuring Mocap Camera Array*
  - Large scale mocap too hard to control, cuts against usefulness of large volumes. Legit barrier to progress and usefulness of mocap!!
  - Our Auto-calibrating, Programmtically controlled Mocap Camera array will help!
    - Allow centrally controlled definition of capture volume within availble range
    - Auto-configure for high density tracking within a small space, or more diffuse tracking across a larger space. Higher ceiling for drones, or groundplane focus for locomotion
    - Use to cross-validate smaller DOMEs within its space, Programmtically explore best practices for camera placement and calibration procedures

  - *Each camera*: 
    - Fully actuated Extrinsics (pitch, tilt, roll motor) and Intrinsics (Zoom, apperture, focus)
    - *Power Over Ethernet* (daisy-chainable power + data, so we can control arbitrary cameras from a single wire coming off the computer)
    - Modular: 
      - Sensor (high def, high speed, spectral sensitivity, size, etc)
      - Illumination (Matchin spectrum of sensor)
      - Lens Assembly (zoom, aperture, etc)
- *Hybrid Body kinematics*
  - Fuse IMU- kinematics iwth Camera-kinematics for BEST kinematics (able to do inverse dynamics (note - also needs force plates))
- *Drone swarm mocap*
  - Do it in comparison of IMU- mocap to static DOME cameras, then itnegrate a *Swarm of Drone-mounted World-Sensor arrays* that ground inside-out estiamtes of IMU- and head-mounted World-sensor array during unconstrained outdoor used (train drones and develop swarm controller by tracking them within large DOME-L)
  - Drone kinematics will be noisy, but fusable with IMu-mocap for grouned outdoor data
- *Modular Force Plate floor panels*
  - Floor is all removable panels
  - Integrate force plates at key points
  - Create *Terrain* and *LED sceen* panels that can attached to top of force plates, give force reading under defined 3d terrain and interactive LED panels (for cntrolled experiments that manipulate location and texture motion of target footholds)
  - Each 0.5m square of the ground can be: Forceplate, Terrain/LED panel, or both (force plate stacked with terrain that is either inert or composed of LED panels)
  - Force plates allow measuring GRF and downstream OpenSim and Inverse Dynamics stuff to estimate muscle activity
  - Terrain allows validation of head and drone mounted world scanners
  - LED panels allow controlled experiments of visual/locomotor control theory, and useful human DOME data to use Inverse Reinforcement Learning to extract apparent human control policy, and feed that policy AND and the actual DOME data into robot RL control systems solvers

#pagebreak()
#include "../helpers/timeline-milestones.typ"
