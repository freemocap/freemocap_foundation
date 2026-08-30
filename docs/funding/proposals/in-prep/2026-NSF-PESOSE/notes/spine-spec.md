# SPINE SPEC — Project Description, NSF 26-506 Track 1

**Status:** DRAFT FOR JON'S EDIT — edit this file on disk to say what you actually
mean; nothing here is integrated into the proposal until you've marked it up and
we walk through it section by section.
**Workflow:** Jon edits this file → we discuss → integration happens one
`#suggestion` block at a time into `project-description.typ`, section by section,
slowest possible cadence.

---

## 0. The problem being solved

The document currently reads as eight competent standalone essays. It has a
spine *sentence* (top of `project-description.typ`) but nothing below §1
iterates it. The "duplication of effort" premise — currently the closest thing
to a thesis — is too weak to hang the proposal on (your own §1 and §3 flags say
exactly this). We need an explicit argumentative spine that:

1. Names a situation early, with citations, that makes the Track 1 work feel inevitable.
2. Decomposes it into 3-5 **named problems** a reviewer can hold in their head.
3. Gives every section exactly one named problem to solve, with a one-line
   callback opener and a closing "this section produces X" sentence.
4. Closes the loop in §7 (evaluation per problem) and §8 (what solving them unlocks).

**Constraint that stays fixed:** the eight-part section structure does not move.
PESOSE reviewers check for the mandated content areas by name; the spine is an
overlay that connects them, not a re-organization.

---

## 1. The recommended spine: 

> **Spine claim (draft language):** FreeMoCap is a validated measurement instrument (cite Aaron) with an organically growing and vibrant community of users - however, the maintainer base has not grown symetrically to the user base, so the project currently  resembles one of `EghBal's` Stadium (high user growth, stagnant maintainer growth). 

This propsal defines scoping and discovery activiies aimed to help us understand the landscape, makeup and needs of our growing comminity to build sufficient structure inroads, documentation, upskilling and alignment abilities to allow us to start moving from a 'stadium' to something more like a 'Federation' (increase both Users and Maintainers, aiming for conversion of Users into Maintainers). 

- Existing text about how our knowledge of our landscape is incomplete because wehave to rely on people coming to us to ask questions, so our ability to build the scaffolding for people to make their way tinto the actual community is liimited by our lack of knowledge of our own landscape

- Developers want to help, but the project is complex, so onboarding is effortful. 

- We also need to talk about the fact that we are currently transitioning from the version one of the software where our maintainer core was plateaued because the software was just too complex and generally low quality that people couldn't really come in and help. And we're now at version two, which is now live in alpha stage at time of writing, and a much more complex and sophisticated piece of machinery with a separation between client and server and a backend running on endpoints and WebSockets, and a modern front-end distributed through Electron on a one-click download page and stuff like that. And so a lot of the conversations that we're having now about how to increase our maintainer core is work that sort of already kind of started in the transition towards V2. And what we really need with this proposal is the scoping and framing and exploration and training and whatnot that we will need to sort of make the decisions correctly and sort of stick the landing as we're transitioning from the sort of small but small, vibrant, but ultimately limited thing that we used to be into the potentially enterprise global scale project that we are sort of moving into becoming with V2. That will help us, I think, with keeping things up to date and aligned with the current state of the project, and also aligned with the necessities of Track one, which is about scoping and landscape exploration and stuff like that 

