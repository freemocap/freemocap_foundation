---
og from  - https://docs.google.com/document/d/1XgyAbVcIVfFbkkZgCtBLMT25QkjJ5JWoTLaRjz3GVKo/edit
---

## 1. Scientific Approach

Falls are a leading cause of injury among older adults, significantly impacting their health, independence, and quality of life<sup><a href="https://www.zotero.org/google-docs/?3dgvN7">1</a></sup>, with those suffering from Alheimer’s disease and related disorders (ADRD) at even higher risk<sup><a href="https://www.zotero.org/google-docs/?XdT4hT">2</a></sup>. Precise biomechanical data could significantly enhance clinicians' ability to predict and manage these risks. However, the technology that is capable of providing such data, including traditional motion capture systems, remains largely confined to laboratory settings. This confinement limits their routine use for continuous monitoring and restricts the collection of real-world data crucial for evaluating everyday intervention effectiveness. Consequently, there is a pressing need for a solution that offers laboratory-level biomechanical analysis in an accessible, in-home format. Such a system would allow for consistent monitoring and proactive interventions without disrupting the daily lives of elderly individuals.


This proposal aims to validate the effectiveness of a markerless motion capture system - FreeMoCap - for conducting in-home clinical assessments of elderly balance and  demonstrate its utility beyond the confines of specialized research settings. The Free Motion Capture Project (FreeMoCap) is a free, open-source platform that leverages cutting-edge computer vision and machine learning technologies to transform video data from low-cost, commercially available cameras into research-grade 3D motion capture data<sup><a href="https://www.zotero.org/google-docs/?JFDmJQ">3</a></sup>.

 Current pilot studies have shown that this system can provide detailed analysis of postural sway using full-body center of mass (COM), offering insights into subtle differences in movement comparable to those detected by high-end systems like Qualisys. We aim to equip clinicians with these same capabilities. This technology could significantly improve clinicians' ability to detect early signs of mobility decline, tailor interventions more effectively, and monitor the long-term outcomes of their treatments. By integrating this advanced motion analysis into routine clinical practice, FreeMoCap seeks to bridge the gap between research-grade data and everyday healthcare applications, ultimately supporting elderly patients in maintaining greater independence and quality of life. 

**Figure 1: Comparative Analysis of Center of Mass (COM) Metrics in the NIH Standing Balance Test from a Single Representative Pilot Subject.** **A)** Normalized path lengths of the COM for each test condition, depicted for both our markerless motion capture system (left) and the Qualisys marker-based system (right) for benchmarking. **B)** Split violin plots illustrating the distribution of COM velocities in the X-axis direction, again comparing our system with Qualisys



2. AI/Technology Approach:

FreeMoCap harnesses advanced machine learning and computer vision techniques, utilizing convolutional neural networks (CNNs) to compute 2D skeletal keypoints from video data. Its flexible design allows for the integration of various pose estimation algorithms to meet specific clinical or research needs. The system employs precise camera calibration using Charuco boards, ensuring accurate alignment and scaling of 3D models from multiple camera inputs. This precision transforms video data into actionable 3D kinematic information. By enabling markerless motion capture, the technology eliminates the need for cumbersome physical markers and suits, significantly enhancing usability and comfort. This is particularly advantageous for elderly populations, providing a non-intrusive and straightforward method to assess movement in both clinical and home settings. \




3. Relevance To Healthy Aging And/Or AD/ADRD

FreeMoCap is ideally suited for in-home monitoring of the elderly, thanks to its minimal space and technology requirements. It can support in-home continuous monitoring, which can in turn support aging in place and functional independence<sup><a href="https://www.zotero.org/google-docs/?CKwkCR">4</a></sup>. This approach also reduces the need for frequent and often stressful visits to healthcare facilities, which is particularly beneficial for those with mobility or cognitive impairments<sup><a href="https://www.zotero.org/google-docs/?32wUvS">5</a></sup>. Moreover, collecting data within a patient's natural environment allows for more accurate insights into their well-being. Studies in controlled environments can influence subjects and alter behaviors such as gait, which may not accurately reflect their day-to-day functionality<sup><a href="https://www.zotero.org/google-docs/?D1tmsx">6</a></sup>. Assessments conducted in real-world settings, however, can provide clearer indications of how interventions impact patients in their daily lives<sup><a href="https://www.zotero.org/google-docs/?XGTvsX">7</a></sup>. Lastly, the capability of FreeMoCap for long-term monitoring in familiar environments enables the detection of subtle yet significant changes in mobility that might be overlooked during routine clinical visits. Such early detection is crucial for implementing preemptive interventions that can prevent falls and other incidents, significantly improving the safety and quality of life for elderly patients.



4. Aims and Expected Outcomes

