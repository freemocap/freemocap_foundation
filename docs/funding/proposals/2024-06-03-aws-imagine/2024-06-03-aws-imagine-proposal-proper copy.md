# 2024-06-03 - FMC - AWS Imagine Proposal


[![hackmd-github-sync-badge](https://hackmd.io/Vl1LGFANQCW7JZctVkhXJg/badge)](https://hackmd.io/Vl1LGFANQCW7JZctVkhXJg)

## 2 - [project-info](project-info.md)

### 2.2 What is your project and how does it relate to your organization’s mission? (200-350 words) 

We are developing an LLM-powered AI mentorship companion system for the FreeMoCap software - a free open source markerless motion capture system. The FreeMoCap Foundation is dedicated to the ensuring universal accessibility to emerging technology through the development of user friendly tools based on highly technical core principles. We specifically leverate the breadth of potential use cases for motion capture technology -  ranging from artistic use in 3d animation and video games to high level biomedical research and human movement neuroscience - to develop 'covert' educational opportunities for our users. We have many instances of high school aged users showing up with a desire to record a short motion capture clip for an animated short film and walking away with a working understanding of clinical biomechanics and principles of 3D motion capture, and career physical therapists who show up looking for a low-cost gait analysis tool and wind up developing an unexpected interest and expertise in computational video analysis and machine learning. 

We believe that by integrating a curated AI mentor/assistant to our core technology will massively accelerate these kinds of cross-disciplinary educational opportunities and super-charge our users ability to confidently dive deeply into the inner workings of the FreeMoCap software and its consituent and associated domains. 

A strong onboarding process is one of the most difficult and often overlooked aspects of accessibility, particularly in the case of technical scientific software (albeit one with broad public appeal). By integrating a well-trained, finely-tuned AI support system, we can address onboarding issues and provide a sustainable resource for continuous troubleshooting and guidance in the fast-paced climate of software in development. The support system has broad generalizability that could be applied not just to this specific software, but to any technical application in any domain.

Our datasets include thousands of student-AI interactions collected from LLM-empowered educational tools we developed for use in university classrooms. Beyond this, our online community enjoys thousands of international users from over 100 countries, including 2000+ member Discorder server representing a close-knit, diverse group of dedicated students, engineers, researchers, artists, and many more. 



#### 2.2.1 How does generative AI fit into your overall project design? How will it strategically enhance your mission achievement? (100 - 250 words) 

The FreeMoCap Foundation's mission can be summed up as "aggressive accessibility" to science and education. The integration of generative AI is a transformative addition toward this same goal: where FreeMoCap currently lowers the barrier to motion capture *tools* (free open-source software with support for consumer-grade cameras), generative AI lowers the barrier to motion capture *expertise*. Our approach treats the model as a **mentor**, offering individualized support and instruction to all users across the entire FreeMoCap ecosystem.

With the support of the generative AI mentor, our users will have constant, instantaneous access to all of the following: 
- [1] **onboarding / orientation**, helping users just getting started to better understand all of the processes and features involved in the FreeMoCap workflow; 
- [2] **technical support**, helping established users navigate bugs or nuances of the interface, drawing on frequently asked questions; 
- [3] and **further education**, when an experienced user wants to learn more advanced techniques for specific applications, or wants tutoring on advanced concepts in and around the realm of motion capture.

The mentor's own knowledge (as an LLM) will be supplemented with knowledge of individual users' skill levels and goals to create "curricular bridges", adapting on the fly as the user continues to interact with the app and in the community. In this way, the mentor will excel at providing deeply individualized support to every user, from the curious hobbyist home animator, to the highschooler with no experience, to the 20-year veteran of biomechanics research that now wants to learn about computer vision. 

#### 2.2.2 How is your organization using data to make decisions today? (100 - 250 words) 	



___
### 2.3 What are the intended outcomes of your project? What new capabilities would it unlock for your organization? (200-350 words) 


Universal design is a core tenet of the FreeMoCap Project, i.e. the idealized goal of creating a tool that is usable by every person regardless of their background, training, or expertise. The aspirational goal is to create a system that is simultaneously the best and most performant tool for world-class domain experts in fields that traditionally have used motion capture (e.g. clinical biomechanics, perceptuomotor neuroscience, 3d animation and video game design, etc.) while remaining accessible to high-school-level students with no technical training and outside assistance. 

We are developing an  LLM-powered AI-mentorship system that will promote self-directed exploration and education within the technical, scientific, and artistic domains of the FreeMoCap software and super-charge our dedication to the principle of Universal Design. We will use carefully managed and secure user authentication to tailor each user's interaction with the AI mentor to each their individual background, experience level, and interests from initial onboarding, through early competency building, and throughout the lifelong development of true expertise. Through careful management of data generated from individual users within the larger body of data frmo the freemocap community as a whole, thes AI tools will massively accelerate the implicit educational impact of this highly technical but broadly appealing scientific software. 


Through these efforts, we expect to unlock new capabilities for our organization, such as the ability to scale personalized support and education without being limited by the capacity of direct human-to-human interactions. The AI mentor will enable us to provide high-quality, individualized mentorship at scale, thereby enhancing user engagement, accelerating learning curves, and fostering a more inclusive community. Additionally, the continuous fine-tuning of the AI based on real user interactions will exponentially increase its educational impact over time, keeping pace with advancements in AI and LLM technologies.

### 2.4 What is driving the need for this specific project? Why now? (200-350 words) 

The driving need for this project stems from the inherent complexity and technicality of the FreeMoCap software and the associated breadth of the domains it covers - ranging from computational video analysis, clinical biomechanics, 3d animation, and more. We are building FreeMoCap as a platform which simultaneously provides high technical capacity with minimal effort as well as a long-term entry point to any of the disparate domains it touches.

While we have made significant strides in making the software accessible, there are limitations to traditional methods we currently use, such as video tutorials, static site documentation, and direct human assistance via a community Discord server. As the project grows, these methods may not be scalable or sufficient to meet the diverse needs and backgrounds of our expanding user base.

The emergence of viable generative AI assistants presents a unique opportunity to address these challenges. The ability to provide curated and individualized AI mentorship to bridge the gaps in understanding unlocks an unprecedented opportunity for large scale technical education by way of the FreeMoCap software. This is particularly critical as we aim to serve both highly specialized domain experts and beginners with no prior technical training - an AI mentor will be able to provide instruction at a level that is appropriate for each user, while gently encouraging gentle increases in broad mastery for each user throughout their lifetime.

We already have direct experience developing and deploying AI-augmented chatbots in teaching evinronemnts - we have built and used three iterations of an LLM powered tool (https://github.com/freemocap/skellybot) in 6 university courses at three institutions to teach students topics like Human Movement Neuroscience, Cognitive Science Capstone, and Intoduction to Perception and Action. These initial experiments were extremely successful at allowing students to navigate their own paths through broadly diverse topics in away that would be impossible using traditional teaching methods. These experiences underscore the potential effectiveness of this approach to education, and hint at incredible potential if integrated into a standalone, widely distributed software like the FreeMoCap system. 

Implementing an AI mentor will help us overcome the bottleneck of limited expert availability, maximizing the educational impact of our domain experts while providing mentees with flexible, self-directed learning opportunities. As AI and LLM tools continue to advance, our AI mentor will evolve, continuously enhancing its ability to support and educate our diverse user community.

## 3 - [technical-design](technical-design.md)

### 3.1 Describe your project’s technical design at a high level. What does it do and how? (200-350 words) 

- **Authentification**
    - Tracking user identity across platforms to provide individually curated AI mentorship from 'first touch to expertise'.

- **Data lake**
    - Storing raw data from:
        - User interaction with the core software (`freemocap`)
        - User-User interactions in our communal spaces 
            - On Social media 
            - On our 2400 person Discord server 
        - User-Bot interactions 
            - Conversations between user and SkellyBot
                -  in community server 
                -  within the `freemocap` software
- **Data Warehouse**
    - Storing structured data related to individual users as well as the `freemocap` community as a whole
    - Combine these data sources to provide individually curated AI mentor ship for each user, guided by the User's past and current and desired intersts and expertise
    - Aglomerate individual user data to provide fine-tuning for the generic LLM assistant for this task 
- **Application integration**
    - Run LLM services to provide Users with curated mentorship within their personal use of the `freemocap` application, as well as for the FreeMoCap community discord server 
- **AI/ML for reasearch **
    - Fine tune an LLM based on the broadly distributed domains of expertise assocaited with the `freemocap` software
    - `freemocap` touches many domains which do not commonly overlap (e.g. animation, AI/ML, biomechanics, perceptuomotor neuroscience, etc), so specific fine tuning will be necessary to provide AI mentorship in a way that appropriately combines these disparate domains into a coherent voice
         - This training will occur on the basis of the world-class domain expertise of the core freemocap development team, as well as from extensive data collected in the context of using ealier forms of these LLM tools to teach the core concepts to undergraduates in university settings.

---

The FreeMoCap support system will utilize authentification to provide personalized AI mentorship by tracking user identity across platforms. This feature will ensure that each user receives curated guidance from first touch to eventual expertise.

The technical design includes a data lake to store raw data from various sources. This includes: 
- User interaction with the core FreeMoCap software
- User-User interactions in our communal spaces such as social media and our 2400-person Discord server.
- User-Bot conversations between user and SkellyBot both in our community server and within the FreeMoCap software. 


A data warehouse will store structured data related to individual users and the FreeMoCap community as a whole. By combining these data sources, we can provide individually curated AI mentorship tailored to each user's past, current, and desired interests and expertise. Aggregated individual user data will also help fine-tune the generic LLM assistant, enhancing its ability to serve this specific task.

Application integration will allow us to run LLM services that offer users curated mentorship within their personal use of the FreeMoCap application and the community Discord server. The AI/ML component will involve fine-tuning an LLM based on the diverse domains of expertise associated with the FreeMoCap software. Since FreeMoCap encompasses many fields that do not commonly overlap, e.g. animation, AI/ML, biomechanics, and perceptuomotor neuroscience, specific fine-tuning will be necessary to provide AI mentorship that effectively combines these disparate domains into a coherent voice.

This training will leverage the world-class domain expertise of the core FreeMoCap development team, and the extensive data collected from using earlier LLM tools to teach core concepts to undergraduates in university settings.

### 3.3 Describe the resources and technical skills you may need to complete the project successfully. Do you have these resources in-house? If not, what will be your plan to acquire the skills needed? (200-350 words) *

Technical skills needed: 

- Managing user data and user profiles in a scalable and secure way. This will allow us to provide users with a consistent experience interacting with the AI Mentor across multiple platforms
- Training and fine-tuning of LLM based on dynamically growing data lake and input from the domain experts that are part of the core development team. 
- Generation and storage of extracted structured data in secure data warehouse, where it will be used to provide individually curated AI mentorship for users across various platforms and extended time periods. This implementation will require careful management and curation of individual data high quality user experience while also allowing users to maintain ownership and control of how their personal use data is used to for the fine-tuning of the community-wide LLM. 
- Hosting and management of LLM services in a secure and scalable way, so that we may utilize the fine-tuned LLM from various platforms. These will include the existing Discord server, an AI assistant on the FreeMoCap website, and an AI mentorship and troubleshooting system within the FreeMoCap application. 

The technical aspects for each of these integrations are diverse and require a breadth of unique expertise and time from FreeMocap's technical team. These technical skills exist in-house, as Endurance Idehen (FreeMoCap CTO) and his team have implemented similar systems in a varity of contexts. The resources provided by this proposal will allow us to contract the skilled labor needed for the actual implementation, as well as the training needed to allow to the core development team to sustainably support these capacities going forward. 


