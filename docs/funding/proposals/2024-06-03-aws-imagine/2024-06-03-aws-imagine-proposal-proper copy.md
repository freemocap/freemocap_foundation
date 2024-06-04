# 2024-06-03 - FMC - AWS Imagine Proposal


[![hackmd-github-sync-badge](https://hackmd.io/Vl1LGFANQCW7JZctVkhXJg/badge)](https://hackmd.io/Vl1LGFANQCW7JZctVkhXJg)

## 2 - [project-info](project-info.md)

### 2.2 What is your project and how does it relate to your organization’s mission? (200-350 words) 

We are developing an LLM-powered AI mentorship companion system for the FreeMoCap software - a free open source markerless motion capture system. The FreeMoCap Foundation is dedicated to the ensuring universal accessibility to emerging technology through the development of user friendly tools based on highly technical core principles. We specifically leverage the breadth of potential use cases for motion capture technology -  ranging from artistic use in 3d animation and video games to high level biomedical research and human movement neuroscience - to develop 'covert' educational opportunities for our users. We have many instances of high school aged users showing up with a desire to record a short motion capture clip for an animated short film and walking away with a working understanding of clinical biomechanics and principles of 3D motion capture.

We believe that by integrating a curated AI mentor/assistant to our core technology will massively accelerate these kinds of cross-disciplinary educational opportunities and super-charge our users ability to confidently dive deeply into the inner workings of the FreeMoCap software and its consituent and associated domains. 

A strong onboarding process is one of the most difficult and often overlooked aspects of accessibility, particularly in the case of technical scientific software (albeit one with broad public appeal). By integrating a well-trained, finely-tuned AI support system, we can address onboarding issues and provide a sustainable resource for continuous troubleshooting and guidance in the fast-paced climate of software in development. The support system has broad generalizability that could be applied not just to this specific software, but to any technical application in any domain.

Our datasets include thousands of student-AI interactions collected from LLM-empowered educational tools we developed for use in university classrooms. Beyond this, our online community enjoys thousands of international users from over 100 countries, including 2000+ member Discord server representing a close-knit, diverse group of dedicated students, engineers, researchers, artists, and many more. 



#### 2.2.1 How does generative AI fit into your overall project design? How will it strategically enhance your mission achievement? (100 - 250 words) 

The FreeMoCap Foundation's mission can be summed up as "aggressive accessibility" to science and education. The integration of generative AI is a transformative addition toward this same goal: where FreeMoCap currently lowers the barrier to motion capture *tools* (free open-source software with support for consumer-grade cameras), generative AI lowers the barrier to motion capture *expertise*. Our approach treats the model as a **mentor**, offering individualized support and instruction to all users across the entire FreeMoCap ecosystem.

With the support of the generative AI mentor, our users will have constant, instantaneous access to all of the following: 
- [1] **onboarding / orientation**, helping users just getting started to understand processes involved in the FreeMoCap workflow along with their technical underpinnings. 
- [2] **technical support**, helping established users navigate bugs or nuances of the interface, drawing on frequently asked questions; 
- [3] and **further education**, when an experienced user wants to learn more advanced techniques for specific applications, or wants tutoring on advanced concepts in, around, and (critically) beyond the realm of motion capture.

The mentor's own knowledge (as an LLM) will be supplemented with knowledge of individual users' skill levels and goals to create "curricular bridges", adapting on the fly as the user continues to interact with the app and in the community. In this way, the mentor will excel at providing deeply individualized support to every user, from the curious hobbyist home animator, to the highschooler with no experience, to the 20-year veteran of biomechanics research that now wants to learn about computer vision. 

#### 2.2.2 How is your organization using data to make decisions today? (100 - 250 words) 	

FreeMoCap is a data-rich endeavor at its core. The fundamental purpose of the tool is to transform camera data into 3d point data, a complex, multi-step process that saves and logs each intermediate stage. We also have a great deal of peripheral data from users on the the FreeMoCap community Discord server, seeking tech support advice, sharing outcomes, and otherwise participating in the online community. 

- We have over 16,000 reports sent to a secure server from the software on shutdown, showing location and volume of our users across the world-- over 3800 unique users in over 100 countries. Further interrogating these reports reveals deeper reveal insights of issues users have encountered. (Note -  we receive user consent via a highly visible 'Opt Out' toggle on the welcome screen)
- We have 2400 users in the FreeMoCap Discord server. The contents of the server's messages are routinely examined to extract bug reports for fixes, pain points to revise documentation, and new tools or solutions to consider in development. 

### 2.3 What are the intended outcomes of your project? What new capabilities would it unlock for your organization? (200-350 words) 


Universal design is a core tenet of the FreeMoCap Project, i.e. the idealized goal of creating a tool that is usable by every person regardless of their background, training, or expertise. The aspirational goal is to create a system that is simultaneously the best and most performant tool for world-class domain experts in fields that traditionally have used motion capture (e.g. clinical biomechanics, perceptuomotor neuroscience, 3d animation and video game design, etc.) while remaining accessible to high-school-level students with no technical training and outside assistance. 

We are developing an  LLM-powered AI-mentorship system that will promote self-directed exploration and education within the technical, scientific, and artistic domains of the FreeMoCap software and super-charge our dedication to the principle of Universal Design. We will use carefully managed and secure user authentication to tailor each user's interaction with the AI mentor to each their individual background, experience level, and interests from initial onboarding, through early competency building, and throughout the lifelong development of true expertise. Through careful management of data generated from individual users within the larger body of data frmo the freemocap community as a whole, thes AI tools will massively accelerate the implicit educational impact of this highly technical but broadly appealing scientific software. 


Through these efforts, we expect to unlock new capabilities for our organization, such as the ability to scale personalized support and education without being limited by the capacity of direct human-to-human interactions. The AI mentor will enable us to provide high-quality, individualized mentorship at scale, thereby enhancing user engagement, accelerating learning curves, and fostering a more inclusive community. Additionally, the continuous fine-tuning of the AI based on real user interactions will exponentially increase its educational impact over time, keeping pace with advancements in AI and LLM technologies.

### 2.4 What is driving the need for this specific project? Why now? (200-350 words) 

We are building FreeMoCap as a platform which both provides high technical capacity with minimal cost and upfront effort as well as a long-term entry point to any of the disparate domains it touches, but there  are inherent limitations to traditional teaching methods like video tutorials and static site documentation. We all know the best form of instruction is direct human-to-human interaction, but that approach will always be limited by the finitude of available human effort.

The emergence of viable generative AI assistants presents a unique opportunity to address these challenges. The ability to provide curated and individualized AI mentorship to bridge the gaps in understanding unlocks an unprecedented opportunity for large scale technical education. This is particularly critical as we aim to serve both highly specialized domain experts and beginners with no prior technical training - an AI mentor will be able to provide instruction at a level that is appropriate for each user tuned specifically to their interests and background, all while gently encouraging exploration into their nearby zones of proximal development.

We already have direct experience developing and deploying AI-augmented chatbots in teaching environments - we have built and used three iterations of an LLM powered tool (https://github.com/freemocap/skellybot) in 6 university courses at three institutions to teach students topics like Human Movement Neuroscience, Cognitive Science Capstone, and Introduction to Perception and Action. These initial experiments were extremely successful at allowing students to navigate their own paths through broadly diverse topics in away that would be impossible using traditional teaching methods. These experiences underscore the potential effectiveness of this approach to education, and hint at incredible potential if integrated into a standalone, widely distributed software like the FreeMoCap system. 

Generalizing beyond the specific use case of the FreeMoCap software - an AI mentor will help us overcome the bottleneck of limited expert availability, maximizing the educational impact of our domain experts while providing mentees with flexible, self-directed learning opportunities. As AI and LLM tools continue to advance, our AI mentor will evolve, continuously enhancing its ability to support and educate our diverse user community.

## 3 - [technical-design](technical-design.md)

### 3.1 Describe your project’s technical design at a high level. What does it do and how? (200-350 words) 

The FreeMoCap support system will utilize **authentication** to provide personalized AI mentorship by tracking user identity across platforms. This feature will ensure that each user receives curated guidance from first touch to eventual expertise.

The technical design includes a **data lake** to store raw data from various sources (with user consent, privacy, and data ownership carefully and actively managed). Data sources include: 
- User interaction with the core FreeMoCap software
- User-User interactions in our communal spaces such as social media and our 2400-person Discord server.
- NewUser-Bot conversations between user and SkellyBot both in our community server and within the FreeMoCap software. 
- ExpertUser-Bot interactions, whereby experienced users might correct or ammend something the bot says or step in if it struggles to provide a useful answer

A **data warehouse** will store structured data related to individual users and the FreeMoCap community as a whole. By combining these data sources, we can provide individually curated AI mentorship tailored to each user's past, current, and desired interests and expertise. Aggregated individual user data will also help **fine-tune** the generic LLM assistant, enhancing its ability to serve this specific task and specialized scientific and technical domain.

Application integration will allow us to run LLM services that offer users curated mentorship within their personal use of the FreeMoCap application and the community Discord server. The AI/ML component will involve fine-tuning an LLM based on the diverse domains of expertise associated with the FreeMoCap software. Since FreeMoCap encompasses many fields that do not commonly overlap, e.g. animation, AI/ML, biomechanics, and perceptuomotor neuroscience, specific fine-tuning will be necessary to provide AI mentorship that effectively combines these disparate domains into a coherent voice.

This training will leverage the world-class domain expertise of the core FreeMoCap development team, and the extensive data collected from using earlier LLM tools to teach core concepts to undergraduates in university settings.

### 3.3 Describe the resources and technical skills you may need to complete the project successfully. Do you have these resources in-house? If not, what will be your plan to acquire the skills needed? (200-350 words) *

Technical skills needed: 

- Managing user data and user profiles in a scalable and secure way. This will allow us to provide users with a consistent experience interacting with the AI Mentor across multiple platforms
- 
- Training and fine-tuning of LLM based on dynamically growing data lake and input from the domain experts that are part of the core development team. 

- Generation and storage of extracted structured data in secure data warehouse, where it will be used to provide individually curated AI mentorship for users across various platforms and extended time periods. This implementation will require careful management and curation of individual data high quality user experience while also allowing users to maintain ownership and control of how their personal use data is used to for the fine-tuning of the community-wide LLM. 

- Hosting and management of LLM services in a secure and scalable way, so that we may utilize the fine-tuned LLM from various platforms. These will include the existing Discord server, an AI assistant on the FreeMoCap website, and an AI mentorship and troubleshooting system within the FreeMoCap application. 

The technical aspects for each of these integrations are diverse and require a breadth of unique expertise and time from FreeMocap's technical team. These technical skills exist in-house, as Endurance Idehen (FreeMoCap CTO) and his team have implemented similar systems at enterprise scale. The resources provided by this proposal will allow us to contract the skilled labor needed for the actual implementation, as well as the training needed to allow to the core development team to sustainably support these capacities going forward. 

