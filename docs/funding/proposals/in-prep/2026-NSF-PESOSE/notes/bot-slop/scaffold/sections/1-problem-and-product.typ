#import "../helpers/shared.typ": req, budget, src, supply, pitfall
= The Problem and the Open-Source Product <sec-problem>
#budget(1.4, 840)

#req(source: "SOL §V.A")[
All PESOSE proposals must have: (1) a pointer to the existing publicly-available
open-source product being transitioned — URLs may not appear in the Project Description;
use an in-line citation and a References Cited entry; (2) details on the current status of
the development and testing model, methods of dissemination, user base, and contributor
base; (3) a description of the problem being addressed; (4) a strong justification that
makes the case that the team is qualified to conduct this work.
]

#req(source: "SOL §VI.A — Track 1 criterion 1")[
Does the proposal present a convincing case that the OSE will address an issue of
significant societal or national importance that is not currently being adequately
addressed?
]

== The domain problem

#pitfall(source: "W1 @ 00:35:33")[
"You may have a very interesting research product, but how does this translate to the
bigger picture? Why does society care about it? Why does the nation care about it?"
Failing to establish societal/national importance is the #emph[first] pitfall NSF names.
]

#src("W2", "video_summary — Ecosystem Maturity")[
Both tracks require a project already publicly available, with "an artifact around it,"
preferably under an open-source license, "oriented around meeting a societal or national
need," and — critically — the "ability to articulate plans and rationale in detail,
specific to the technology or domain, not just generalities."
]

#src("W2", "video_summary — Broad View of NSF")[
Framing warning directly relevant here: biomedical/clinical framing risks reading as an
NIH submission. NSF wants "the technology itself and how it moves the field forward."
Rehabilitation and clinical applications should be positioned as downstream impact of a
measurement technology, not as the medical solution being funded.
]

#supply[
- The societal/national need, stated so a non-specialist reviewer can see why it matters
- Evidence it is *not currently being adequately addressed* — who is excluded, at what cost
- Domain-specific detail, not general claims about open source
]

== The open-source product and its current status

#src("SOL", "§V.A element 2")[
Required content: development model, testing model, methods of dissemination, user base,
contributor base.
]

#src("W1", "@ 00:13:07")[
NSF's definition, repeated deliberately: an OSE is "more than just the software... more
than just the code repository. It's a managed and deliberately developed community with
governance, security practices, users contribution and contribution pipelines. This is not
just about a technology or a product."
]

#supply[
- In-line citation to the product → References Cited entry. *No URLs in this document.*
- License; distribution channels; repository and review process; release cadence
- Testing model, including any validation against research-grade ground truth (+ citation)
- User base: figures, method of counting, period
- Contributor base: total historical, currently active, bus factor
- Named user segments
]

== The ecosystem gap

#pitfall(source: "DECK, slide 'What PESOSE Is (Not)'")[
Not for "existing well-resourced open-source communities." The adoption evidence above
must not read as evidence of being well-resourced. Adoption is the asset; resourcing is
the gap. Keep the two visibly separate.
]

#src("W2", "video_summary — Ecosystem Maturity and Funding Tracks")[
NSF presented a maturity map. Track 1 sits at the nascent end: "newer ecosystems, perhaps
tools not fully self-sustaining or mature yet." Track 2 is where "plans are in place, a
more mature tool, and more mature thinking... heading towards self-sustainability."
*Positioning decision:* the proposal must place the project on that map deliberately, and
the Track 1 choice must be defensible against a reviewer who thinks it belongs in Track 2.
]

#src("W2", "video_summary — Asset vs. Ecosystem")[
"Reviewers will ask about the difference between current operations and the proposed
work. The proposal must be distinctly different intellectually and in terms of broader
impacts to warrant an award."
]

#supply[
- The gap between demonstrated adoption and organizational capacity
- Explicit statement of what is *different* about the proposed work vs. current operations
- Where the project sits on the maturity map and why Track 1 is the right fit
]
