# Track 1: what the actual work is

<!-- BOT-GENERATED 2026-08-04. Planning scaffolding, not proposal text.
     Mapping of NSF 26-506 Track 1 requirements onto concrete workstreams + artifacts.
     Requirements traced to solicitation; the workstream/artifact breakdown is the
     bot's construction and is a starting point for Jon to argue with. -->

## The mental model

**Track 1 does not build software. Track 1 produces a plan, and the evidence behind it.**

The cleanest way to think about the deliverable: *at the end of 12 months you should have
everything you'd need to write a credible Track 2 proposal.* Track 1 is the study that
de-risks Track 2. NSF designed it that way — completing Track 1 I-Corps waives the
requirement for a later Track 2 award.

So "what are we proposing to do" = **a year of structured investigation and design,
producing documents and decisions, not features.**

## The spine: I-Corps is not overhead, it IS the work

- **100+ interviews minimum**, mandatory, budgeted at up to $30K, 3–5 people.
- That's roughly 2 interviews per working day for a year. EL and TL each spend ~1 day/week.
- This is the single largest labor item in a Track 1 award.

Everything in Ecosystem Discovery is downstream of these interviews. Build the timeline
around them rather than treating them as a compliance tax bolted on the side.

---

## The two-layer problem framing (important)

Review criterion #1 is: *"an issue of significant societal or national importance that is
**not currently being adequately addressed**."*

That criterion is about the **domain problem**, not about the Foundation's org chart.
A proposal framed only as "we're growing too fast and need governance" answers a question
NSF didn't ask, and fails criterion #1.

Both layers have to be present, in this order:

| Layer | Content | Which criterion it serves |
|---|---|---|
| **1. Domain problem** | Whatever the societal/national need is that markerless motion capture addresses, and why it is inadequately addressed today | Criterion #1, Intellectual Merit, Broader Impacts |
| **2. Ecosystem problem** | FreeMoCap demonstrably answers layer 1 — evidenced by the userbase — but has no organizational capacity to sustain or govern that growth | Criteria #2, #3 — sustainment vision, recruitment strategy |

The large userbase is **evidence for layer 1**, and it's the setup for layer 2. It is the
strongest asset in the proposal because it converts "we think people need this" into
"people are already using this at scale." Use it as proof of demand, not as the problem
statement.

### Risk to manage

NSF explicitly will not fund "existing **well-resourced** open-source communities."
Large userbase + no organizational resource is exactly the right shape — but the writing
has to keep "well-adopted" and "well-resourced" clearly separated. Adoption is the asset;
resourcing is the gap.

Second risk: a growth/capacity narrative slides very easily into "so fund us to build
features and hire developers." That is out of scope twice over (Track 1 is planning-only,
and PESOSE doesn't fund artifact development). Every proposed activity should be
answerable to: *does this produce a decision, a document, or evidence?*

---

## Four workstreams → concrete artifacts

This is the answer to "how do I turn governance into deliverables." Each bullet is a thing
that exists as a file or a decision at the end of the year.

### WS1 — Ecosystem Discovery (feeds criterion #1 and #3)

*Question being answered: who actually depends on this, and what do they need from an OSE?*

- Stakeholder segmentation map — distinct user classes, sized (researchers, clinicians,
  educators, students, industry, hobbyists — whatever the interviews reveal)
- The 100+ interview corpus, plus a synthesis report of findings by segment
- Quantified demand baseline: downloads, installs, GitHub stars/forks/issues, citation
  counts, Discord/forum membership, course adoptions — with a method for tracking them over time
- Contributor funnel analysis: how many people have ever contributed, how many are active,
  what the drop-off looks like, current bus factor
- "Why an OSE" decision memo — explicit comparison against alternatives (company,
  academic lab, absorbed into an existing foundation) and why the ecosystem model wins
- Unmet-needs list ranked by segment

### WS2 — Organization and Governance (feeds criterion #2)

*Question being answered: what organizational structure should exist, and on what evidence?*

