# Ethics Statement Draft

[![hackmd-github-sync-badge](https://hackmd.io/zg1uy7FWQNCn_Rb75JA1-Q/badge)](https://hackmd.io/zg1uy7FWQNCn_Rb75JA1-Q)


## Introduction:

1. The Freemocap Foundation is a 501(c)(3) organization that manages the open source software Freemocap, short for Free Motion Capture, which is a markerless motion capture system.
2. Freemocap lets users create 3d movement recordings of human, animals, and objects.
3. It packages existing open source tools and technologies in order to reduce the gap in markerless motion capture between what is technologically possible and what is accessible to non-experts.
4. It is a core value of freemocap to make our tool accessible to disadvantaged populations so that they can understand new technologies before those technologies are used against them.
5. Freemocap believes that **education prevents harm**: by making our software easy to understand, we empower users to control the technology rather than be controlled by it.
6. By understanding how a technology works, people are able to protect themselves from nefarious uses of that technology.

## Ethical concerns

In considering the potential ethical repurcussions of this tool, we have identified two types of potential ethical issues: 

1. The first are ethical concerns related to the software itself, including: 
    - Data privacy and ownership
    - Algorithmic bias
    - Free and open source software principles
2. The second are concerns related to how data created by freemocap is used, including:
    - Surveillance
    - Stalking or harrassing others
    - Identifying "Biomarkers"
    - As evidence in a court of law

Both types of ethical concerns will be address in more detail in the sections below. 


## Ethical concerns related to the freemocap software:

### Data privacy and ownership

1. Users own the data they generate - they may use their data for any purpose including commercial ones.
2. Freemocap doesn't own freemocap data, unless it has been donated with explicit consent.
3. Users own the data they generate, but not necessarily the products of that data. For example, a person may own the recording from a Freemocap session, but allow someone else to make an animation based on it - they do not automatically own the animation.
4. Explicit consent is required from subjects. Consent should not be coerced.


### Algorithmic bias

1. The Freemocap Foundation acknowledges that bias exists within the machine learning algorithms Freemocap uses, particularly in the 2d pose estimation step. 
    - We acknowledge this bias, and aim to help users understand the limitations of Freemocap in terms of representation and effectiveness across different groups.
    - We hope to do something about this bias, with the goal of equal performance across skin types, body types, and cultural appearances. This can be achieved  either through usage of existing open source tools that have done the work, or through potential work from Freemocap with either additional training on existing models or our own model creation.
2. Freemocap currently uses Google's Mediapipe as its default 2 pose estimation algorithm. Google publishes bias evaluations for Mediapipe algorithms in it's model cards. The Mediapipe model cards contain geographical, skin tone, and gender evaluations. Mediapipe Holistic, which freemocap uses, makes use of the pose, hand, and face models, all of which have separate evaluations:
    - [Mediapipe Pose Model Card](https://drive.google.com/file/d/10WlcTvrQnR_R2TdTmKw0nkyRLqrwNkWU/preview)
    - [Mediapipe Hands Model Card](https://drive.google.com/file/d/1-rmIgTfuCbBPW_IFHkh3f0-U_lnGrWpg/preview)
    - [Mediapipe Face Mesh Model Card](https://drive.google.com/file/d/1jpQt8TB1nMFQ49VSSBKdNEdQOygNRvCP/preview)


### Free and open source principles

1. Commit to keeping software free and open source. Software should be functional with minimal up front hardware cost and with no personal info required.
2. By "free," we are referencing the [four essential freedoms](https://www.gnu.org/philosophy/free-sw.en.html#four-freedoms):

- The freedom to run the program as you wish, for any purpose (freedom 0).
- The freedom to study how the program works, and change it so it does your computing as you wish (freedom 1). Access to the source code is a precondition for this.
- The freedom to redistribute copies so you can help others (freedom 2).
- The freedom to distribute copies of your modified versions to others (freedom 3). By doing this you can give the whole community a chance to benefit from your changes. Access to the source code is a precondition for this.

3. We break from the four essential freedoms only for freedom 0, as we restrict the use of the Freemocap software in certain cases where we believe harm is done. Those cases are [outlined below](#ethical-concerns-related-to-use-of-freemocap-data).

4. We are in the process of creating governance documentation to describe how development for the Freemocap project will proceed. The current contributing document can [be found here](https://github.com/freemocap/freemocap/blob/main/CONTRIBUTING.md).

### Open questions
1. Who is the user? Recorder, subject, or both? 
2. Who owns the data?
    1. In photography, the photographer owns the photograph. While clearance from the subject is necessary for commercial use, photographers immediately own copyright to images they take [source](https://www.format.com/magazine/resources/photography/photography-copyright-law-guide). It is not necessarily the case that the laws for photography should carry over to 3d motion capture.
    2. One prominent example of copyright and reuse discussion around human movement happened around Fortnite dance moves. Epic Games used famous dance moves in Fortnite without attribution, and allowed players to purchase those dance moves through microtransactions. This led to multiple copyright lawsuits, and serious controversy for Epic Games. While the actual copyright status of the dances depends on whether they are individual dance moves or full choreography, it sets a precedent for individuals owning their movements, and an ethical guideline [source](https://www.cla.co.uk/blog/higher-education/fortnite-dance-controversy).
    3. The Freemocap Foundation reserves the right to disagree with either of these precedents, or copyright law (American or otherwise). They are mentioned as references to consider.
3. Should an agreement of consent be part of the core software? For example, should the "record" screen say sometihng along the lines of: "By clicking record, you agree that all subjects explicitly consent to being recorded and having those recordings run through the Freemocap software."
4. What steps can Freemocap take towards addressing bias within algorithms? Performance wise, we currently depend on other open source algorithms. Is it enough to be clear about potential limitations of those algorithms? Is an algorithmic bias algorithm appropriate?


## Ethical concerns related to use of freemocap data:

1. The Freemocap Foundation thinks the potential benefits of creating a free, open source markerless motion capture system outweigh the potential downsides.
2. The Freemocap Foundation has come up with the following rules for using the Freemocap software:
    1. Freemocap is not to be used as a means of surveillance
    2. Freemocap is not to be used to stalk or harrass someone
    3. We do no believe data from this software can be used to identify "biomarkers," and should not be used as evidence in courts of law
3. In general, freemocap should be used to promote freedom and knowledge, not to exert control or produce harm.

### Open questions:

1. We are curious about how to best enforce these rules. 
    1. One option is through the license agreement, with a statement like "By using this software, you agree to...". This has potential to be legally binding, but is also hard to enforce.
    2. Another option is through a code of conduct or community guidelines document. This is even harder to enforce, but more likely to be read. 

## Commitments:

1. Freemocap is still in its starting phases, as we're currently working on transitioning into the Alpha phase of the project. Regardless, we want to be clear about the direction we're heading. 
2. The Freemocap Foundation commits to work towards the following goals:
    1. Ensure the Freemocap software is decentralized and community driven
    2. Create a governance structure for the Freemocap software and the Freemocap Foundation
    3. Align with the work of ethical experts, like the Algorithmic Justice League and Free Software Foundation. We acknowledge that we aren't experts, and commit to listening to the feedback of experts.
    4. Publish regular check ins about ethical issues. We will be transparent about issues that arise and try to address them as best as we can. 