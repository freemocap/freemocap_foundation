- five questions to consider:
    - What are you doing? Why are you doing it? How will you do it? How will you know whether it worked? What benefits result if it works?

- What ecosystem problem exists → what intervention are we proposing → why should that intervention solve it → how will we implement it → what observable evidence tells us it worked?

- treating and testing a sustainable model for an open-source scientific infrastructure ecosystem around a technically sophisticated research tool: modular architecture, contribution pathways, governance, testing/release infrastructure, community participation, reproducibility, interoperability, etc.

- NSF specifically identifies things such as improved STEM education, public engagement, workforce development, academia/industry partnerships, economic competitiveness, and enhanced infrastructure for research and education as examples of broader impacts.

FreeMoCap is already a promising open-source research product with demonstrated value; the problem is that its impact and long-term viability are constrained by the lack of a scalable, secure, community-driven ecosystem around it. Track 1 will systematically determine how to transform FreeMoCap from a project sustained by a small core team into a secure, sustainable open-source ecosystem with distributed contributors and a broad user community.

## Opening

- Quantitative motion analysis is critical to understanding movement across a variety of disciplines. However, the tools to do so remain out of reach for many users - commerical options are expensive, and existing free or open-source options tend to be more narrow in their scope and applicable discipline. Users outside these needs tend up creating workflows for them, but each reinventing the wheel for their own purposes. These pieces of code cannot really be shared outside of their particular environment.

- Thus, there is a need for a method to accurately capture movement that is accessible to the general population, while also being extensible to the needs for a different discipline. 

- The FreeMoCap Foundation is responsible for maintaining the Free Motion Capture Project (FreeMoCap), a free, open-source framework of multiple sub-repositories that combine to create a workflow that records and transforms synchronized videos from consumer grade webcams into research-grade 3D motion capture. 

- The workflow maintained within FreeMoCap includes: 
    - synchronized video recording (SkellyCam), 2D pose estimation (SkellyTracker),calibration, triangulation and data post-processing (SkellyForge), and exporting into different formats (Blender etc.)

- Currently, FreeMoCap achieved broad usage, with an estimated X users over X countries, X stars on Github, and an active community forum of over X users. FreeMoCap has also been used for research across a variety of disciplines (cite papers). Our work in FreeMoCap has validated it against gold-standard motion capture to demonstrate the benefits of modular, extensible pipelines. We have also applied our research to non-human subjects, examining neural recordings of ferrets. 

- While the software shows promise and use, its long-term impact and viability is dependent on building a fully scalable, secure, community-driven ecosystem around it. Our track 1 proposal focuses around the scoping and determination of how to turn FreeMoCap from a project with a small, core team, into a secure, sustainaible open-source ecosystem.

[MISSING VALUE STATEMENT - need to put in plain english the 'unlocks'. Potentially of both the software itself (light touch) and then what the grant would unlock. Ground level understanding of why this would be helpful for society. ]

- In our current state, user adoption has grown much faster than the contributor/maintainer base, and the architecture knowledge is largely maintained within a core development team. We have users across disciplines, and much more we probably don't need to know about. We intend to use this grant to do a few things: 1) Identify and understand who our user base is and what their needs are, 2) Support the decentralization of knowledge needed to understand and contribute to the software through documentation and the development of educational resources, 3) Develop models for community-driven architecture for contributions. 

## Ecosystem Discovery

- The open-source motion capture ecosystem is full of potential options. These include commercial options such as Theia3D, MoveAI, Rokoko, as well as open-source options such as OpenCap, PosePipe, Pose2Sim. Several researchers have developed their own custom workflows as well (cite those papers here). However, these all tend to have limitations. This might be a combination of cost to use, as well as hardware restrictions. Some of these tools are also purpose built for specific audiences (i.e., human biomechanics researchers or animators), while in others licensing can prevent broader use. Purpose-built pipelines tend to live within the labs that created them.

- The need for innovation exists in a tool that can be both accessible to a general audience while also being adaptable to specific research needs. Achieving this goal requires an extensible, modular workflow, the basis of which needs to driven on a strong, community-driven ecosystem to make it long-lasting and sustainable

- We have found an OSE ecosystem to be the best approach as it has invited users across disciplines to contribute their expertise to our workflow for the benefit of all. However, scoping and planning is required in order to move from our current system, where everything has to pass through a small central development team, to a more distributed workflow with shared interfaces and governance.

- Our current development of the grant has brought us into contact with users from a range of disciplines that make use of the software: this includes human movement researchers, animators, educators, and hobbyists. However, this these are the people who have contacted us. In order for us to focus on community-driven architecture, we must also understand the community. As such, we will use the scoping phase of Track 1 to not only understand the needs of potential users, but existing ones as well. 