- We can also talk about one of the main things we're doing with V2 is the official sort of hard separation between the responsibilities of the core FreemoCap repository and the subSkelly repos representing Skelly Cam, Skelly Tracker, Skelly Forge, and the FreeMoca Blender add-on, which are mentioned in the text, but not, I think, properly described in the strategic sense. The idea is that we are organizing FreeMocaf as a polyrepo in order to break up the complexity of the project into domain-specific sub-components so that people who are trying to come in and help can sort of work within the individual sub-skelly to allow it, make it easier to onboard people. We're trying to utilize kind of a very careful fractal structure where the structure of the individual subrepositories mirrors the structure of the global repository. So, same basic layout, same location for all the docs and stuff like that. And that is both to make it easier for maintainers to come in and help, but also, which also has the added benefit of making it easier to teach and learn in a teaching setting, and also easier for AI agents to navigate the code base at the large scale and the small scale while maintaining alignment and integration within the code base. Because basically, by breaking these up into small, well-defined, well-described modules, we both are able to improve our own development capacity. We're able to onboard new maintainers and new developers, and we're also creating an interface that is both easy to teach, easy to learn, and easy to navigate with an AI agent. And once again, kind of couching that within the language of the track one proposal. While we are doing all of that and while we are sort of making these decisions and picking these structures and repeating them across the repository, it's important to sort of maintain a constant connection to the community of users and the community of developers so that we know that we are building the structure in a way that will allow for long-term development, maintenance, and growth and sustainability of the repository of the open source ecosystem 

- And then, regarding your other statements, like the things that I don't really like about the authority gap and the trust gap and the money gap, like we don't need to name those as hard and fast as we do here. That's just not the right vibe for a thing like this. But I think the things that you're sort of discussing there is basically around transparency and community support and input. Like previously, we would do a lot of stuff that was just kind of like working with our heads down, and the users were kind of downstream consumers of our work, which is kind of what led to the stadium stuff. In order to facilitate more of the Federation style of development, we're going to develop these standard practices to allow for transparency and open communication in a way that engages the community without bottlenecking progress on sort of messy consensus. So we're not reinventing anything here, we're just using existing models and implementing them as appropriate for the specifics aobout the FMC community 



- The validation side of things is also super important. What you were calling the trust gap is basically just saying that we've done the initial work of validating the project. That is Aaron's dissertation, which we can cite into. And so we know that it's valid. We also know that it's improving. And so, as the whole software begins to move and move forward and improve and sort of gain sort of its complexity and user base, it's important both for us to develop sort of ongoing live benchmarking that sort of follows the progress of the project in an automated way, while also regularizing and communicating our validation methodology and tools so that other people can replicate our validation in their own labs using their own hardware, which both allows them to feel comfortable about using our tool for their research, and it also contributes back to the community by adding to the sort of body of community validation. So, the work of the track one is kind of to figure out the right way to organize our validation methodology and the right way to communicate it outwards into the world so that other people can replicate it for their own needs while also supporting the community 


- The funding gap is something I do think we need to talk about because they wanted to talk about sustainability. And we can basically just talk about, first of all, the general rule behind the FreemoCat Foundation around money is that anything that can be duplicated infinitely without cost is free, representing things like software and documentation, tutorials, stuff like that. And anything that cannot be duplicated infinitely costs money, and that is representing things like labor, hardware, server side processing, and storage and things like that. And so, the ways that we will make money, all the ways that we have been making money and will continue to make money, is by doing client work, building specialized rigs, specialized consulting, that kind of stuff, training, things like that. Clients, grants, like applying for grants like this, including SBIR, SCTV type of stuff in the future through the Skelly Tech for-profit LLC we also have associated with us. And hardware is the other thing we'll sell. So, including low-cost student kits, as well as sort of more modular, higher-end build outs for research labs and stuff like that. And we're going to sort of, you know, another thing too is like supporting server-side processing and storage for monthly fees and subscription costs and stuff like that. And micro-credentialing services and stuff like that wrapped into the documentation where the low-level stuff is free, and then the higher-level certifications that actually require our labor input are sort of you know available for payment. So, this is kind of the plan for our sort of financial future. And so, with this track one stuff, we're going to have to do the kind of, you know, like looking into the community and understanding the landscape necessary to do the kind of planning around this stuff correctly 





/* JON NOTE - the "Four Gap" thing is way to hard touch and misses the core of the Track 1, which is for SCOPING AND DISCOVERY in service of Track 2 activities - your language below is way too dramatic and mouth-puky and eye-rolly. Update your plans and stuff with something more akin to my (rough) wording above*/

