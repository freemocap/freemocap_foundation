// FIGURE — FreeMoCap workflow overview. Rendered in Part 1 (fig-overview).
// Lives in its own file so it can be moved/retuned without touching prose.
// Image paths resolve relative to THIS file (floats/), hence ../../figures/.
#figure(
  image("../../figures/overview_v2.png", width: 100%),
  caption: [The FreeMoCap workflow and its component repositories (blue). (A) Synchronized video from consumer-grade USB webcams (skellycam) is processed through camera calibration and 3D reconstruction (skellyforge) and modular pose estimation (skellytracker), producing 3D motion trajectories for downstream analysis or animation export. Separation of the pipeline by domain allows individual components to be modified or replaced independently. (B) Reconstructed 3D trajectories alongside the source camera views.]
) <fig-overview>