- Governance model evaluation — survey candidate models against comparable projects,
  score against FreeMoCap's actual constraints, pick one and justify it
- Draft charter / bylaws for the managing organization
- Decision-making process spec: how proposals get made and resolved, maintainer ladder
  (contributor → committer → maintainer), conflict resolution, code of conduct + enforcement path
- Roadmap governance: how feature priority actually gets decided once it isn't just you
- **Licensing and IP audit** — current license, full dependency license compatibility
  review, CLA vs. DCO decision, trademark policy, contributor IP terms
  *(criterion #4 for Track 2 is explicitly about licensing — start it here)*
- Host-structure decision: independent 501(c)(3) vs. fiscal sponsorship vs. joining an
  umbrella org — with the tradeoffs written down
- Role definitions and an actual staffing plan for the target-state organization
- Success metrics definition — what the organization measures about itself annually

### WS3 — Risk Analysis / Security Plan (new since POSE; mandatory)

*Question being answered: what breaks, who could break it, and what's the plan?*

- Threat model for the project and its users
- Dependency and supply-chain audit; SBOM generation and a policy for maintaining it
- Release integrity design: signing, provenance, reproducible builds, release checklist
- Identity and access management: who holds commit rights, who holds release keys,
  package-registry and account ownership, key rotation, bus factor on credentials
- Vulnerability disclosure and response policy (intake, triage, embargo, advisory, patch)
- **OpenSSF Best Practices / Scorecard baseline assessment + target level** — the
  solicitation names OpenSSF criteria and CISA/NSA supply-chain guidance directly, so
  scoring against them is both real work and visible compliance
- Data/privacy considerations — relevant here given what the tool captures; worth a
  deliberate look rather than a mention

### WS4 — Community Building (feeds criterion #3)

*Question being answered: how does a user become a contributor, and a contributor become a maintainer?*

- Contributor onboarding path design — good-first-issue pipeline, mentorship structure
- Documentation and tutorial gap analysis against what interviews say people are stuck on
- Events plan: workshops, hackathons, sprints, conference presence, with a rationale
  for each rather than a list
- Contributor recognition and retention mechanisms
- Communication infrastructure plan: where support happens, who staffs it, how it scales
- Governance of the user→contributor→maintainer pipeline, tied to WS2's maintainer ladder

### WS5 — Sustainability (implied by criterion #2; don't skip)

*Question being answered: what does this cost to run, and where does the money come from?*

- True annual cost model for the target-state organization
- Revenue-path options analysis: grants, corporate/institutional sponsorship, support
  contracts, training and certification, consortium membership, in-kind hosting — each
  tested against interview evidence about willingness to pay
- Target funding mix with a rationale
- Institutional/facilities dependency map — note that if the OSE will depend on facilities
  from any org after the award ends, that requires its own letter of collaboration

---

## Milestones

NSF's slide deck says it directly: milestones must be *"specific, actionable"* and
*"should cover all components, beyond just the cyber technology."* Criterion #4 is
entirely about this, and it's the criterion most often lost on vagueness.

Shape that works for a 12-month planning award — quarterly, each with a named artifact
and a verifiable completion condition:

| Quarter | Center of gravity |
|---|---|
| Q1 | I-Corps kickoff; interview infrastructure; baseline metrics captured; audits started (license, dependency, access) |
| Q2 | Bulk of the 100 interviews; governance model survey; threat model draft |
| Q3 | Interviews complete + synthesis; governance model selected; charter drafted; security plan drafted |
| Q4 | Sustainability model; full ecosystem plan assembled; I-Corps closing; Track 2 case built |

Every milestone should have an evaluation condition attached — how you know it's done and
what "good" looks like — because criterion #4 pairs milestones with the evaluation plan.

---

## Sanity test for any proposed activity

1. Does it produce a **decision, document, or piece of evidence**? (If it produces code or
   features → out of scope.)
2. Does it trace to one of the four review criteria?
3. Could a reviewer tell whether it happened?

If an activity fails any of the three, it doesn't belong in the 7 pages.
