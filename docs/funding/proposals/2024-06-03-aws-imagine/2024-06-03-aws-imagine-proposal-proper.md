# 2024-06-03 - FMC - AWS Imagine Proposal


[![hackmd-github-sync-badge](https://hackmd.io/Vl1LGFANQCW7JZctVkhXJg/badge)](https://hackmd.io/Vl1LGFANQCW7JZctVkhXJg)

## 2 - [project-info](project-info.md)

### 2.2 What is your project and how does it relate to your organization’s mission? (200-350 words) 

We are developing an AI support system for our FreeMoCap software, which enables high-fidelity, 3D motion capture with minimal resources and maximum accessibility. Accessibility is a core value of the FreeMoCap project: free and open-source software that works with the majority of affordable cameras on most platforms.

Our fundamental approach addresses the potential for getting overwhelmed. Many new users face challenges due to a lack of technical understanding, potential bugs, and unfamiliarity with open-source interfaces. By developing a new framework for onboarding and support, we can ensure our users avoid startup panic and discover the world of FreeMoCap by learning in a safe, effective, and comfortable environment. 

A strong onboarding process is one of the most overlooked vectors of free and open-source software. By integrating a well-trained, finely-tuned AI support system, we can address onboarding issues and provide a sustainable resource for continuous troubleshooting and guidance in the fast-paced climate of software in development. The support system has broad generalizability that could be applied not just to this specific software, but to any software application in any domain.

Our datasets include hundreds of test user situations trained in university classrooms. Beyond this, our online community enjoys thousands of active international users, including over 2000 members in a close-knit, diverse group of dedicated students, engineers, researchers, artists, and many more. 

However due to the complexity of the field, with combinations of things like complex linear algebra, high-density 3D tools, etc., users may not understand the full potential or usage of the rich data collected with the FreeMoCap tool. We believe that by integrating AI solutions, we can achieve our organization's goal of making motion capture software accessible to everyone.


#### 2.2.1 How does generative AI fit into your overall project design? How will it strategically enhance your mission achievement? (100 - 250 words) 

The FreeMoCap Foundation's mission can be summed up as "aggressive accessibility" to science and education. The integration of generative AI is a transformative addition toward this same goal: where FreeMoCap currently lowers the barrier to motion capture *tools* (free open-source software with support for consumer-grade cameras), generative AI lowers the barrier to motion capture *expertise*. Our approach treats the model as a **mentor**, offering individualized support and instruction to all users across the entire FreeMoCap ecosystem.

With the support of the AI mentor, our users will have instantaneous access to all of the following: 
- [1] **onboarding / orientation**, helping users just getting started to better understand all of the processes and features involved in the FreeMoCap workflow; 
- [2] **technical support**, helping established users navigate bugs or nuances of the interface; 
- [3] and **further education**, when a user is experienced and prepared to learn more about more advanced techniques for specific applications, or tutoring on more advanced concepts in the realm motion capture.

The mentor will incorporate knowledge of individual users' skill levels and goals to create "curricular bridges" between their current capabilities and their goals, adapting on the fly as the user continues to interact with the app and in the community. In this way, the mentor will excel at providing deeply individualized support to every user, from the curious hobbyist home animator, to the highschooler with 0 experience, to the 20-year veteran of biomechanics research that now wants to learn about computer vision. 

#### 2.2.2 How is your organization using data to make decisions today? (100 - 250 words) 	

- Three iterations of using LLM-powered chatbots to teach 5 different University courses (e.g. https://github.com/freemocap/skellybot)
    - On each iteration, data and experience in using the LLM bots was used to drive the development of the subsequent iteration

- Direct interaction with users in the community Discord has driven development of the core software. In addition to identifying bugs and quality of life issues, we use indications of confusion in new users to guide our documentation development and presentation of concepts within the UX/UI
___
### 2.3 What are the intended outcomes of your project? What new capabilities would it unlock for your organization? (200-350 words) 

pnm combining with 2.4
- Create an AI-mentor that is fine tuned based on the broad domain expertise encompassed by the `freemocap` project 
    - Host this LLM on an AWS platform
    - Use it for onboarding, support, and education for the freemocap community as a whole as well as for individual users 
- Engage authentication so we can curate AI mentorship and guidance for each user individually, according to their backghround, experience level, and interest
- Provide mechanism to onboard low-to-zero XP individuals from a diverse backgrounds and fascilitate their self directed exploration and education as they engage in voluntary self-directed exploration of the wide breadth of the technical, scientific, and artistic landscape comprising the basis of the freemocap software~~

---

Universal design is a core tenet of the FreeMoCap Project, i.e. the idealized goal of creating a tool that is usable by every person regardless of their background, training, or expertise. The aspirational goal is to create a system that is simultaneously the best and most performant tool for world-class domain experts in fields that traditionally have used motion capture (e.g. clinical biomechanics, perceptuomotor neuroscience, 3d animation and video game design, etc.) while remaining accessible to high school students with no technical training and outside assistance. 

The AI mentor will be hosted on an AWS platform and designed to assist with onboarding, support, and education for both the FreeMoCap community as a whole and individual users. This mentorship will be curated and personalized through user authentication, ensuring guidance is tailored to each user's background, experience level, and interests. By facilitating the onboarding of individuals with little to no experience from diverse backgrounds, we aim to promote self-directed exploration and education within the technical, scientific, and artistic domains of the FreeMoCap software.

Through these efforts, we expect to unlock new capabilities for our organization, such as the ability to scale personalized support and education without being limited by human resources. The AI mentor will enable us to provide high-quality, individualized mentorship at scale, thereby enhancing user engagement, accelerating learning curves, and fostering a more inclusive community. Additionally, the continuous fine-tuning of the AI based on real user interactions will exponentially increase its educational impact over time, keeping pace with advancements in AI and LLM technologies.

### 2.4 What is driving the need for this specific project? Why now? (200-350 words) 

~~The FreeMoCap Project is structured around the concept of Universal Design, i.e. the idealized goal of creating a tool that is usable by every person regardless of their background, training, and expertise. The aspirational goal is to create a system that is simultaneously the best and most performant tool for world-class domain experts in fields that traditionally have used motion capture (i.e. clinical biomechanics, perceptuomotor neuroscience, 3d animation and video game design, etc) while still remaining accessible to high school students with no technical training and no outside assistance.~~
~~In these early years of the FreeMoCap Project, we have made great strides towards this goal. We have a vibrant growing community of active users and open source contributors representing over 110 countries, with background ranging from high school students in Ohio to the director of a spinal biomechanics institute in Denmark.~~
~~However, although we will continue to improve the usability of our basic system in line with our core mission, the fact is that the core technology and assocaited domains of the freemocap software are deeply nuanced and technical. At the moment, we work to bridge these gaps using traditional methods such as video tutorial, static site documentation, and direct human assistance in a community Discord server. However, all of these methods are limited in their own ways and may have problems scaling up as the project grows.~~
~~The arrival of viable generative AI assistants provides an unprescedented opportunity to provide curated individualized AI-mentor ship for individual users from their first contact with the project, through the course of their onboarding and early technical development, and into their journey to develop expertise in the whatever technical and scientific domains they find most interesting.~~
~~We have already built and deployed LLM based teaching tools (i.e. SkellyBot) that have been used in 5+ university classes. Our experience using AI in those settings establishes the potential power of creating a system for providing LLM/RAG mediated, individually tuned AI-mentorship for individuals learning to navigate an unfamiliar and complex domain of inquiry.~~
~~

The driving need for this project stems from the inherent complexity and technicality of the FreeMoCap software and the associated domains it covers. While we have made significant strides in making the software accessible, the traditional methods we currently use—such as video tutorials, static site documentation, and direct human assistance via a community Discord server—have their limitations. As the project grows, these methods may not be scalable or sufficient to meet the diverse needs of our expanding user base.

The emergence of viable generative AI assistants presents a unique opportunity to address these challenges. Now, more than ever, there is a pressing need to provide curated, individualized AI mentorship to bridge the gaps in understanding and usage of the FreeMoCap software. This is particularly critical as we aim to serve both highly specialized domain experts and beginners with no prior technical training. The AI mentor will enable us to provide continuous, scalable support and education, tailored to each user's specific needs and learning path.

The current advancements in AI and LLM technologies make this the opportune moment to implement such a solution. Our prior success with LLM-based teaching tools like SkellyBot, used in multiple university classes, underscores the potential effectiveness of this approach. Implementing an AI mentor will help us overcome the bottleneck of limited expert availability, maximizing the educational impact of our domain experts while providing mentees with flexible, self-directed learning opportunities. As AI and LLM tools continue to advance, our AI mentor will evolve, continuously enhancing its ability to support and educate our diverse user community.

## 3 - [technical-design](technical-design.md)

### 3.1 Describe your project’s technical design at a high level. What does it do and how? (200-350 words) 
- Authentification 
    - Tracking user identity across platforms to provide individually curated AI mentorship from 'first touch to expertise'
- Data lake
    - Storing raw data from:
        - User interaction with the core software (`freemocap`)
        - User-User interactions in our communal spaces 
            - On Social media 
            - On our 2400 person Discord server 
        - User-Bot interactions 
            - Conversations between user and SkellyBot
                -  in community server 
                -  within the `freemocap` software
- Data Warehouse
    - Storing structured data related to individual users as well as the `freemocap` community as a whole
    - Combine these data sources to provide individually curated AI mentor ship for each user, guided by the User's past and current and desired intersts and expertise
    - Aglomerate individual user data to provide fine-tuning for the generic LLM assistant for this task 
- Application integration
    - Run LLM services to provide Users with curated mentorship within their personal use of the `freemocap` application, as well as for the FreeMoCap community discord server 
- AI/ML for reasearch 
    - Fine tune an LLM based on the broadly distributed domains of expertise assocaited with the `freemocap` software
    - `freemocap` touches many domains which do not commonly overlap (e.g. animation, AI/ML, biomechanics, perceptuomotor neuroscience, etc), so specific fine tuning will be necessary to provide AI mentorship in a way that appropriately combines these disparate domains into a coherent voice
        - This training will occur on the basis of the world-class domain expertise of the core freemocap development team, as well as from extensive data collected in the context of using ealier forms of these LLM tools to teach the core concepts to undergraduates in university settings.

### 3.3 Describe the resources and technical skills you may need to complete the project successfully. Do you have these resources in-house? If not, what will be your plan to acquire the skills needed? (200-350 words) *

Technical skills needed: 
- Managing user data an user profiles in a scalable and secure way
- Training and fine-tuning of LLM based on dynamically growing datalake
- Generation and storage of extract, structured data in secure data warehouse, where it will be used to provide individually curated AI mentorship for users across various platforms and extended time periods
- Hosting and management of LLM services in a secure and scalabale way, so that we may utilize the fine-tuned LLM from various platforms (Discord server, an AI assitant on the freemocap website, AI mentorship/troubleshooting with in the `freemocap` software)

The technical skills needed for these tasks exist in-house, as Endurance Idehen (FreeMoCap CTO) and his team have implemented similar systems in various forms. The resources provided by this proposal will allow us to contract the skilled labor needed for the actual implementation

---
notes


What is the [NEED?] of this tool:

First touch to Expertise
- onboarding - 
- support - 
- education - andragogy / heutagogy

Allows each user to progress as far along the complexity curve as they want. 


- [accessibility] is a huge focus - AI really enables this
  - Universal Design
  - Aggressively Accessible
  - Autogogical - Tool Teaches the Tool

THEMES
- accessibility 
  - onboarding, support
- education
- growth and scaling