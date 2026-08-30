# SPINE SPEC v2 — Project Description, NSF 26-506 Track 1

**Status:** v2, 2026-08-30. Rewritten to align with Jon's notes (preserved
verbatim in §1 below). The "Four Gaps" framing is retired. Nothing here is
integrated into the proposal until Jon has marked this up and we walk through
it section by section.

**Workflow:** Jon edits this file → we discuss → integration happens one
`#suggestion` block at a time into `project-description.typ`, section by
section, slowest possible cadence. (KPI spec is parked until the spine is
agreed.)

---

## 1. Jon's input (verbatim, 2026-08-30)

> **Spine claim (draft language):** FreeMoCap is a validated measurement
> instrument (cite Aaron) with an organically growing and vibrant community of
> users — however, the maintainer base has not grown symmetrically to the user
> base, so the project currently resembles one of Eghbal's Stadiums (high user
> growth, stagnant maintainer growth).
>
> This proposal defines scoping and discovery activities aimed to help us
> understand the landscape, makeup and needs of our growing community to build
> sufficient structure inroads, documentation, upskilling and alignment
> abilities to allow us to start moving from a 'stadium' to something more like
> a 'Federation' (increase both Users and Maintainers, aiming for conversion of
> Users into Maintainers).

- Existing text about how our knowledge of our landscape is incomplete because
  we have to rely on people coming to us to ask questions, so our ability to
  build the scaffolding for people to make their way into the actual community
  is limited by our lack of knowledge of our own landscape.

- Developers want to help, but the project is complex, so onboarding is
  effortful.

- We also need to talk about the fact that we are currently transitioning from
  version one of the software where our maintainer core was plateaued because
  the software was just too complex and generally low quality that people
  couldn't really come in and help. And we're now at version two, which is now
  live in alpha stage at time of writing, and a much more complex and
  sophisticated piece of machinery with a separation between client and server
  and a backend running on endpoints and WebSockets, and a modern front-end
  distributed through Electron on a one-click download page and stuff like
  that. And so a lot of the conversations that we're having now about how to
  increase our maintainer core is work that sort of already kind of started in
  the transition towards V2. And what we really need with this proposal is the
  scoping and framing and exploration and training and whatnot that we will
  need to sort of make the decisions correctly and sort of stick the landing as
  we're transitioning from the sort of small, vibrant, but ultimately limited
  thing that we used to be into the potentially enterprise global scale project
  that we are sort of moving into becoming with V2. That will help us, I think,
  with keeping things up to date and aligned with the current state of the
  project, and also aligned with the necessities of Track one, which is about
  scoping and landscape exploration and stuff like that.

- We can also talk about one of the main things we're doing with V2 is the
  official sort of hard separation between the responsibilities of the core
  FreeMoCap repository and the subSkelly repos representing SkellyCam, Skelly
  Tracker, Skelly Forge, and the FreeMoCap Blender add-on, which are mentioned
  in the text, but not, I think, properly described in the strategic sense. The
  idea is that we are organizing FreeMoCap as a polyrepo in order to break up
  the complexity of the project into domain-specific sub-components so that
  people who are trying to come in and help can sort of work within the
  individual sub-skelly to make it easier to onboard people. We're trying to
  utilize kind of a very careful fractal structure where the structure of the
  individual subrepositories mirrors the structure of the global repository.
  So, same basic layout, same location for all the docs and stuff like that.
  And that is both to make it easier for maintainers to come in and help, but
  also — which also has the added benefit of making it easier to teach and
  learn in a teaching setting, and also easier for AI agents to navigate the
  code base at the large scale and the small scale while maintaining alignment
  and integration within the code base. Because basically, by breaking these up
  into small, well-defined, well-described modules, we both are able to improve
  our own development capacity. We're able to onboard new maintainers and new
  developers, and we're also creating an interface that is both easy to teach,
  easy to learn, and easy to navigate with an AI agent. And once again, kind of
  couching that within the language of the track one proposal: while we are
  making these decisions and picking these structures and repeating them across
  the repository, it's important to maintain a constant connection to the
  community of users and the community of developers so that we know that we
  are building the structure in a way that will allow for long-term
  development, maintenance, and growth and sustainability of the open source
  ecosystem.

