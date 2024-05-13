# SciPy Tutorial

## Short Bio

*A short bio of the presenter or team members, containing a description of past experiences as a trainer/teacher/speaker, and (ideally) links to videos of these experiences if available*

*NOTE: I don't actually know where this goes in the submission. I didn't see a spot for it*

https://www.youtube.com/watch?v=GxKmyKdnTy0&list=PLWxH2Ov17q5EDi9Bg6mqQHXB9qkIrJmhs&index=2

https://www.youtube.com/@jonmatthis

https://mediaspace.wisc.edu/media/DW22_Mattis%2C+Jonathan+S.++June+16th+2022%2C+12A33A15+pm/1_ucmxydwq

## Abstract

FreeMoCap is a free, open-source, markerless motion capture system designed to democratize access to advanced motion capture technology. Utilizing webcams and smartphone cameras, FreeMoCap enables accurate motion capture in diverse environments. This tutorial introduces participants to FreeMoCap's capabilities, installation, and setup processes. Participants will get hands-on experience with capturing and processing motion data, visualizing 3D data in Blender, and analyzing motion for various applications. Targeted at researchers, developers, and hobbyists with basic Python knowledge, this session aims to equip participants with the skills to apply markerless motion capture in research, education, and creative projects, fostering innovation across disciplines

## Description

*A description of the tutorial, suitable for posting on the SciPy website for attendees to view. It should include the target audience, the expected level of knowledge prior to the class, and the goals of the class.*

FreeMoCap is a free, open-source markerless motion capture software dedicated to making motion capture more accessible. By leveraging readily available hardware such as webcams and smartphone cameras, FreeMoCap drastically reduces the cost of entry into motion capture technology. It performs effectively in environments where traditional systems falter, such as tight spaces or outdoor settings. Our mission is to democratize motion capture for low-budget research, educational endeavors, and creative projects, making it accessible to a broader audience.

Tutorial Goals: Through this tutorial, participants will:

- Understand the role and capabilities of FreeMoCap within the motion capture ecosystem.
- Learn how to install and setup FreeMoCap to start collecting motion capture data.
- Master conducting motion capture using webcams, including connecting, calibrating cams, and processing data through FreeMoCap's GUI.
- Learn how to operate Blender to visualize FreeMoCap 3D data effectively
- Acquire skills to analyze the resultant 3D data for motion analyses
- Engage with the FreeMoCap community for support, collaboration, and to contribute to its ongoing development

Participants will leave equipped with the knowledge and skills to deploy markerless motion capture in their fields.

Target Audience: This tutorial is ideally suited for researchers, developers, hobbyists, and educators interested in integrating motion capture technology into their work or studies. Attendees from various backgrounds such as biomechanics, computer science, animation, sports science, and rehabilitation will find this tutorial particularly beneficial.

Expected Level of Knowledge: Anyone interested in motion capture is welcome. General familiarity with using pip for package installation and running Python scripts is helpful, but is not required. Our tutorial is designed to accommodate attendees of all skill levels.

Repository: https://github.com/freemocap/freemocap

Documentation: https://freemocap.github.io/documentation/index_md.html

## Pre-requisite Skills

*A list of prerequisite skills expected of attendees, so that participants can chose level appropriate tutorials. This content will be shown publicly.*

Anyone interested in motion capture is welcome. General familiarity with using pip for package installation and running Python scripts is helpful, but is not required. Our tutorial is designed to accommodate attendees of all skill levels.

## Outline

*A more detailed outline of the tutorial content, including the duration of each part and exercise sessions. Please include a description of how you plan to make the tutorial hands-on.*

### Part I: Introducing and Installation FreeMoCap (1hr)

- Introduction to FreeMoCap

  - Brief history and motivation behind FreeMoCap's development
  - Example
- Understanding FreeMoCap's pipeline

  - Detailed explanation of the four main processing steps: synchronous video capture, calibration, 2D pose estimation, and 3D reconstruction
- Installation Guide

  - Step-by-step instructions for installing FreeMoCap using Anaconda, installing from source code, or utilizing an .exe installer
- FreeMoCap Architecture Overview

  - Explanation of the various subrepos and packages used within FreeMoCap

### Part II: Capturing Data (1hr)

- Best Practices for Data Capture

  - Discussion on optimal camera placement, lighting conditions, and environment setup to ensure high-quality data capture.
- Camera Setup and Calibration

  - Hands-on exercise for participants to set up their own FreeMoCap recording stations.
  - Detailed guide on calibrating cameras using a ChArUco board, including practical tips for accuracy
- Conducting a Live Capture Session:

  - Guided live capture sessions for participants, with an overview of how to use the FreeMoCap GUI to capture data

### Break (10min)

### Part III: Data Processing and Visualization (45min)

- Data Processing Walkthrough

  - Detailed explanation of parameters for 2D and 3D data processing
  - Overview of data output files from each processing step
- Visualizing 3D Data with Blender

  - Introduction to using Blender for 3D data visualization with FreeMoCap

### Break (10min)

### Part IV: Data Analysis (45min)

- Analyzing 3D MoCap Data with Python

  - Hands-on tutorial on using a Jupyter notebook to analyze demo 3D motion capture data

### Conclusion (10min)

- Future Directions

  - Overview of future goals for FreeMoCap
- Engagement With the Community

  - Information of how participants can stay involved with FreeMoCap and ask further questions post-tutorial
  - Discussion of opportunities to contribute to FreeMoCap

## Installation

*Detailed installation instructions for various common Python environments so that attendees can have everything ready for participating before heading to SciPy*

1. Environment Setup:

If you haven't already, install Anaconda (https://www.anaconda.com/download) or Miniconda (https://conda.io/docs/install/quick.html) on your system. We recommend using conda because it is the most beginner-friendly method to create a virtual environment. Any other method for creating a virtual environment (venv, poetry, etc) should work just as well.

2. Create a New Python Environment

First, open a terminal like Anaconda Prompt, or your system's terminal windows. Next create and activate a new Python environment with the recommended version 3.11. To do this in Conda, run `conda create -n freemocap-env python=3.11 -y` to create an environment, followed by `conda activate freemocap-env` to activate it.

3. Install FreeMoCap

In your terminal, run `pip install freemocap` to install from PyPI. If you run into issues during install, we can assist you during the tutorial.

4. Run FreeMoCap

If all of the steps above were successful, you can `freemocap` in your terminal and a GUI will pop up!

We also have a detailed version of these instructions in our documentation: https://freemocap.github.io/documentation/installation.html

## Additional Info

*If available, the tutorial notes, slides, exercise files, and IPython notebooks, even if they are preliminary*

- Preliminary slides and graphics can be found here: https://drive.google.com/drive/folders/1bqaqhkZKcjt5K6ng3IkND7Ody9Laynbm?usp=sharing
