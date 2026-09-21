#import "../helpers/shared.typ": req, budget, src, supply, pitfall
= Organization and Governance <sec-governance>
#budget(1.2, 720)

#req(source: "SOL §V.A — Track 1")[
*Organization and Governance*: Outline activities to establish governance and licensing
models, development and integration processes, security and privacy safeguards, and
metrics for long-term success.
]

#req(source: "SOL §VI.A — Track 1 criterion 2")[
Does the proposal clearly describe the long-term vision for sustaining the OSE?
]

== Governance model and organizational design

#src("W2", "video_summary — Key Dimensions of Sustainability")[
NSF's own six-dimension breakdown. Sustainability "is not solely about funding or
generating revenue" — it is "the capacity to continue the effort being pursued":
+ *Meaningful problem* — attracting organizations and communities
+ *Organization* — leadership and execution of essential functions
+ *Maintainer well-being* — preventing overextension; documentation, transparency, mentoring
+ *Independent of lead institution* — building a legacy beyond the initial group
+ *Technical* — keeping assets updated with technology and ecosystem change
+ *Governance* — roles, decision-making, conflict resolution

Maintainer well-being and independence-from-lead-institution are named by NSF and appear
in no written source. Address both explicitly.
]

#src("W1", "@ 00:36:00")[
"How are you going to get data maintainers that want to do this, perhaps not being paid?
Maybe they'll be paid something. How's that all going to work?"
]

#supply[
- Candidate governance models surveyed, evaluation criteria, selected model + justification
- Draft charter/bylaws deliverable
- Written proposal/decision process; contributor→committer→maintainer ladder criteria
- Conflict resolution procedure; code of conduct with named enforcement path
- Roadmap authority: who sets priority, how competing adopter needs are arbitrated
- Explicit treatment of maintainer well-being and load distribution
- Explicit plan for independence from the lead institution
]

== Intermediary and backbone organizations

#src("W1", "@ 00:38:32 – 00:40:42")[
*NSF's strongest stated recommendation in the intro webinar.* "We see that oftentimes
teams will go it alone... You need to get other groups involved. I want to put a plug in
for these what we call intermediary or backbone organizations... their job is to sustain
open source ecosystems... They're experts in the field."

Named by NSF: *The Carpentries* (community-led training in coding, data, research
computing; develops local instructors); *NumFOCUS* (fiscal sponsorship, governance
support, fundraising, community services — NumPy, Jupyter, pandas); *Software Freedom
Conservancy* (fiscal sponsorship, legal services, license compliance, nonprofit
management); *Open Source Collective* (financial infrastructure, fundraising support).

"Your submission is going to be much stronger if you reach out to these kinds of groups,
rather than keeping it within your small group if you're not experienced... If you're
trying to do it alone, you're probably taking the harder route and it's going to slow you
down."
]

#supply[
- Which intermediary organizations will be engaged, for what function, at what stage
- Whether any becomes a letter-of-collaboration writer or a formal partner
]

== Licensing and intellectual property

#src("SOL", "§VI.A — Track 2 criterion 4")[
Licensing is a separately scored criterion at Track 2 ("a clear, detailed licensing
approach"). Starting the audit at Track 1 is both required work and Track 2 positioning.
]

#src("W2", "video_summary — Dependencies on Non-Open Source Software")[
*Directly applicable given a heavy dependency stack.* A product depending on licensed or
non-open-source components remains eligible, but "a collaborator letter is expected,
demonstrating outreach and joint effort with the entity owning the proprietary software.
Lack of demonstrated collaboration or effort to work with dependencies can lead to
proposal rejection."
]

#supply[
- Current license; assessment of continued fitness
- Dependency-tree license compatibility audit; count and known problem dependencies
- CLA vs. DCO decision with contributor-friction / institutional-adoption tradeoffs
- Trademark policy; contributed-code and contributed-data terms
- Identification of any non-open-source dependency + the required collaborator letter
]

== Host structure and success metrics

#supply[
- Evaluation of host structures: independent entity vs. fiscal sponsorship vs. umbrella
- Recommendation with reasoning and decision timeline — not carried open into Track 2
- The small set of annually reported organizational indicators (feeds §7 evaluation plan)
]