- Regarding the "authority gap" / "trust gap" / "money gap" — we don't need to
  name those as hard and fast. That's just not the right vibe. The things
  discussed there are basically around transparency and community support and
  input. Previously, we would do a lot of stuff just working with our heads
  down, and the users were kind of downstream consumers of our work, which is
  what led to the stadium stuff. In order to facilitate more of the Federation
  style of development, we're going to develop standard practices to allow for
  transparency and open communication in a way that engages the community
  without bottlenecking progress on messy consensus. We're not reinventing
  anything here — just using existing models, implemented as appropriate for
  the specifics of the FMC community.

- The validation side of things is also super important. What was called the
  "trust gap" is basically: we've done the initial work of validating the
  project — that is Aaron's dissertation, which we can cite. So we know it's
  valid, and we know it's improving. As the software moves forward and improves
  and gains complexity and user base, it's important both to develop ongoing
  live benchmarking that follows the progress of the project in an automated
  way, and to regularize and communicate our validation methodology and tools
  so that other people can replicate our validation in their own labs using
  their own hardware — which both allows them to feel comfortable using our
  tool for their research, and contributes back to the community by adding to
  the body of community validation. The Track 1 work is to figure out the right
  way to organize our validation methodology and communicate it outwards.

- The funding/sustainability side we do need to talk about. The general rule
  behind the FreeMoCap Foundation around money: anything that can be duplicated
  infinitely without cost is free — software, documentation, tutorials. Anything
  that cannot be duplicated infinitely costs money — labor, hardware,
  server-side processing and storage. Ways we make money: client work (building
  specialized rigs, specialized consulting, training), grants (like this one,
  and in the future SBIR/STTR-type things through the SkellyTech for-profit
  LLC), hardware sales (low-cost student kits, modular higher-end build-outs
  for research labs), server-side processing/storage on monthly fees and
  subscriptions, and micro-credentialing (low-level stuff free, higher-level
  certifications that require our labor available for payment). With this Track
  1, we have to do the looking into the community and understanding the
  landscape necessary to plan this correctly.

> **JON NOTE:** the "Four Gap" thing is way too harsh and misses the core of
> Track 1, which is SCOPING AND DISCOVERY in service of Track 2 activities —
> the language was way too dramatic and mouth-puky and eye-rolly. Update plans
> to something more akin to the rough wording above.

---

## 2. The spine (v2)

One narrative, no taxonomy. In prose:

