# Opening

- Establish why quantitative human movement measurement matters
- Current barriers to use (cost, proprietary systems, need for specialized labs/expertise)
- Explain FreeMoCap and core technology - modular, workflow integrating AI and computer vision including:
    - synchronized video
    - pose estimation
    - calibration/triangulation
    - data post processing
    - biomechanical analyses
- FreeMoCap is free and open-source
- FreeMoCap has been used for research across multiple areas already (link to things that have used it), has been integrated and validated/characterized using multiple pose estimation software (link to my dissertation?), and used for mocap of ferrets.
- Additionally, our 1.0 software has garnered a large number of existing users/adopters (github stars, discord forum member count)
- As we move onto the 2.0 software, we continue to work on the product - but the best version of this product needs a far more developed ecosystem around it to allow for community contributions and growth. The next stage, supported by Track 1, focuses on developing ecosystem structures required for supported and sustained growth.

> JON - Needs a Gap statement, both for freemocap as tech and also for what we do with the money 

# Ecosystem Discovery: _Define strategies to assess the need for the innovation, justify why an OSE is the right approach, and identify potential users and developers._
*The need for innovation*: 
- There are existing options for researchers (OpenCap, Pose2Sim, PosePipe), but are often optimized around narrower workflows (only humans), hardware assumptions, model choices etc. 
     - JON - Also mention the animation/commercial stuff (Rokoko, Move AI, Meshcapade)
- Researchers/users keep needing to reinvent the wheel to make a workflow that works for them if it isn't covered by these existing categories. These tend to be lab-only workflows that can't be used by others, hindering reproducibility
- There is a need for a modular, extensible workflow that can be adapted specifically to user needs and their available resources [note - this bullet and the two above it were previously in the opening, but moved it here to be under the *need* section.]

*justify why an OSE is the right approach*: 
- The FreeMoCap ecosystem is the network of people, organizations, software components, methods and practices that use/contribute/validate/extend/sustain FreeMoCap and the broader open-source movement measurement workflow around it.
- Ultimately, we use an OSE because the technology spans many disciplines and evolves quickly. A distributed ecosystem allows everyone to contribute their shared expertise (whether researcher/animator/educator) for the benefit of all, while shared interfaces and governance can preserve trust and sustainability - this is more than one central development team can handle (without $$)

*identify potential users and developers*: 
- current users span a multitude of disciplines:
    - Researchers (across biomechanics, movement science, neuroscience, animal research)
    - Students and educators
    - Animators and creators 
    - People who are just interested in mocap (seems important to say but not sure how to phrase it)

- future potential users could include
    - clinical and rehabilitation researchers
    - sports biomechanics and performance researchers
    - robotics people
    - more educational programs
    - researchers without funding for traditional mocap who want to know that they're using a scientifically valid instrument
    - Computer vision devs of new pose estimation software that want a platform for their work to reach new users
    - Game, AR/VR developers

-- game design stuff can be linked to perception/action research? mention ARGP

*why is the ecosystem still nascent?*
- User adoption has grown much faster than the contributer/maintainer base, and development/architecture knowledge is still largely contained within the core dev team
- People can use the technology, but there are not clear pathways to contribute back
- Beyond software development, don't have defined ways to support validation/benchmarking/documentation/testing as part of a community ecosystem

- Our track 1 ecosystem discovery (through ICORP interviews training) will aim to address specific questions.
    1. What prevents current users from becoming contributors? Are the primary barriers technical/organization/something else?
    2. Interviews with current and potential user communities: What information/evidence do different user communities need in order to adapt and use the technology? (different needs between a clinical researcher vs. animal science vs. educator for example).
    3. Tied to the above, what outputs/capabilities would make different stakeholder groups invest in long-term use of FreeMoCap?
    4. Interviews with current contributors and open-source developers: What would make technical contributions easier?  Do developers want clearer architecture/documentation/examples/plugins? 
    5. What aspects should remain centralized in FreeMoCap? What could realistically become community-owned/externally maintained? 
    6. Would standardized hardware kits lower adoption barriers for users who want a validated, reproducible setup?
    7. Interview with open-source devs (like the Blender people): How can we support community contributions easily and safely? 


# Organization and Governance

- We envision the FreeMoCap Foundation as a steward of core infrastructure and data standards. Track 1 will explore aspects of the main question: How should the FreeMoCap ecosystem be structured so that more people can contribute meaningfully without making the platform fragmented, unreliable, or dependent on a small core team?

- The role of the FreeMoCap Foundation
    - define what the Foundation should steward directly and how it can coordinate the ecosystem without becoming a bottleneck

- Contributor and maintainer structure
    - define clearer pathways from user -> contributor, and how a regular contributor could become a maintainer
    - identify specialized contributor roles such as validation/benchmarking/documentation aligned roles
    - reduce dependence on core developrs

- Modular technical participation
    - The current FreeMoCap workflow is organized into modular technical components with defined responsibilities (skellyrepos)
    - How can we continue this and make it easer for contributors to work on specific parts of the system without having to modify the entire stack? 
  
- Community plugs and extensions
    - Investigate whether the interfaces could support community-developed extensions to the software
    - Pose estimation models as an example: outside developers could integrate new models through a defined interface that could reach users without requiring the core team to directly implement every model

- Governance
    - How makes the major technical decisions? Clarify what the domain of each role (maintainers vs. core team) is. (PEP stuff)


# Risk Analysis/Security Plan

- FreeMoCap is locally run, which means users data belong to them. This is beneficial from a safety perspective, and for potential patient or research participant privacy concerns

- However, we will use track 1 to explore the risks of broadening the scope of community contributions and how to mitigate them:
    - We anticipate needing security/safety checks and quality controls for plugins/contributions
    - Will need to implement security measures for malicious or accidentally unsafe contributions

- Additionally, these risks extend to data quality. We anticipate establishing diagnostic, testing, and benchmarking suites to measure the impact of changes on the output scientific data - preserving scientific validity and integrity of the movements measured by the software. This includes comparison to reference datasets, documents of expected performance, measuring performance across versions

- Transparent methods
    - For each set of data, users should be able to see all of the factors that went into producing that dataset, including FMC version, tracker/model and version, calibration methods, filters/settings, hardware configuration etc. for the urposes of security and reproducibility

- Build user profiles to persist over time? microcredentials that you've worked through tutorials (aka maintaing logins user profiles in context of security)

- Plan for a world with a local AI that can help with workflow stuff 

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

