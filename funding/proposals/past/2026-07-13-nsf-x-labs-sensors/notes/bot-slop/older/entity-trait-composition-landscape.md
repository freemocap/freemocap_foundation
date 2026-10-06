# Managing Complexity with Entities, Traits, and Override Layers — a grounded landscape

*Advisory research briefing. Not proposal prose. Prepared for JSM as background for the NSF X-Labs empirical-capture thesis. Everything below is descriptive of what practitioners and researchers have actually built and argued — sources are linked inline.*

---

## The one idea, stated once

Across four otherwise-unrelated fields — artificial-intelligence knowledge representation, software-engineering doctrine, commercial game design, and industrial "operational" data platforms — the same architecture keeps getting reinvented to manage runaway complexity:

1. **Entities** — the things in the world (a creature, a soldier, a customer order, a captured behavioral episode).
2. **Composable properties / components / traits** — small, independent units of description or behavior that get *attached to* entities rather than *inherited by* them.
3. **Relations** — explicit typed links between entities (`part_of`, `is_a`, `controls`, `threatens`).
4. **A conflict-resolution / override layer** — an explicit, ordered rule system that decides what happens when two traits disagree, and that lets specific cases *defeat* general defaults (the "this cave animal has no eyes even though its ancestors did" move).

The recurring lesson is the punchline you already intuited: **inheritance feels right — especially for things with an obvious ancestral tree, like biology — but it does not scale, and mature systems replace it with composition plus an explicit override layer.** What follows is who discovered this, in what order, and how each field's version works.

---

## 1. The deep root: defaults, exceptions, and non-monotonic reasoning in AI

This is the oldest and most rigorous version of your "override" instinct, and it is worth leading with because it names the exact thing you were reaching for.