In this proposal, we first aim to fully validate FreeMoCap against a gold standard marker-based motion capture system to demonstrate its accuracy in a controlled environment. We then aim to test its application outside of the lab, demonstrating its practicality and reliably in everyday use. These steps are critical to proving that FreeMoCap can be a dependable tool for clinicians, enhancing their ability to monitor and intervene in the mobility challenges faced by elderly patients. Ultimately, our work aims to bridge the gap between high-tech research tools and practical, everyday healthcare solutions, facilitating better elderly care and supporting greater independence for aging individuals. Our objectives over this one year period include:



* **Aim 1: **Validate the accuracy of FreeMoCap on a clinical balance task. Healthy subjects will be recorded performing the NIH Standing Balance Test (SBT) using both the software and Qualisys, a traditional, marker-based motion capture. We will compare postural sway through center of mass path length and root mean squared error of joint positions between the two systems. We will also evaluate the software’s sensitivity to subtle balance changes across different standing conditions of the test.  
* **Aim 2: **Establish a protocol for recording full body kinematics using FreeMoCap in a non-laboratory environment. Healthy volunteers will execute a range of tasks—such as standing with eyes open/closed, performing one-leg stances, and other movements typical of clinical assessments and daily activities. We aim to test the software’s real-world applicability, assessing its feasibility for both clinical and at-home use. 

**Expected Outcomes:**



* Establish FreeMoCap's accuracy metrics relative to Qualisys and confirm its ability to detect clinically meaningful balance changes.
* Develop a standardized protocol for motion capture in non-laboratory settings and demonstrate that FreeMoCap can effectively collect and analyze data across diverse environments, thereby enhancing its usability for broader clinical and domestic applications.
5. Plans or Potential For Translation Or Commercialization Of Project Deliverables

User-centered design is foundational to FreeMoCap's ongoing development, emphasizing accessibility and ease of use for all users. By reducing technical barriers and demystifying the process of working with 3D data, we aim to make advanced motion capture technology practical and applicable across diverse disciplines. Consequently, our approach has attracted users from over 108 countries in fields ranging from scientific research to the arts. We maintain a public Discord server with approximatelyapproximatealy 2000 members to facilitate troubleshooting and rapid feedback with users. By maintaining a focus on user-centered design in clinical contexts, we believe FreeMoCap could provide interpretable and actionable information to clinicians and caregivers, enhancing decision-making and patient care. A collaboration with the MassAITC would be instrumental in refining these applications, focusing on reducing the burden of use and enhancing usability for both patients and clinicians. Such a partnership would enable us to integrate FreeMoCap more effectively into clinical workflows and at-home care, ensuring that it meets the practical needs of the healthcare sector.



* need mention:
    *  community involvement (ajz, Vandlo, etc)
    * tie ins to animation game dev (both in terms of educational bridges, as well as openning door for gamification workflows, involving AI)
    * SkellyBot as predicate for future AI/LLM integration
* Commercialization 
    * Principles
        * Knowledge is Free, Labor is unbelievably expensive 
            * all educational content is free forever, anything involving human labor costs (relative to the XP and skillset of the laborer)
        * No artificial scarcity
            * anything that can be duplicated infinitely is free, otherwise costs
        * Flexible pricing 
            * transparency re: base costs and margins
            * let people pick a price (humble bundle model - peeps tend to pick slightly higher than rec if they like the cause) 
                * asking below breakeven requires application, costs handled by ‘community grant fund’ (a category folks can pay into)
    * SkellyCloud services (offsite data storage and backup, serverside processing)
    * building/selling hardware (cameras, equipment bundles, start via dropshipping cams of different quality, later build our own bespoke for different customer segments, i.e. minimal cost, edu focused, high end clinical/animation, in-home easy setup)
    * Technical certification w/ franchise-ish model (work with PT’s, universities, etc, train people in freemocap (i.e. ai, ml, cv, etc, as well as clinical/biomech/neuro, as well as 3d data viz/mocap art) 
        * peeps can take their skills and run, or be part of a skellynetwork that will help them find clients, in exchange for a % fee
    * Service model (we do it ourselves, and we train others to via tech cert above):
        * building bespoke pipelines
        * consultation/planning

one-shot help vs continuous service contract





6. Bibliography

    1.	Wang, W. & Adamczyk, P. G. Analyzing Gait in the Real World Using Wearable Movement Sensors and Frequently Repeated Movement Paths. _Sensors_ **19**, 1925 (2019).


    2.	Queen, P., Cherian, A., Trent, W., Endurance, I. & Matthis, J. S. FreeMoCap: A free, open source markerless motion capture system. https://doi.org/10.5281/zenodo.7233714 (2024).


    3.	Moreland, B., Kakara, R. & Henry, A. Trends in Nonfatal Falls and Fall-Related Injuries Among Adults Aged ≥65 Years — United States, 2012–2018. _MMWR Morb Mortal Wkly Rep_ **69**, 875–881 (2020).


    4.	Minta, K., Colombo, G., Taylor, W. R. & Schinazi, V. R. Differences in fall-related characteristics across cognitive disorders. _Front Aging Neurosci_ **15**, 1171306 (2023).