- Understanding the existing users means that continued support of our community forum, while also releasing periodic surveys/calls to the community as to their work, demographics, and use case. We can then use this to schedule calls interviews with existing users for I-Corps. For I-Corps, we anticipate interviewing users over a range of disciplines that we have found the software applies to, whether existing or potential users. This includes animators and creators, educators and students, researchers across the spectrum of human, animal and robotics research, existing open-source developers (Blender). This allows us to both understand user and contributor mindset. Interviews with users will encompass software workflow to better understand user experience and onboarding, as well as what aspects of user documentation were helpful or not. Interviews with current contributors will examine what architecture-related documentation would be useful along with other barriers preventing contribution. Interviews with current software developers, such as the Blender Foundation, will scope out the risks and necessities in implementing architecture such as community plugins, as they have done that already. Interviews with researchers across disciplines will be made in an effort to understand the specific workflow needs that our software would need to adapt to in order to find long-term use and trust by the scientific community. And across many of these users, including educators and students, we will ask about hardware kits (a possible source of long-term sustainment) and what would be useful about them. 

## Organization and Governance

The FreeMoCap software will be under the stewardship of the FreeMoCap Foundation. Scoping in Phase 1 will be used to understand how to best move towards easier, secure contributions with more decentralized responsibility. 

- we have found that those who have become contributors, though smaller in number, tend to stick around and be more involved on the development end (pooya, ajc, dom scott) in suggesting ideas and prs. maybe a thought on number of contributors vs. quality? 

- notes on modular repo allowing for easier modification of single pieces without affective the whole

- community extensions:     - Investigate whether the interfaces could support community-developed extensions to the software
    - Pose estimation models as an example: outside developers could integrate new models through a defined interface that could reach users without requiring the core team to directly implement every model

    
- Governance
    - How makes the major technical decisions? Clarify what the domain of each role (maintainers vs. core team) is. (PEP stuff)
    - PEP: steering council (final authority),  core team (trusted volunteers that help manage the project), edirotrs: responsible for managing adminstrate and editorial aspects of workflow
    workflow: encourage and vet an idea publically, support one proposal or idea per PR, finding a core sponsor

## Risks and Security Analysis

- A core aspect of the FreeMoCap workflow is that it is entirely locally run. Therefore, all data generated by that user belongs solely to that user and is never passed through any cloud-software or other remote softwares. This is essential both for user privacy, researcher privacy involving human subjects, and any clinical work. 

- However, we will use track 1 to explore the risks of broadening the scope of community contributions and how to mitigate them:
    - We anticipate needing security/safety checks and quality controls for plugins/contributions
    - Will need to implement security measures for malicious or accidentally unsafe contributions


- Additionally, these risks extend to data quality. We anticipate establishing diagnostic, testing, and benchmarking suites to measure the impact of changes on the output scientific data - preserving scientific validity and integrity of the movements measured by the software. This includes comparison to reference datasets, documents of expected performance, measuring performance across versions

- Transparent methods
    - For each set of data, users should be able to see all of the factors that went into producing that dataset, including FMC version, tracker/model and version, calibration methods, filters/settings, hardware configuration etc. for the urposes of security and reproducibility

- Also considering having user profiles that contain potential microcredentials of user progress and milestones within their use of the software - allowing for potential delineation of user status (expert vs basic) based on these credentials. Such a system would also necessitate security around any user profile and login data. 

- We also consider a world we locally run AI can be used to help workflows and identify issues for the user, which will also come with its own security risks. 


# Community Building

- Currently, FreeMoCap maintains an active community of over 10,000 users. 
    - This space is intentionally structured so that users can both ask and answer questions without relying on the core development time
    - A weekly community call provides a regular venue for project updates directly to the users, along with feedback/discussion of needs
    - This gives FreeMoCap an existing foundation for community growth [discuss star count here]

- Track 1 will be used to test small-scale education and engagement models
    - Develop and pilot educational/community resources on a smaller scale
    - Host hands-on classes through local organizations (Artisans Asylum)
    - Work with students through organizations (Possible Zone)
    - Use pilots to identify what formats are most effective for educating users on FreeMoCap, technical and knowledge barriers that arise, how education resources can be made available at large

- We would use these to develop a scalable education/community model into more guided curriculums, instructor materials, guided projects, workshops, tutorials. etc. 
- Long term, we would explore the development of a larger educational conference or community meeting to bring together users/developrs/educators/researchers
    - Track 1 pilots would help determine what the content of the event should actually contain and how it could be more beneficial to audiences. 
- Give space for community contributions to matter (404 pages, server games/competitions)

