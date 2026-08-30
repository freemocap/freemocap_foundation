#import "../../template/nsf.typ": budget, note, flag, suggestion, new, broader-impacts
#import "../../template/refs.typ": c

// PART 1 — Need and framing.  Page budget: ~1.0
//
// Serves Track 1 criterion (a): a societal or national need not currently
// being adequately addressed.
//
// This is where the accessibility argument goes, and it is your strongest
// single asset: a lab that cannot afford a six-figure marker-based system can
// run FreeMoCap on consumer cameras. State it in one or two sentences — do not
// write a literature review of motion capture. Criterion (a) asks whether the
// need is real and unmet, not whether you know the field.
//
// Land the spine claim explicitly and early. Reviewers should know by the end
// of page one that this is a proposal about building an organization, not
// about writing software.




= Vision and Need
//I feel like we could find a stronger hook to start with at the first sentence...

// ── A2 CANDIDATE HOOKS (pick one / edit freely; delete rejects + this banner after audit) ──
// Each candidate REPLACES ONLY the first sentence of the paragraph below
// ("Although the methods behind camera based motion capture are well
// documented, researchers must often rebuild ... when existing tools do not
// fit their needs."); the rest of the paragraph continues from "Commercial
// marker-based motion capture systems offer ...".
#new[
Quantitative measurement of body movement underpins numerous fields of scientific inquiry, including musculoskeletal biomechanics, perceptuomotor neuroscience, and humanoid robotics, as well as areas of technical artistic expression such as 3d animation and video game design. ]



Commercial marker-based motion capture systems offer sophisticated general-purpose measurement, but remain costly and closed to modification. Newer markerless systems, driven by advances in AI/ML based computer vision, have lowered those barriers but are often built around the needs and assumptions of particular fields. Researchers working outside those assumptions (for instance, anyone measuring a non-human animal) are left to learn and often end up re-implementing components common to multi-camera markerless motion capture systems, such as video recording and synchronization, camera calibration, AI-based 2D pose estimation, 3D reconstruction, and post-processing.


#new[
These components include video recording and synchronization, camera calibration, AI-based 2D pose estimation, 3D reconstruction, and post-processing. ]

#suggestion[
Rebuilding this infrastructure across projects duplicates technical effort and reduces the public return on research software that is difficult to maintain, reproduce, or transfer. ]
// ── end A4 ──

#flag(kind:"verbose")[*There is therefore a need for accessible, shared research infrastructure that allows specialized motion capture adaptations developed by one community to be contributed back and reused by others.*]


FreeMoCap #c("queenFreeMoCapFreeOpen2024") provides an existing technical foundation for this model. Maintained by the FreeMoCap Foundation, FreeMoCap is free and open-source software that transforms synchronized video from consumer-grade cameras into research-grade 3D motion-capture data through a modular workflow (@fig-overview). This proposal requests Track 1 support to scope the organizational and infrastructure requirements needed to *transition FreeMoCap from an open-source project maintained by a small core team into a secure, sustainable, community-driven ecosystem.* //NOTE - clarity - we use the word "freemocap" too many times in this short paragraph. Can probably make this punchier


// ── A6 SITUATION PARAGRAPH — the §1 anchor. If accepted, it REPLACES the final sentence of the paragraph above ("This proposal requests Track 1 support to scope..."), which says the same thing without the evidence. V2 guardrail respected: V2 appears as evidence/motivation only. Citations used: eghbal2020 — already in the bib and cited in Part 4, no new entry needed. ──
#suggestion(note: [A6 — the anchor paragraph; standing condition (stadium + self-selected knowledge) then the V2 decision window, then the five scoping areas. Mark up freely.])[
FreeMoCap's community has grown far faster than its maintainer base. Eghbal #c("eghbal2020") describes this structure — high user growth, low contributor growth, and maintenance knowledge concentrated in a small core team — as the "stadium," and documents it as the common structure of mid-scale open source projects rather than a project-specific failure. The stadium shape carries two costs for FreeMoCap: our picture of the community is incomplete, because we see primarily the users who come to us; and the knowledge required to use, teach, and extend the system remains concentrated in the core team, so potential contributors cannot participate without direct access to us. The software's recent full rebuild (V2, currently in alpha) — separating the project into domain-specific repositories with a shared internal structure, moving to a client/server architecture, and shipping as a one-click professional desktop application — has lowered the technical cost of contribution and opened a decision point: the organizational structures built around the software now will determine whether user growth converts into a sustainable, community-driven ecosystem. The scoping activities supported by this proposal therefore target five areas: the community landscape and its needs; documentation and upskilling pathways that convert user interest into contributor capacity; governance practices that create transparency and productive communication between core maintainers and the wider community; a validation and benchmarking methodology that other laboratories can replicate; and a sustainability model for the maintenance the software will require. ]
// ── end A6 ──

#include "../floats/fig-overview.typ"

