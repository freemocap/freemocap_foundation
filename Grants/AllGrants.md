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

# NumFocus Small Development Grant Spring 2024

## Proposal Title: Multi-Person Tracking in FreeMoCap

## Two Sentence Summary:
We are requesting a $5000 grant to support the extension of FreeMoCap, a free and open source markerless motion capture tool, with a multi-person motion capture feature. Support for multi-person tracking will address a frequent request from our user base and substantially widen the research possibilities achievable with our software. 

## Description of Proposal: Max 750 words

In this proposal, we are seeking funding for code development for adding multi-person tracking support to FreeMoCap, a free and open source markerless motion capture software dedicated to making motion capture more accessible. FreeMoCap democratizes motion capture by heavily reducing the cost of entry, allowing the use of readily available hardware like webcams and smartphone cameras. Our software is also able to record in environments where traditional motion capture solutions struggle, like in tight spaces or outdoors. FreeMoCap makes motion capture more accessible, particularly for low-budget research, educational environments, and creative projects.

A major limit of FreeMoCap now is that it can only record motion capture of one person at a time. This limits the type of research that can be conducted with our software, specifically preventing any study of interactions between subjects with our software. Multi-person tracking is also one of our most requested features from users. This grant will enable us to build upon our existing single-subject framework to support multi-person tracking. Our approach will involve leveraging epipolar geometry to match multiple subjects across different camera views. To ensure our multi-person tracking functionality is robust and user-friendly, we will also focus on creating comprehensive documentation and tutorials to aid our users in leveraging this new feature effectively.

FreeMoCap works by recording videos of the same subject from different angles. We then use machine learning models to find the joint positions in each video frame, and use computer vision techniques to triangulate the joint positions from different camera views into 3D data. Integrating multi-person tracking into this process will require two main steps:

1. Development of Multi-Subject Matching Algorithm: Utilizing epipolar geometry and the camera calibration we use for triangulation, we will develop an algorithm capable of distinguishing and matching multiple subjects across the camera network. We have already implemented new machine learning models capable of tracking the multiple subjects across a single view, but we need to be able to reliably match the data across views. This will involve sophisticated coding to ensure accuracy in complex scenarios where subjects may occlude each other or intersect in the field of view.

2. Integration and Testing: Following the development of the multi-subject matching algorithm, we will integrate it with the current FreeMoCap codebase. We will need to adapt our processing pipeline and file management to handle data of multiple subjects. Rigorous testing will be carried out to ensure the new functionality works seamlessly with the existing features and maintains the software's user-friendly nature.

By introducing multi-person tracking, researchers will be able to analyze group dynamics, social interactions, and collective movement patterns, vastly expanding the scope of research applications for FreeMoCap. Both steps in the process will also pave the way for us to include multi-animal and multi-object tracking. This project would help further our goal of making cutting edge research tools freely accessible for scientific discovery, creative expression, and educational purposes.


## Please explain the benefit of this proposal including:
	-Impact to the project
	-Impact to the scientific ecosystem
	-Impact to the community
    This question is required.*
	No more than 400 words (2,500 characters max)
  

Support for multi-person tracking will be a major feature upgrade for FreeMoCap. It will help meet the demonstrated needs of our users, and help prevent the loss of potential users who require this feature. It will also allow use to utilize the full capabilities of the machine learning models we have already implemented. 

Adding multi-person tracking to FreeMoCap will also benefit the scientific ecosystem by providing an easy to use, low cost, research grade motion capture solution that supports tracking multiple people.

Multi-person tracking will add the ability to track interactions between subjects, increasing the breadth of research that will be able to be performed with FreeMoCap. Adding multi-person tracking will also set the groundwork for adding multi-animal and multi-object tracking. 

The community will also benefit from multi-person tracking. Whether we support multi-person tracking is one of our most frequently asked questions on our community Discord. This feature would allow our users more flexibility in the type of movements they can capture by eliminating one of our biggest current limitations. Multi-person tracking support would help our users in the scientific research community, as well as students, animators, and sport practitioners.


## Amount Requested: Max $10k
- $5000

## Brief Budget Justification: (Please include hours and/or pay rates)This question is required.
How will the money be spent?: 
The money will cover developer payment of 200 hours of work at $25 per hour.


## Timeline of Deliverables:This question is required.
Please include specific timelines showing when you will achieve the proposed work:
The work will be conducted over two months and a half months at 20 hours per week for 10 weeks.


## Please list the name(s) of the person(s) who will be carrying out the work and a short statement (approximately 1 sentence) of why they are qualified.This question is required.:
The work will be conducted by Philip Queen, a software dveloper who is already a primary contributor to FreeMoCap and has developed major features for the project.


## How will someone be identified to carry out the work? This question is required.:
We have already identified Philip Queen to perform the work.

## Please list the name and email address of a project leader(s) who has approved this proposal.This question is required.:
Jonathan Matthis, jon@freemocap.org