> FreeMoCap is a validated measurement instrument (#c("cherianOpensourceDevelopmentValidation2026"))
> with an organically growing community of users spanning students/professionals, artists/researchers, etc etc. Its maintainer base has not
> grown symmetrically with its user base: in Eghbal's terms, the project has
> the structure of a "stadium" — high user growth, stagnant maintainer growth —
> a pattern she documents as the common structure of mid-scale open source
> projects. Two facts make this the right
> moment to address it. First, our knowledge of our own community is
> incomplete: we mostly see the users who come to us, which limits our ability
> to build the scaffolding that would let others find their way in (NOTE - bad framing!!! this 'first' thing is not a time-based thing, so its stupid to put it in a two-elemtn 'why now' list!!!). Second, the
> software has just been fully rebuilt the v2 (currently in alpha release): a polyrepo
> structure separating the core from domain-specific components, a client/server
> architecture, and a one-click installer for a dedicated professional standalong desktop application (no terminal use required) — the more sophisticated structure follows modern best practices to create a software ecosystem capable logn term development, maintenance, and growth. Track 1 support funds the scoping and discovery
> needed to convert this technical readiness into organizational structure: in
> service of Track 2, we will scope the community landscape; the documentation
> and upskilling pathways that convert user interest into contributor capacity;
> governance practices that create transparency and productive communication between the core maintainers/developers and the larger community of stakeholders; a validation and
> benchmarking methodology that the community can replicate; and a
> sustainability model for maintaining the infrastructure after the grant.

**The five scoping areas** (the spine's recurring referent — always lowercase
descriptive phrases, never branded names):

1. **community landscape and needs** — discovery: who the users are, what drew
   them, what blocks them (§3)
2. **documentation and contributor-upskilling pathways** — converting user
   interest into contributor capacity (§6, fed by §3)
3. **governance and contribution practices** — transparency and open
   communication that engage the community without bottlenecking progress on
   consensus (§4)
4. **validation and benchmarking methodology** — organized, communicated, and
   replicable by others on their own hardware (§5, evidenced in §2)
5. **sustainability model** — the free-vs-paid principle and the revenue
   pathways (§4)

Sections refer back to these in plain sentences ("the pathways scoped here
respond to the community assessment in Part 3") — no labels in the rendered
text beyond the plain phrases themselves.

**What the stadium→federation frame does now:** it is the *transition motif* of
the whole document — stated once in §1 (definition + the norm claim), used
where §4 already uses it, echoed once in §8. Eghbal is cited as analytic
vocabulary; Q7 ("By making it easier to contribute, or reducing technical
scope, maintainers might move their projects from a stadium to a federation
model") is the sentence the whole proposal is a paraphrase of, and we never
need to quote it in the rendered text — just implement it.

---

## 3. Tone rules (standing constraints, from Jon's critique)

1. No invented branded constructs. No "The Four Gaps." No capitalized Problem
   Names. The scoping areas are plain descriptive phrases.
2. No dramatized stakes. No "existential," "national-scale imperative,"
   "connective tissue." If a sentence would look at home in a pitch deck, it is
   wrong.
3. Grounded NSF register: declarative, evidence-first, modest verbs. Claims
   about the project are stated as observations with numbers attached.
4. Eghbal's vocabulary (stadium/federation) is used because it is precise and
   citable, not because it is catchy — define once, cite once, use sparingly.
5. The document is honest about limitations (heads-down development, incomplete
   community knowledge) without self-flagellation — stated as facts that
   motivate the scoping work.

---

## 4. The V2-transition material — placement and the compliance guardrail

**Guardrail (hard rule):** Track 1 funds planning, not product development.
The V2 re-architecture appears in the document ONLY as (a) evidence of active
maintenance and (b) motivation — the re-architecture created the decision
window in which organizational scoping is both possible and urgent. No sentence
may imply the grant builds, finishes, or operates V2. Existing §2 discipline
comment ("Track 1 supports planning, NOT product development") stays and now
carries more weight.

**Where the V2 material lives:**

- **§2 (Current State):** one paragraph on V2 status — client/server split,
  endpoint/WebSocket backend, Electron front-end, one-click installer, polyrepo
  separation (core + SkellyCam/SkellyTracker/SkellyForge/Blender add-on), alpha
  status. This replaces/expands the current stale repo-enumeration sentence and
  absorbs the "that's WILD" lede fix. The polyrepo *rationale* (fractal
  structure mirroring the global repo; same doc locations per repo; domain-
  scoped contribution; teaching/learning benefit; AI-agent navigability;
  improves our own development capacity) is the strategic description your note
  says is missing.
- **§1 (Vision and Need):** one clause at most — the V2 transition as the
  inflection point that makes organizational scoping timely ("the project's
  recent re-architecture for extensibility creates the conditions under which
  contribution can scale — if the surrounding structure is built for it" —
  final wording TBD in draft).
- **§4 (extensions):** the polyrepo interfaces are what community extensions
  plug into — existing content, now properly motivated by §2's rationale.
- **Time-sensitivity:** "live in alpha at time of writing" — decide whether to
  say "alpha" at all in the rendered text. By submission (Sept 1) V2 status may
  have moved. Candidate: "recently released" / "in initial public release." —

> **DECISION V-1 (Jon):** how do we refer to V2's release status in the
> rendered text? (options: "alpha" / "initial public release" / "recently
> released" / no status claim)

**Optional hook — AI agents (NSF 26-015 DCL):** PESOSE is one of the target
programs of the AI-agent-ecosystems DCL (NSF 26-015, in `official-pdfs/`). One
sober sentence — the fractal, well-documented polyrepo structure makes the
codebase legible to both human newcomers and AI agents, positioning the
ecosystem for agent-assisted contribution — is a cheap, current alignment
signal. Risk: reads as buzz-chasing if overdone; it stays one sentence, in §2
or §8.

> **DECISION V-2 (Jon):** include the AI-agent sentence? And if so, in §2 or §8?

---

## 5. Integration map v2 — section by section

Legend: **[NEW]** drafted material to add; **[CALLBACK]** one-line connective
sentence; **[YOURS]** resolves one of your existing inline comments;
**[CUT]** pays for additions.

### File header (`project-description.typ` top comments) — non-rendering
- [NEW] Rewrite "THE SPINE" comment block to the v2 narrative + tone rules +
  the V2 guardrail. The existing sentence-level test (ecosystem-vs-software,
  evidence-vs-plan, criterion) stays as the subordinate check.

### Part 1 — Vision and Need (~1.0pp, criterion a)
- [YOURS] Stronger hook (your suggestion): open on the instrument + community,
  not on "the available tools." The duplication argument is demoted to one
  supporting sentence inside the Knowledge discussion.
- [YOURS] Verbose-flag on the bolded need statement: rewrite shorter, in the
  grounded register.
- [NEW] **Situation paragraph** closes §1 (sketch in §6 of this doc): validated
  instrument → stadium pattern (Eghbal, norm-not-failure) → incomplete
  knowledge of our own landscape → V2 re-architecture as the inflection → the
  five scoping areas enumerated in one sentence, in service of Track 2.
- [YOURS] "FreeMoCap" word-repetition fix.
- [CUT] Pipeline-component enumeration ("These include video recording and
  synchronization, camera calibration...") — compress to ~half; §3 carries the
  knowledge-domain detail.

### Part 2 — Current State of the Software and Community (~1.0pp)
- [NEW] **V2 status paragraph** (per §4 above): re-architecture + polyrepo
  rationale (fractal structure, domain-scoped contribution, teachability,
  AI-navigability), written as evidence of active maintenance + the decision
  window. This is the "properly described in the strategic sense" your note
  asked for.
- [NEW] KPI table (`kpi-spec.md`, parked) + one interpretation sentence: user
  growth has outrun maintainer growth — the stadium pattern — as the
  community-level fact the rest of the proposal responds to.
- [YOURS] Real numbers; installer/CI-CD lede; sub-5° validation lede (needs
  dissertation cite); team-XP fix.
- [YOURS] Letters-of-collaboration referencing convention (still open:
  `#collab("Scholl")` pattern vs. plain prose).
- [CUT] Repo-by-repo enumeration (skellycam/skellytracker/skellyforge/
  blender_addon detail) — absorbed into the V2 paragraph's polyrepo sentence.

### Part 3 — Ecosystem Discovery (~0.75pp)
- [CALLBACK] Opener ties to the spine's "incomplete knowledge of our own
  community" fact: discovery exists because our community knowledge is
  self-selected (we see who comes to us).
- [YOURS] Reorganize the discovery paragraph around the bolded user-population
  terms; add XP ladders (low/high experience within each user type) — these
  become §6's education-pathway skeleton.
- [CALLBACK] Comparative ecosystem review explicitly feeds the governance-
  practices scoping in Part 4 (already drafted — sharpen to name it).
- [YOURS] FOSS-existential framing for "Necessity of an OSE approach" (it's in
  our name; no non-FOSS path) — grounded phrasing, no drama.
- [YOURS] Sharpen "we only know the users who sought us out."
- [CUT] Assessment-list tightening (~0.04pp).

### Part 4 — Organization and Governance (~1.0pp)
- [CALLBACK] Opener: this part scopes the **governance and contribution
  practices** and **sustainability model** areas.
- [YOURS] Eghbal paragraph becomes the callback (stadium→federation already
  defined in §1; Q7's mechanism — easier contribution + reduced scope — is
  what this part scopes).
- [NEW/YOURS] Transparency framing from your note: earlier development was
  heads-down with users as downstream consumers (honest, stated as a young-
  project stage, not a confession); the scoped work is standard
  transparency/communication practices — e.g. PEP/RFC-style processes —
  engaging the community without bottlenecking on consensus. [YOURS] Add
  NumPy/SciPy as peer examples of the PEP/RFC pattern.
- [YOURS] Extensions: tech-change rationale for polyrepo ("both advantages") +
  Blender add-on→core precedent (Grease Pencil, Rigify) — scope management by
  keeping the core small and letting extensions prove themselves.
- [YOURS] Licensing: AGPLv3+ as the defense against proprietary-endpoint
  capture; alternative-terms sublicensing as a sustainability mechanism.
- [NEW/YOURS] Sustainability: the **free-vs-paid principle** (infinitely
  duplicable → free: software, docs, tutorials; otherwise paid: labor,
  hardware, server-side processing/storage) + the revenue inventory (client
  work and training; grants incl. future SBIR/STTR via SkellyTech LLC; hardware
  — student kits and lab build-outs; hosted processing/storage subscriptions;
  micro-credentialing — free tiers, paid certifications). Framed as: the
  community/landscape scoping in this proposal is the evidence base for
  planning these correctly.
- [YOURS] The drafted closing-output sentence (your TODO) lands here.

### Part 5 — Risk Analysis and Security Plan (~0.75pp)
- [CALLBACK] Opener ties to the **validation and benchmarking methodology**
  area: this part scopes how integrity and security are maintained *as the
  software changes*.
- [NEW] Validation-methodology scoping (from your note): beyond the existing
  data-integrity content — scope the organization and communication of the
  validation methodology so other labs can replicate validation on their own
  hardware, adding to a body of community validation; and scope ongoing
  automated benchmarking that tracks the software's evolution. (§7 already has
  the "prototype benchmarking and regression suite" row — consistent.)
- [CALLBACK] Extension review/release controls tie back to §4's extension
  system by name.
- [CUT] Data-integrity enumeration tightening (~0.04pp) to pay for the above.

### Part 6 — Community Building (~0.75pp)
- [CALLBACK] Opener ties to the **documentation and contributor-upskilling
  pathways** area.
- [NEW] One sentence of the Q9 logic, grounded: initiatives that attract
  willing contributors add maintainer labor unless the pathways exist first —
  hence pathways before recruitment. (Fold into existing prose if space
  demands.)
- [YOURS] User→informed-participant→sustained-contributor ladder links
  explicitly to §3's XP ladders.
- [CUT] Paragraphs 2-3 tighten (~0.04pp).

### Part 7 — Milestones and Evaluation (~0.75pp, criterion d)
- [NEW] Evaluation subsection restates success **per scoping area** (five
  areas): each gets a baseline (KPI table, where available) and a 12-month
  output/milestone row. Evaluates the transition, not just activity completion.
  Net ~0 cost; restructure of existing text.

### Part 8 — Broader Impacts (~0.5pp)
- [CALLBACK] One sentence: the federation end-state is what lets contributions
  and adaptations move across domains (existing first paragraph argues this —
  name the frame once). Candidate home for the AI-agent sentence if not spent
  in §2.

---

## 6. The Situation paragraph — sketch v2 for §1's close

> *DRAFT SKETCH — not integrated. Mark this up directly. Register per tone
> rules: declarative, no drama.*

> FreeMoCap's community has grown faster than its maintainer base. Eghbal
> (eghbal2020) describes this structure — high user growth, low contributor
> growth, maintenance knowledge concentrated in a small core team — as the
> "stadium," and documents it as the common structure of mid-scale open source
> projects rather than a project-specific failure. Two facts make this the
> right moment to address it. First, our knowledge of our own community is
> incomplete: we see primarily the users who come to us, which limits our
> ability to build the scaffolding that would let others participate
> independently. Second, the software's recent re-architecture (V2) has
> lowered the technical cost of contribution — separating the project into
> domain-specific repositories with a shared structure, and moving to a
> client/server architecture with a one-click installer. What remains is
> organizational rather than technical. This proposal therefore scopes, in
> preparation for Track 2: the community landscape and its needs; the
> documentation and upskilling pathways that convert user interest into
> contributor capacity; governance practices that distribute decision-making
> without bottlenecking it; a validation and benchmarking methodology that
> other laboratories can replicate; and a sustainability model for the
> maintenance the software will require.

(~190 words. Trim candidates: drop the V2 sentence here (it lives in §2);
compress the five-area enumeration to a shorter list.)

> **DECISION S-1 (Jon):** mark this up. Does the register read right? Is the
> five-area enumeration the right anchor sentence, and is this paragraph the
> right *length* for the anchor (it is the single most important paragraph in
> the document — it can afford 6-7 lines if we cut elsewhere)?

---

## 7. Eghbal quote bank (unchanged from v1; verified against the epub)

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

**Q4 — stadium definition (Ch. 2):**
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

**Q6 — the knowledge-concentration mechanism (Ch. 2):**
> "it's 'expensive' to onboard new maintainers, because maintenance often
> requires knowledge that isn't easily externalized to others... Given the high
> fixed costs of entry into maintainership, the knowledge required to maintain
> tends to stay concentrated among one or a few people. The longer they go
> without externalizing this knowledge, the more difficult it becomes for
> newcomers to participate."

**Q7 — the transition thesis (Ch. 2) — the Track 1 thesis in her words:**
> "By making it easier to contribute, or reducing technical scope, maintainers
> might move their projects from a stadium to a federation model."

**Q8 — scope creep (Ch. 5):**
> "...reducing 'scope creep' (not letting in too many features, which
> eventually bloat the purpose of the project)."

**Q9 — the low-quality-help mechanism (Introduction):**
> "such initiatives often attract low-quality contributions. This creates more
> work for maintainers — all contributions, after all, must be reviewed before
> they are accepted. Maintainers frequently lack infrastructure to bring these
> contributors into a 'contributor community'."

**Q10 — the remedy shape (Ch. 2, quoting Mikeal Rogers on Node.js):**
> "invest in a broad, growing and empowered contributorship that can make
> progress without intervention."

Usage in v2: Eghbal cited in the rendered text at most twice — Q4 (compressed
to one sentence, when the stadium is defined in the Situation paragraph) and
optionally Q6's mechanism compressed into §3 or §6. Everything else stays
internal. Q3's 85%/5% stat may be quoted as a number with the cite, if Jon
wants the "norm not failure" claim multi-sourced —

> **DECISION S-2 (Jon):** citation appetite: (a) eghbal2020 only; (b) + the
> 85%/5% stat as a quoted number with cite; (c) + one research-software-
> sustainability reference.

---

## 8. Page-budget accounting v2

Current: **exactly 7.0 pages in submission mode.**

**Additions (re-estimated for v2 — larger than v1 because of the V2 material):**

- §1 Situation paragraph — ~0.12 pp
- §2 V2/polyrepo paragraph — ~0.10 pp
- §2 KPI table + interpretation sentence — ~0.28 pp
- §4 transparency framing + sustainability expansion (free-vs-paid principle,
  revenue inventory) — ~0.10 pp
- §5 validation-methodology scoping sentences — ~0.06 pp
- §3-§6 callbacks + closing-output sentences — ~0.10 pp
- **Total: ~0.76 pp**

**Cuts (strengthened list):**

- §1 pipeline enumeration compression — ~0.06 pp
- §2 repo-enumeration absorbed into V2 paragraph — ~0.06 pp
- §1 bolded need statement rewrite — ~0.03 pp
- §3 assessment-list tightening — ~0.04 pp
- §5 data-integrity enumeration tightening — ~0.04 pp
- §6 paragraphs 2-3 tightening — ~0.04 pp
- §2 **Team Qualifications compression to two sentences** (biosketches +
  synergistic activities carry the detail) — ~0.08 pp
- Caption/table text size reductions (legal, last resort) — ~0.05-0.10 pp
- **Subtotal: ~0.39-0.44 pp**

**Residual ~0.3pp** must come from real content cuts. Candidates, in order of
preference: (a) KPI table slimmed to 5-6 rows (~0.08pp); (b) §1 Vision
paragraph itself is long and can lose 2-3 lines once the Situation paragraph
carries the argument (~0.05pp); (c) §4 governance paragraph's model-listing
compression (~0.04pp); (d) further §3 compression (~0.05pp). Final numbers
only knowable after drafting — the ledger gets trued up at each integration
session.

> **DECISION S-3 (Jon):** the strengthened cuts list — especially Team
> Qualifications compression — is now close to mandatory given the V2
> material. Accept, or propose alternates?

---

## 9. Open decisions (consolidated)

| ID | Question | Where |
|---|---|---|
| V-1 | How to refer to V2's release status in rendered text ("alpha" / "initial release" / no status) | §4 |
| V-2 | Include the one-sentence AI-agent/NSF-26-015 hook? §2 or §8? | §4 |
| S-1 | Situation paragraph sketch — register, length, five-area enumeration | §6 |
| S-2 | Citation appetite (eghbal only / +stat / +one more) | §7 |
| S-3 | Accept strengthened cuts list | §8 |
| S-4 | Letters-of-collaboration referencing convention (`#collab()` vs prose) | map §2 |
| S-5 | 2024 POSE award received? (decides Part 9 prior-support) | parked |

---

## 10. Execution plan once this spec is agreed

1. §1 first: Situation paragraph (as `#suggestion`), hook fix, demoted
   duplication, bolded-statement rewrite, enumeration cut — you adjudicate
   every block.
2. §2 second: V2/polyrepo paragraph + KPI table (needs `kpi-spec.md` filled).
3. §3-§6 callback + area-linking pass, one section per conversation.
4. §7 evaluation restructure (depends on upstream).
5. §8 one-sentence callback.
6. Page-ledger true-up + compliance sweep after every integration session.
