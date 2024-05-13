
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