**Minsky's frames (1974).** Marvin Minsky's "A Framework for Representing Knowledge" proposed that we store stereotyped knowledge as *frames* — structured bundles of expected properties ("slots") with default values that can be overridden by specifics. A frame for "bird" carries the default `can-fly: yes`; a particular bird can override it. Minsky's paper is generally credited with *posing the challenge* that formal logic couldn't yet meet: real reasoning routinely retracts conclusions when new facts arrive ([Stanford Encyclopedia of Philosophy, Non-monotonic Logic](https://plato.stanford.edu/archives/fall2016/entries/logic-nonmonotonic/)).

**Non-monotonic logic (1980).** Classical logic is *monotonic*: adding facts never removes a conclusion. But common sense is non-monotonic. The canonical example — so standard it's a running joke in the field — is **Tweety**: told "Tweety is a bird," you conclude Tweety flies; told "Tweety is a penguin," you *retract* that conclusion. In 1980 three formalisms appeared to handle this: **Raymond Reiter's default logic**, **John McCarthy's circumscription**, and modal non-monotonic logic. Default logic is the direct formal ancestor of your idea: rules of the form "birds fly, *unless* known otherwise" ([SEP](https://plato.stanford.edu/archives/fall2016/entries/logic-nonmonotonic/); [Froidevaux & Mengin, *Default Logics: A Unified View*](https://www.lri.fr/~chris/articles_chris/FroidevauxMengin94_compint.pdf)).

**Inheritance systems with exceptions (Touretzky, 1986).** This is the single closest match to what you described. David Touretzky's *The Mathematics of Inheritance Systems* (Morgan Kaufmann/Pitman, 1986) formalized inheritance *networks* in which properties flow down an is-a hierarchy **but can be overridden by more specific nodes**. His key principle — **inferential distance** / **specificity ordering** — says that when a general default ("mammals bear live young") conflicts with a specific fact ("this is a platypus, which lays eggs"), the *more specific* statement wins ([AAAI-87, *More on Inheritance Hierarchies with Exceptions*](https://aaai.org/papers/00352-AAAI87-063-more-on-inheritance-hierarchies-with-exceptions-default-theories-and-inferential-distance/); [Touretzky, *The Mathematics of Inheritance Systems*](https://www.semanticscholar.org/paper/The-Mathematics-of-Inheritance-Systems-Touretzky/268c976be45f3946978d779553c41892777be6da)). Touretzky, Horty, and Thomason went on to catalogue the genuinely hard cases — "conflictors, preemptors, reinstaters, and zombies" — in *A Skeptic's Menagerie* ([Semantic Scholar](https://www.semanticscholar.org/paper/A-Skeptic's-Menagerie:-Conflictors,-Preemptors,-and-Touretzky-Thomason/e7b08b57871d6215685bbb12c7596b244d1b8efc/figure/3)). A sobering footnote for anyone tempted to build this: Touretzky's general inheritance problem was shown to be **NP-hard even for unambiguous acyclic networks** — exception-handling is expensive, which is *why* practical systems constrain it with a fixed, ordered layer scheme (see MTG's layers below).

**Description Logic, OWL, and the return of the exception problem.** The Semantic Web bet on **Description Logics** (the family underpinning **OWL**) precisely because they are decidable and *monotonic* — great for consistency-checking, but this means **standard OWL literally cannot say "birds fly, except penguins."** The monotonicity that makes DLs tractable also makes them unable to represent prototypes-with-exceptions ([ExceptionOWL, Univ. of Turin](http://www.di.unito.it/~pozzato/exceptionowl/); [Casini & Straccia, *Introducing Defeasibility into OWL Ontologies*](https://link.springer.com/chapter/10.1007/978-3-319-25010-6_27)). An entire research program — **defeasible description logics, "typicality" operators, rational closure** — exists to bolt Touretzky-style overriding back onto OWL ([*A non-monotonic DL for reasoning about typicality*](https://www.researchgate.net/publication/256660071_A_non-monotonic_Description_Logic_for_reasoning_about_typicality); [*Empowering OWL with Overriding Inheritance*](https://www.researchgate.net/publication/221250984_Empowering_OWL_with_Overriding_Inheritance_Conflict_Resolution_and_Non-monotonic_Reasoning)). The takeaway for your framing: **the "override" capability is not a nice-to-have; it is the feature that separates a toy taxonomy from a usable model of the real world, and it is technically the hardest part.**

---

## 2. The software-engineering doctrine: "favor composition over inheritance"

This is the field where the lesson became a *proverb*, and where the "phylogeny looks like inheritance but don't do it" trap is most explicitly named.

**The canonical statement (Gang of Four, 1994).** *Design Patterns* by Gamma, Helm, Johnson, and Vlissides prints the maxim **"Favor object composition over class inheritance"** in italics as a first-principles design rule ([Python Patterns Guide, *The Composition Over Inheritance Principle*](https://python-patterns.guide/gang-of-four/composition-over-inheritance/); [Grokipedia, *Composition over inheritance*](https://grokipedia.com/page/Composition_over_inheritance)).

**Why inheritance breaks — three named failure modes:**

- **The fragile base class problem.** A subclass silently depends on the *internal implementation* of its parent, not just its interface. Change the parent — reorder method calls, alter an internal helper — and distant subclasses break in ways the parent's author can't see. Inheritance is the tightest possible coupling between two classes ([Pandey, *Fragile Base Class Problem*](https://pratikpandey.substack.com/p/fragile-base-class-problem-composition)).
- **The Liskov Substitution Principle and the circle-ellipse / square-rectangle problem.** Barbara Liskov's principle says a subtype must be substitutable for its base type *behaviorally*. The famous counterexample: mathematically a square **is-a** rectangle, so you inherit `Square` from `Rectangle` — and immediately break, because `setWidth` on a square must also change its height, violating the rectangle's invariant that width and height are independent. The lesson is quoted everywhere: **inheritance should mean "is substitutable for," not "is a kind of"** ([Wikipedia, *Circle–ellipse problem*](https://en.wikipedia.org/wiki/Circle%E2%80%93ellipse_problem); [Wikipedia, *Liskov substitution principle*](https://en.wikipedia.org/wiki/Liskov_substitution_principle)). This is exactly your biology intuition inverted: the *cleaner* the "is-a" story looks, the more dangerous it is to encode as inheritance, because behavior doesn't respect the taxonomy.
- **The "gorilla/banana" problem.** Erlang's Joe Armstrong's widely-quoted critique of OOP inheritance: "You wanted a banana but what you got was a gorilla holding the banana and the entire jungle." Inheriting one behavior drags in the whole ancestral chain.

**The composition alternatives that won.** Modern languages institutionalized composition-shaped mechanisms specifically to avoid deep inheritance: **mixins**, **traits** (Scala, Rust, PHP — literally called "traits," small reusable capability bundles you compose onto a type), and interface-plus-delegation. The industry verdict is that you assemble a type from capabilities rather than deriving it from an ancestor.

---

## 3. Games as complexity-management laboratories

Games are where these ideas got stress-tested at enormous combinatorial scale under hard real-time budgets — and where the override layer got its most beautifully documented public implementation.

### 3a. Entity–Component–System (ECS): the composition doctrine as game architecture

- **Scott Bilas, *A Data-Driven Game Object System*, GDC 2002 (Dungeon Siege).** The founding public talk. Bilas described replacing a class hierarchy of game objects with objects **assembled from self-contained components** (rendering, physics, etc.), configured in data with **instancing and override support**. The scale is the point: **~7,300 unique object types and 100,000+ placed objects** in a continuously-streaming world — a hierarchy that would have been unmaintainable as an inheritance tree ([slides, PDF](https://www.gamedevs.org/uploads/data-driven-game-object-system.pdf); [Bilas' own copy](https://this.scottbilas.com/files/pubs/2002/gdc-san-jose/GDC%20Game%20Objects%20Proposal.pdf)). This is widely cited as one of the first clearly-described ECS implementations.
- **Timothy Ford, *Overwatch Gameplay Architecture and Netcode*, GDC 2017.** Blizzard credited ECS with letting them create huge gameplay variety across heroes: entities are bags of components; **Systems** operate on all entities that have a given component set. Their original OOP architecture "struggled to maintain tick budgets as hero complexity increased," driving a multi-year ECS refactor to hold a deterministic 60+ Hz simulation ([GDC Vault](https://www.gdcvault.com/play/1024001/-Overwatch-Gameplay-Architecture-and); [Game Developer coverage](https://www.gamedeveloper.com/design/video-how-i-overwatch-s-i-gameplay-architecture-creates-variety)).
- **Data-Oriented Design and why composition also wins on hardware (Mike Acton; Unity DOTS).** ECS wasn't only about maintainability. Storing each component type in its own contiguous array (structure-of-arrays) is **cache-friendly** — sequential iteration over one component type maps onto CPU cache lines and vectorizes. Mike Acton's data-oriented-design argument (CppCon 2014) and Unity's **DOTS/ECS** productized this: composition is faster *and* more flexible than the inheritance/object-graph layout ([Wikipedia, *Entity component system*](https://en.wikipedia.org/wiki/Entity_component_system); [ECS for Unity](https://unity.com/ecs); [Hexops, *Let's build an ECS*](https://devlog.hexops.org/2022/lets-build-ecs-part-1/)). So games converged on composition from *two* independent pressures — combinatorial design complexity and memory-hardware reality.

### 3b. Magic: The Gathering — the best public example of an override layer

MTG is worth studying closely because it is a **published, versioned, legally-precise rule system** for resolving conflicts among thousands of composable traits — exactly the "entity-property-trait with overrides" engine you're describing, built for a game with 25,000+ unique cards that must all interact coherently.

- **Types and subtypes are a composable trait vocabulary.** A card has card types (creature, artifact) and subtypes (Human, Wizard, Goblin) — attached traits, not a rigid class tree. Rules and cards then key off traits ("all Goblins get +1/+1"), just like your "all chordates have a spine" ([MTG Comprehensive Rules PDF](https://media.wizards.com/images/magic/tcg/resources/rules/MagicCompRules_21031101.pdf)).
- **Characteristic-Defining Abilities (CDAs)** let a card *define its own trait* from game state (e.g., a creature whose power equals the number of card types in your graveyard). This is a trait computed from context rather than a static value ([Draftsim, *MTG Layers*](https://draftsim.com/mtg-layers/)).
- **The Layer System (Rule 613) is the crown jewel.** When multiple continuous effects try to modify the same object, MTG resolves them in a **fixed order of seven layers**: (1) copy, (2) control-changing, (3) text-changing, (4) type-changing, (5) color-changing, (6) ability adding/removing, (7) power/toughness — with layer 7 further split into sublayers 7a–7e (CDAs → set P/T → +/- modifiers → counters → switch). **Within a layer, ties are broken by timestamp order, and by an explicit dependency rule when one effect changes what another effect does.** This is a production-grade, publicly-documented answer to Touretzky's conflict-resolution problem — it fixes the *order of application* so that overrides are deterministic and reproducible ([MTG Wiki, *Layer*](https://mtg.wiki/page/Layer); [magicjudges.org, *Interaction of Continuous Effects*](https://blogs.magicjudges.org/searegion/2019/03/25/interaction-of-continuous-effects-layers-1-6/); [Rule 613 text](https://ancestral.vision/spells-abilities-and-effects/interaction-of-continuous-effects.html)).

The design insight to steal: **you don't resolve trait conflicts ad hoc; you define a fixed, ordered pipeline of *kinds* of modification, and everything else (timestamps, dependencies) is a tie-breaker within that pipeline.** That is how you make "override" tractable despite Touretzky's NP-hardness result — you constrain the shape of allowed overrides.

*(Adjacent tabletop lineage worth a nod: GURPS and D&D model characters as compositions of "advantages/disadvantages," feats, and traits rather than fixed classes — the same move away from rigid archetypes toward composable modifiers.)*

---

## 4. Operational ontologies in industry: Palantir and Anduril

This is the contemporary, commercially-validated version of the idea, and it's the one your strategic briefing already invokes.

**Palantir Foundry's Ontology.** Palantir's central abstraction is an **Ontology** that sits on top of integrated data and maps it to real-world things. It has two halves that line up exactly with the schema above:

- **Semantic layer** — **object types** (an entity or event), **properties** (an object type's characteristics), and **link types** (typed relationships between object types). This is entity-property-relation, verbatim.
- **Kinetic layer** — **action types** (defined, permissioned transactions that modify objects/properties/links) and **functions** (logic operating over objects). Palantir explicitly frames the whole thing as a "Language, Engine, and Toolchain" ([Palantir docs, *Ontology overview*](https://www.palantir.com/docs/foundry/ontology/overview); [*Core concepts*](https://www.palantir.com/docs/foundry/ontology/core-concepts); [*The Ontology system*](https://www.palantir.com/docs/foundry/architecture-center/ontology-system)).

**Anduril Lattice's entity model.** Lattice fuses thousands of heterogeneous sensors into a single **common operating picture** built from a shared **entity** data structure — assets, tracks, zones, threats, effects — with a task/action system layered on top (mission assignment, constraints, rules of engagement). Entities are published, tracked, and acted on through a common API. Notably, Anduril's own docs concede that **"ontology alignment remains a work in progress"** as they integrate heterogeneous systems — i.e., the hard part is the shared vocabulary, not the plumbing ([Anduril, *Entities overview*](https://developer.anduril.com/guides/entities/overview); [Lattice SDK entity manager docs](https://buf.build/anduril/lattice-sdk/docs/main:anduril.entitymanager.v1)).

The shared thesis of both companies — and the reason your briefing reaches for them — is that **the durable, defensible asset is not the sensor or the app; it is the semantic layer** (the entity/property/relation model plus the action layer) that turns heterogeneous streams into a unified, queryable, actionable record.

---

## 5. The biology bridge: why phylogeny is the *trap*, not the model

You flagged this yourself, and it's the sharpest part of the whole picture: biology is the domain where inheritance looks *most* obviously correct, and it is precisely where the naïve version fails.

- **Essentialism/typology vs. cladistics.** The old "type specimen / essential defining traits" view descends from Aristotle and Plato — every member of a kind shares a fixed essence. Modern systematics rejects this: **cladistics** groups organisms by *shared ancestry* (clades) rather than by essential trait checklists, and the field explicitly argues that essentialist/typological thinking is *incompatible* with evolution ([Cambridge, *Essentialism and Typology*](https://www.cambridge.org/core/books/abs/cladistics/essentialism-and-typology/A39700BC693A9A4E3AB0D74EED08D9D2); [Wikipedia, *Cladistics*](https://en.wikipedia.org/wiki/Cladistics); [PubMed, *Essentialism and typological thinking in biological systematics*](https://pubmed.ncbi.nlm.nih.gov/12723368/)). So even the ur-example of a "natural" inheritance hierarchy resists being modeled as a strict property-inheritance tree.
- **Secondary loss — your exact example, in the wild.** *Astyanax mexicanus* is one species with a sighted surface form and blind cave forms. Cave embryos **begin** to build eyes (an eye primordium forms and grows), then it **arrests, degenerates via lens apoptosis, and is overgrown** — driven by genes like *cbsa* / *shh* signaling. Crucially, this eye loss **evolved convergently and repeatedly** in independent cave populations ([*Regressive Evolution in Astyanax Cavefish*, PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC3594788/); [*Repeated evolution of eye loss*, Wiley](https://onlinelibrary.wiley.com/doi/abs/10.1002/jez.b.22977)). This is the textbook "the entity inherits `has-eyes` from its clade, but *this* population overrides it to `has-eyes: false`" — a real-world Touretzky exception, and even the developmental program shows the override happening (the default is expressed, then defeated).
- **Biology's own computational solution is composition.** The **OBO Foundry / Gene Ontology** — the biomedical world's largest working ontology effort — does *not* try to jam everything into one inheritance tree. It uses a small set of **orthogonal ontologies** and a shared **Relation Ontology** (`is_a`, `part_of`, etc.) to **compose** complex descriptions from atomic terms — e.g., representing "increased blood glucose" by composing a PATO quality term with an anatomy term and a chemical term, each from a different ontology ([*The OBO Foundry*, PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC2814061/); [OBO Foundry, Wikipedia](https://en.wikipedia.org/wiki/OBO_Foundry)). This is composition-over-inheritance applied to biological knowledge itself, by biologists, at scale.

**The moral:** when there's an obvious inheritance structure, that's the strongest signal to be careful, not the license to encode it as inheritance. The tree is a good *narrative* and a bad *data model*, because real members constantly violate their category's defaults.

---

## 6. The shape in the fog, named

Putting the four fields side by side, the isomorphism is exact:

| | Entities | Composable units | Relations | Override / conflict layer |
|---|---|---|---|---|
| **KR / AI** | individuals & concepts | properties/slots | is-a, links in semantic net | inferential distance, default logic, defeasible DL |
| **Software** | objects | components/traits/mixins | interfaces, delegation | LSP; explicit precedence over inheritance |
| **Games** | game objects | components (ECS); card types/subtypes | targeting, dependencies | MTG's 7-layer + timestamp + dependency system |
| **Industry** | Foundry objects / Lattice entities | properties | link types / entity relations | action layer, permissions, resolution rules |
| **Biology** | organisms, taxa | traits/phenotype terms | is_a, part_of (Relation Ontology) | secondary loss = defeated default (cavefish eyes) |

Three claims that every one of these fields independently converged on:

1. **Decompose by *has-a*, not *is-a*.** Attach capabilities to entities; don't derive entities from ancestors.
2. **Make relations first-class and explicit.** The value is in the typed links between entities as much as in the entities.
3. **The override layer is where the real engineering is.** Naïve inheritance hides conflict resolution inside the class graph, where it's implicit and fragile. Mature systems (Touretzky, MTG layers, Foundry actions) pull conflict resolution *out* into an explicit, ordered, inspectable layer — and accept that this is the hard, expensive, defensible part.

---

## 7. Relevance to the X-Labs proposal (advisory)

Tying it back, briefly, since that's why this landscape matters to you.

The proposal's thesis — FreeMoCap as an instrument for the "complete empirical capture of agent–environment interaction," a *calibrated, synchronized, semantically-unified record across modalities and dimensional domains* — is, in data-model terms, **a call for exactly this architecture**: captured behavioral episodes as **entities**, each modality (kinematics, gaze, neural, force, physiology) as a **composable trait/component** rather than a bespoke subclass, cross-modality and cross-scale correspondences as first-class **relations**, and an explicit **layer** that reconciles heterogeneous, differently-sampled, sometimes-conflicting streams into one queryable record. That is precisely the Palantir/Anduril "semantic layer over heterogeneous sensors" move, transplanted from the battlefield/enterprise to the behavioral-neuroscience lab. It's also why the biology framing is an asset *and* a hazard: the phylogenetic/organismal tree is rhetorically powerful, but the honest version of the story is that the empirical record must be modeled by composition-with-overrides, because real organisms (cavefish, and every "we expected X but measured not-X" result) violate their category defaults — which is the whole scientific point of *measuring* rather than *assuming*.

**One strategic caution consistent with the solicitation.** Everything in Sections 1–6 is, on its face, a *data-model / software-architecture* argument. The solicitation's sharpest exclusion is "computational or software solutions without practical integration into an instrumentation system." So this material should inform the *internal design rationale* and the "why this is a new class of instrument" framing — but in the written proposal it must stay anchored to **measurement, calibration, synchronization, and the physical capture apparatus**, with the ontology/override layer presented as *how the instrument makes its measurements commensurable*, not as middleware in its own right. The entity-trait-override idea is the instrument's measurement model, analogous to the coordinate frame and unit system of any scientific instrument — that's the frame that keeps it on the right side of the exclusion.

---

## Sources

Knowledge representation & non-monotonic logic:
- [Stanford Encyclopedia of Philosophy — Non-monotonic Logic](https://plato.stanford.edu/archives/fall2016/entries/logic-nonmonotonic/)
- [Touretzky et al., *More on Inheritance Hierarchies with Exceptions* (AAAI-87)](https://aaai.org/papers/00352-AAAI87-063-more-on-inheritance-hierarchies-with-exceptions-default-theories-and-inferential-distance/)
- [Touretzky, *The Mathematics of Inheritance Systems*](https://www.semanticscholar.org/paper/The-Mathematics-of-Inheritance-Systems-Touretzky/268c976be45f3946978d779553c41892777be6da)
- [*A Skeptic's Menagerie* (Touretzky & Thomason)](https://www.semanticscholar.org/paper/A-Skeptic's-Menagerie:-Conflictors,-Preemptors,-and-Touretzky-Thomason/e7b08b57871d6215685bbb12c7596b244d1b8efc/figure/3)
- [Froidevaux & Mengin, *Default Logics: A Unified View*](https://www.lri.fr/~chris/articles_chris/FroidevauxMengin94_compint.pdf)
- [ExceptionOWL project](http://www.di.unito.it/~pozzato/exceptionowl/) · [Casini & Straccia, *Introducing Defeasibility into OWL Ontologies*](https://link.springer.com/chapter/10.1007/978-3-319-25010-6_27) · [*A non-monotonic DL for typicality*](https://www.researchgate.net/publication/256660071_A_non-monotonic_Description_Logic_for_reasoning_about_typicality) · [*Empowering OWL with Overriding Inheritance*](https://www.researchgate.net/publication/221250984_Empowering_OWL_with_Overriding_Inheritance_Conflict_Resolution_and_Non-monotonic_Reasoning)

Software engineering doctrine:
- [Python Patterns Guide — *The Composition Over Inheritance Principle*](https://python-patterns.guide/gang-of-four/composition-over-inheritance/)
- [Grokipedia — *Composition over inheritance*](https://grokipedia.com/page/Composition_over_inheritance)
- [Pandey — *Fragile Base Class Problem*](https://pratikpandey.substack.com/p/fragile-base-class-problem-composition)
- [Wikipedia — *Circle–ellipse problem*](https://en.wikipedia.org/wiki/Circle%E2%80%93ellipse_problem) · [Wikipedia — *Liskov substitution principle*](https://en.wikipedia.org/wiki/Liskov_substitution_principle)

Games:
- [Bilas, *A Data-Driven Game Object System*, GDC 2002 (slides PDF)](https://www.gamedevs.org/uploads/data-driven-game-object-system.pdf) · [author copy](https://this.scottbilas.com/files/pubs/2002/gdc-san-jose/GDC%20Game%20Objects%20Proposal.pdf)
- [Ford, *Overwatch Gameplay Architecture and Netcode*, GDC (GDC Vault)](https://www.gdcvault.com/play/1024001/-Overwatch-Gameplay-Architecture-and) · [Game Developer coverage](https://www.gamedeveloper.com/design/video-how-i-overwatch-s-i-gameplay-architecture-creates-variety)
- [Wikipedia — *Entity component system*](https://en.wikipedia.org/wiki/Entity_component_system) · [Unity ECS/DOTS](https://unity.com/ecs) · [Hexops — *Let's build an ECS*](https://devlog.hexops.org/2022/lets-build-ecs-part-1/)
- [MTG Comprehensive Rules (PDF)](https://media.wizards.com/images/magic/tcg/resources/rules/MagicCompRules_21031101.pdf) · [MTG Wiki — *Layer*](https://mtg.wiki/page/Layer) · [magicjudges.org — *Interaction of Continuous Effects*](https://blogs.magicjudges.org/searegion/2019/03/25/interaction-of-continuous-effects-layers-1-6/) · [Rule 613 text](https://ancestral.vision/spells-abilities-and-effects/interaction-of-continuous-effects.html) · [Draftsim — *MTG Layers*](https://draftsim.com/mtg-layers/)

Operational ontologies:
- [Palantir docs — *Ontology overview*](https://www.palantir.com/docs/foundry/ontology/overview) · [*Core concepts*](https://www.palantir.com/docs/foundry/ontology/core-concepts) · [*The Ontology system*](https://www.palantir.com/docs/foundry/architecture-center/ontology-system)
- [Anduril — *Entities overview*](https://developer.anduril.com/guides/entities/overview) · [Lattice SDK entity manager docs](https://buf.build/anduril/lattice-sdk/docs/main:anduril.entitymanager.v1)

Biology:
- [Cambridge — *Essentialism and Typology* (in *Cladistics*)](https://www.cambridge.org/core/books/abs/cladistics/essentialism-and-typology/A39700BC693A9A4E3AB0D74EED08D9D2) · [Wikipedia — *Cladistics*](https://en.wikipedia.org/wiki/Cladistics) · [PubMed — *Essentialism and typological thinking*](https://pubmed.ncbi.nlm.nih.gov/12723368/)
- [*Regressive Evolution in Astyanax Cavefish* (PMC)](https://pmc.ncbi.nlm.nih.gov/articles/PMC3594788/) · [*Repeated evolution of eye loss* (Wiley)](https://onlinelibrary.wiley.com/doi/abs/10.1002/jez.b.22977)
- [*The OBO Foundry* (PMC)](https://pmc.ncbi.nlm.nih.gov/articles/PMC2814061/) · [OBO Foundry (Wikipedia)](https://en.wikipedia.org/wiki/OBO_Foundry)