**BOT TEXT BELOW - UNCHANGED SINCE PREVIOUS BOT DRAFT - NEEDS ALIGNED WITH HUMAN INSTRUCTIONS ABOVE**

### Gap 1 — Knowledge gap
- **Definition:** Willing help is unusable — the knowledge needed to use, teach,
  and extend the software is not externalized, so participation requires
  core-team access.
- **Track 1 workstream:** §3 discovery (knowledge assessment) + §6 docs /
  XP ladders / pilots.
- **Evidence anchor:** 15k users vs. tiny maintainer base; Eghbal's
  contributor-once stats; our own informal user→contributor transitions.

### Gap 2 — Authority gap
- **Definition:** Decisions and extensions route through specific people, so the
  project cannot grow past them.
- **Track 1 workstream:** §4 governance (PEP/RFC-style models, NumPy/SciPy
  precedent) + community extensions (Blender pull-in precedent).
- **Evidence anchor:** §4's existing PEP paragraph; comparative ecosystem review
  in §3.

### Gap 3 — Trust gap
- **Definition:** Nothing yet guarantees that changes — core or community —
  preserve measurement integrity and security.
- **Track 1 workstream:** §5 OpenSSF assessment, stage-specific integrity
  checks, extension review/release controls.
- **Evidence anchor:** Already drafted; strongest section, needs only naming.

### Gap 4 — Funding gap
- **Definition:** No mechanism exists to fund maintenance after enthusiasm and
  grant money.
- **Track 1 workstream:** §4 licensing posture (AGPLv3+ + alternative terms) +
  sustainability inventory + SkellyTech/SBIR pathways.
- **Evidence anchor:** §4's licensing + sustainability paragraphs, expanded.

What this buys:

- **It demotes "duplication of effort" to evidence.** The §1 pipeline-rebuilding
  argument becomes one sentence of support for the Knowledge gap, not the thesis.
  (Resolves your §1 suggestion: "there's much much more that's good about
  freemocap aside from just allowing others to avoid duplicating effort.")
- **It absorbs nearly every open comment you've left.** See the integration map
  in §3 of this doc — the PEP note, the polyrepo note, AGPL note, revenue note,
  KPI note, XP-ladder note all slot in as named-gap material.
- **Criterion mapping is clean:** (a) need = the four gaps exist for a
  measurement platform with real demand; (b) vision = the federation end-state;
  (c) recruitment = closing the Knowledge gap for people; (d) milestones =
  evaluation per gap.
- **Eghbal stays vocabulary, not skeleton.** Stadium/federation defined once,
  cited once or twice, referenced by name thereafter. Reviewers don't need to
  have read her; each gap also stands on our own evidence.

> **DECISION 1 (Jon):** Do you accept the four-gap decomposition? Rename
> anything? (Candidate renames: "Knowledge gap" → "Alignment gap"; "Authority
> gap" → "Governance gap"; "Funding gap" → "Sustainability gap".)
>
> **DECISION 2 (Jon):** Are four the right number? Candidate 5th: an
> "Adoption gap" (clinics/education can't adopt measurement tools — the
> accessibility argument from §1) — my advice is NO, it muddies criterion (a)
> and the four gaps are about the *organization*, which is what Track 1 funds.
> But say so explicitly if you want it.

---

## 2. The Eghbal quote bank (verified against the epub)

All quotes below were pulled directly from the full text of *Working in Public*
(the epub in `notes/`). Location tags refer to chapters.

**Q1 — the core diagnosis (Introduction):**
> "the problem is not that there's a dearth of people who want to contribute to
> an open source project, but rather that there are too many contributors — or
> they're the wrong kind of contributors."

**Q2 — the stats (Introduction; citing a 275-project GitHub study):**
> "nearly half of all contributors only contributed once. These contributors
> accounted for less than 2% of total commits."

**Q3 — the stats (Introduction):**
> "In more than 85% of the open source projects the researchers examined on
> GitHub, less than 5% of developers were responsible for over 95% of code and
> social interactions."

**Q4 — stadium definition (Ch. 2, "The Structure of an Open Source Project"):**
> "Stadiums are projects with low contributor growth and high user growth.
> While they may receive casual contributions, their regular contributor base
> does not grow proportionally to their users. As a result, they tend to be
> powered by one or a few developers... Stadiums are becoming increasingly
> commonplace today."

**Q5 — federation definition (Ch. 2):**
> "Federations are similar to companies or NGOs. They're more complex to manage
> from a governance standpoint, so they tend to develop processes — voting,
> leadership positions, foundations, working groups, and technical councils...
> Federations also often employ an RFC (request for comments) process, similar
> to a ballot initiative, to manage major change proposals."

**Q6 — the knowledge-concentration mechanism (Ch. 2) — THE Knowledge gap, verbatim:**
> "it's 'expensive' to onboard new maintainers, because maintenance often
> requires knowledge that isn't easily externalized to others... Given the high
> fixed costs of entry into maintainership, the knowledge required to maintain
> tends to stay concentrated among one or a few people. The longer they go
> without externalizing this knowledge, the more difficult it becomes for
> newcomers to participate."

**Q7 — the transition thesis (Ch. 2) — literally the Track 1 thesis in her words:**
> "By making it easier to contribute, or reducing technical scope, maintainers
> might move their projects from a stadium to a federation model."

**Q8 — scope creep (Ch. 5, "Managing the Costs of Production"):**
> "...reducing 'scope creep' (not letting in too many features, which eventually
> bloat the purpose of the project)."

**Q9 — the low-quality-help mechanism (Introduction):**
> "such initiatives often attract low-quality contributions. This creates more
> work for maintainers — all contributions, after all, must be reviewed before
> they are accepted. Maintainers frequently lack infrastructure to bring these
> contributors into a 'contributor community'."

**Q10 — the remedy shape (Ch. 2, quoting Mikeal Rogers on Node.js):**
> "invest in a broad, growing and empowered contributorship that can make
> progress without intervention."

Usage note: in a 7-page proposal, cite Eghbal maybe twice in the rendered text
(Q1 or Q6 for the Knowledge gap at first naming; Q4+Q5 compressed into one
sentence when stadium/federation is defined). The rest of the quote bank is for
*us* — to keep our usage of her framework precise, not to be pasted.

> **DECISION 3 (Jon):** Citation appetite. Options: (a) eghbal2020 only
> [my recommendation — it's already in the bib]; (b) add 1-2 more structural
> cites (e.g., the studies behind Q2/Q3, or a research-software-sustainability
> reference) to make the "normal shape" claim multi-source.

---

## 3. Integration map — section by section

Legend: **[NEW]** = drafted material to add; **[CALLBACK]** = one-line connective
sentence; **[YOURS]** = resolves one of your existing inline comments;
**[CUT]** = pays for the additions.

### File header (`project-description.typ` top comments) — non-rendering
- [NEW] Rewrite "THE SPINE" comment block: the four-gap test replaces the
  current sentence-level test (which stays as a subordinate rule).

### Part 1 — Vision and Need (~1.0pp, criterion a)
- [YOURS] Your stronger-hook suggestion + the verbose-flag on the bolded need
  statement: the bolded sentence gets rewritten *shorter*, and "duplication"
  language is demoted.
- [NEW] **The Situation paragraph** — last paragraph of §1, ~4-5 lines (sketch
  in §4 of this doc). Ends with the four gaps named in one sentence and the
  claim that Track 1 scopes them. This paragraph is THE spine anchor.
- [CUT candidate] The pipeline-component enumeration ("These include video
  recording and synchronization, camera calibration...") compresses to ~half —
  §3 re-lists this knowledge domain anyway (its "Knowledge assessment" needs it).
- [YOURS] "FreeMoCap" word-repetition fix.

### Part 2 — Current State of the Software and Community (~1.0pp)
- [NEW] Reframe as **"measuring the stadium"**: insert the KPI table
  (see `kpi-spec.md`) after the first paragraph, and add one sentence of
  interpretation: user growth has outrun contributor/maintainer growth — the
  stadium pattern (Eghbal) — with the Knowledge gap named as the consequence.
- [YOURS] Real numbers + PolyRepo rationale (needs your input on disk in
  kpi-spec.md); lede fix on installer + CI/CD ("that's WILD"); sub-5°
  validation lede (needs the dissertation cite from you); team-XP fix.
- [YOURS] Letters-of-collaboration referencing convention — decision: adopt a
  `#collab("Scholl")`-style pattern (like the X-Labs proposal) or plain prose?
- [CUT candidate] The repo-by-repo enumeration (skellycam/skellytracker/
  skellyforge/blender_addon) compresses to one clause; the polyrepo *rationale*
  sentence replaces the enumeration detail.

### Part 3 — Ecosystem Discovery (~0.75pp)
- [CALLBACK] Section opener: "This work scopes the **Knowledge gap**: ..."
- [YOURS] Reorganize the discovery paragraph around the bolded user-population
  terms; add XP ladders (low-XP/high-XP variants of each user type) — these
  become the skeleton of §6's education pathways, and the milestone table's
  evaluation evidence.
- [CALLBACK] The "Comparative ecosystem review" assessment explicitly says its
  output feeds the **Authority gap** work in Part 4 (it already says this —
  sharpen the wording to name the gap).
- [YOURS] Stronger section opening than "The available tools..."; FOSS-existential
  framing for "Necessity of an OSE approach" ("it's in our name; there is no
  non-FOSS path").
- [YOURS] Sharpen "we only know the users who sought us out."

### Part 4 — Organization and Governance (~1.0pp)
- [CALLBACK] Section opener: "Parts 1-3 established the Knowledge gap; this
  part scopes the **Authority gap** and the **Funding gap**."
- [YOURS] Eghbal paragraph stays, becomes the callback: stadium/federation now
  refers back to §1's Situation paragraph instead of introducing fresh.
- [YOURS] PEP paragraph: add NumPy/SciPy as peer examples (transparency without
  consensus-bottleneck) — Authority gap material.
- [YOURS] Extensions paragraph: add the tech-change rationale for polyrepo
  ("both advantages") + Blender add-on→core precedent (Grease Pencil, Rigify)
  for the pull-in model — this is the scope-creep answer (Q8).
- [YOURS] Licensing: the AGPLv3+ argument — sole defense against
  proprietary-endpoint capture; alternative-terms sublicensing as Funding-gap
  mechanism.
- [YOURS] Sustainability: the revenue inventory (shop/clients/grants/donations/
  SBIR-STTR via SkellyTech) — Funding gap.
- [YOURS] The drafted closing-output sentence (your TODO) lands here.

### Part 5 — Risk Analysis and Security Plan (~0.75pp)
- [CALLBACK] Section opener: "...the **Trust gap**." One sentence only — this
  section is already strong.
- [CALLBACK] Extension review/release controls tie back to §4's extension
  system by name ("the community extension system scoped in Part 4 is the
  surface these controls govern") — one thread, two sections, zero new content.

### Part 6 — Community Building (~0.75pp)
- [CALLBACK] Section opener: "...the **Knowledge gap**, for people" —
  recruitment IS gap-closure.
- [NEW] One sentence making the Eghbal response explicit: initiatives that
  attract willing-but-unaligned help *add maintainer labor* (Q9) unless the
  pathways exist first — which is why we build pathways (docs, XP ladders,
  pilots) before scaling recruitment. [May be foldable into existing prose.]
- [YOURS] User→informed-participant→sustained-contributor ladder (already
  drafted in §6's close) links to §3's XP ladders explicitly.
- [CUT candidate] Paragraphs 2-3 tighten by ~2 lines to pay for callbacks.

### Part 7 — Milestones and Evaluation (~0.75pp, criterion d)
- [NEW] The Evaluation subsection restates success **per gap**: each gap gets a
  baseline (from the KPI table) and a 12-month target/milestone row. This is
  the spine's payoff: the evaluation plan evaluates the *transition*, not just
  activity completion. Net page cost ~0; restructure of existing text.

### Part 8 — Broader Impacts (~0.5pp)
- [CALLBACK] One sentence: a federation-shaped FreeMoCap is what turns
  specialized adaptations into shared infrastructure (the existing first
  paragraph already argues this — name the stadium→federation frame once here).

---

## 4. The Situation paragraph — sketch for §1's close

> *DRAFT SKETCH — not integrated. Mark this up directly.*

> FreeMoCap's community growth follows the pattern that Eghbal identifies as
> the dominant structure of modern open source: a "stadium," in which user
> growth far outruns contributor growth and the knowledge required to maintain
> the system concentrates in a small core team (eghbal2020). This shape is not
> a failure of our project — it is the industry norm; in the large majority of
> open-source projects, fewer than 5% of developers account for over 95% of
> code and community interactions. But it is an existential constraint on an
> instrument meant to serve research communities at national scale. Between a
> popular open-source project and a self-sustaining ecosystem lie four gaps:
> the **knowledge** required to use and extend the system is concentrated
> rather than shared; the **authority** to make decisions and accept changes
> routes through specific people; the **trust** mechanisms that guarantee
> measurement integrity and supply-chain security do not yet exist; and the
> **funding** to maintain the infrastructure beyond initial enthusiasm is not
> secured. Track 1 support will scope, with the project's community, the
> organizational structures that close each gap.

(~150 words. Trim candidates if pages demand: drop the "industry norm" stat
sentence; fold Q6's mechanism into the knowledge-gap clause.)

> **DECISION 4 (Jon):** Does the sketch read right? Edit freely — vocabulary,
> emphasis, what to cut. Note it cites Eghbal twice (book + stat); DECISION 3
> governs whether the stat needs its own cite.

---

## 5. Page-budget accounting

Current: **exactly 7.0 pages in submission mode** — zero slack.

**Additions (estimated cost):**

- §1 Situation paragraph — ~0.10 pp
- §2 KPI table + interpretation sentence — ~0.30 pp
- §3-§6 callbacks + closing-output sentences — ~0.12 pp
- §7 evaluation-per-gap restructure — ~0.00 pp (net)
- **Total: ~0.52 pp**

**Cut candidates (estimated savings):**

- §1 pipeline enumeration compression — ~0.06 pp
- §2 repo-by-repo list compression — ~0.08 pp
- §1 bolded need statement rewrite (your flag) — ~0.03 pp
- §6 paragraphs 2-3 tightening — ~0.04 pp
- §5 data-integrity enumeration tightening — ~0.04 pp
- §3 assessment list tightening — ~0.04 pp
- Caption/table text size reductions (legal, last resort) — ~0.05-0.10 pp
- **Subtotal: ~0.34 pp**

Residual ~0.2pp must come from a real content cut. **My candidate:** §2's
"Team Qualifications" subsection overlaps with the biosketches and
synergistic-activities documents — it could compress to two sentences
(evidence-style) rather than a paragraph, since SciENcv bios carry the detail.

> **DECISION 5 (Jon):** Approve the cuts list? The Team Qualifications
> compression is the one that touches substance — your call.

---

## 6. Execution plan once this spec is agreed

1. §1 first (Situation paragraph + demoted duplication + hook fix + cuts) — as
   `#suggestion` green blocks + red/blue flags for everything touching your words.
2. §2 second (KPI table lands here; needs `kpi-spec.md` filled in by you first).
3. §3-§6 callback pass, one section per conversation.
4. §7 evaluation restructure last (it depends on everything upstream).
5. Compliance sweep (7.0pp, URL check, caption rules) after each integration
   session, not just at the end.
