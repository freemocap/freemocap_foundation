# Build-to-Spec vs. Shared Protocols — OBO, LSL, and the "don't inherit the standard" trap

*Advisory research briefing (bot slop by definition). For JSM. Follows up on `entity-trait-composition-landscape.md`. Descriptive of what people have actually built and argued; sources inline, BibTeX block at the bottom.*

---

## TL;DR

There is a **second trap** that rhymes with the phylogeny→inheritance trap from the last doc:

> **The "adopt the shared standard" trap.** When a mature, general-purpose interchange standard exists (OWL, LSL, HL7, CORBA, RDF), it feels obviously correct to build *on top of* it. But adopting a general standard means **inheriting its entire model of the world into the core of your system** — its data model, its clock assumptions, its philosophical commitments, its failure modes. The organizations that win at the hard edge (Palantir vs. OWL; Unix/IP vs. the "right thing"; ARPANET's narrow waist) repeatedly do the *controversial* thing: **build the core exactly to their own spec, keep it minimal, and add compatibility with the shared standard afterward, as an adapter, driven by actual demand.**

The parallel to inheritance is exact: a shared protocol is the *interface* equivalent of a base class. Building your core to conform to it is a `SkellyCam extends LSL` relationship — you get the fragile-base-class problem at the level of a whole ecosystem. Building to spec and converting later is composition: `SkellyCam` owns its own timestamp model and *has-an* optional LSL exporter.

This doc gives you (1) the OBO/GO story you asked about, (2) LSL as the specific standard in your path, and (3) the named intellectual lineage for "build to spec, standardize later" so you can make the argument with citations instead of vibes.

---

## 1. OBO — what it is, where it came from, whether it's used, and why it's clunky

### What it is

**OBO = Open Biological and Biomedical Ontologies.** It's two things bolted together:

1. **The Gene Ontology (GO)** and its siblings — controlled, structured vocabularies that describe biology (gene functions, cell types, anatomy, phenotypes, chemicals) as terms connected by a small set of typed relations (`is_a`, `part_of`, `regulates`, …). This is the composition-over-inheritance model from the last doc, applied to biology by biologists.
2. **The OBO Foundry** — a *governance layer* and a set of **shared design principles** (openness, orthogonality, a common relation set, a shared upper ontology) that a family of ~hundreds of ontologies agree to follow so they interoperate ([Smith et al., *The OBO Foundry*, Nature Biotechnology 2007](https://www.nature.com/articles/nbt1346); [OBO Foundry, Wikipedia](https://en.wikipedia.org/wiki/OBO_Foundry)).

### History (the short version)

- **1998–2000:** The Gene Ontology is founded by the model-organism database communities (fly, yeast, mouse) to stop everyone inventing incompatible gene-function vocabularies. The landmark paper is [Ashburner et al., *Gene Ontology: tool for the unification of biology*, Nature Genetics 2000](https://pubmed.ncbi.nlm.nih.gov/17989687/) — one of the most-cited papers in all of biology.
- **~2001:** "OBO" is created as an umbrella/library for open bio-ontologies, inspired directly by GO's success.
- **2007:** [Barry Smith, Michael Ashburner, and ~two dozen co-authors](https://www.nature.com/articles/nbt1346) publish the **OBO Foundry** paper in *Nature Biotechnology*, turning a loose library into a principled federation with quality criteria and a designated **upper ontology, Basic Formal Ontology (BFO)**.

### Is it widely used?

Yes — it is arguably the most successful scientific-ontology effort in existence. GO annotations are ubiquitous across genomics; **BFO is used in 350+ ontology projects worldwide** and became an ISO/IEC standard (21838-2) ([BFO overview, ScienceDirect](https://www.sciencedirect.com/topics/computer-science/basic-formal-ontology); [BFO GitHub](https://github.com/bfo-ontology/bfo)). For biomedical data integration it is close to a *lingua franca*.

### Why it feels "almost perfect but clunky under the hood" (your LSL instinct, exactly)

Your read is the standard critique. Three sources of clunk:

1. **Philosophical baggage — realism and BFO.** OBO Foundry mandates alignment to BFO, which is **"stridently realist"**: it commits you to a specific metaphysics (continuants vs. occurrents, dependent vs. independent entities, "universals" that exist mind-independently). That's powerful for cross-domain integration but imposes a heavy conceptual tax on curators who just want to tag data. **Victor Maojo and colleagues (2011)** and **Stefan Schulz** have published sustained criticisms of BFO's realism and its practical cost in medical terminology work ([BFO Meets Critics, NCOR/Buffalo](https://ncorwiki.buffalo.edu/index.php/BFO_Meets_Critics); [Barry Smith, Wikipedia](https://en.wikipedia.org/wiki/Barry_Smith_(ontologist))). And people keep finding BFO's top-level categories *insufficient* for real biology, requiring extensions ([Vogt, PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3253816/)).
2. **Format schism — OBO flat-file vs. OWL.** OBO grew its *own* serialization format (the human-readable `.obo` flat file) before mapping onto OWL. There are now two representations that must be kept in sync via tooling, plus the classic tension that the expressive standard (OWL) is monotonic and can't natively express the defaults-with-exceptions that biology is full of (the penguin/cavefish problem from the last doc). This is exactly the "we adopted a general standard and now carry its impedance mismatch forever" cost.
3. **Curation overhead.** The Foundry's *strength* — orthogonality, shared relations, review — is also friction: adding a term can mean coordinating across multiple ontologies and satisfying reviewers. Great for a global public good; heavy for a fast-moving instrument project.

**The OBO lesson for you:** OBO is what "do it right, as a shared standard, governed" looks like when it *works* — and it took ~25 years, dozens of institutions, an ISO standard, and a resident philosopher (Smith) to get there. That is the cost of building a genuine shared protocol. You do not have that budget, and SkellyCam is not trying to be a global public good at the schema layer — it's trying to be an *instrument*.

---

## 2. LSL — the specific standard sitting in SkellyCam's path

**Lab Streaming Layer (LSL)** is the de facto standard for synchronized multimodal recording in human neuroscience: per-sample timestamps, clock synchronization across a LAN using the **NTP clock-filter algorithm**, jitter/offset compensation, and a companion file format, **XDF**. It got its formal reference paper only recently ([Kothe et al., *The Lab Streaming Layer for Synchronized Multimodal Recording*, Imaging Neuroscience / bioRxiv 2024](https://www.biorxiv.org/content/10.1101/2024.02.13.580071v1.full)). It genuinely delivers sub-millisecond sync on commodity hardware, which is why it's everywhere in EEG/BCI labs.

**Why "almost perfect but clunky" applies here too — and why it's a base class you don't want to inherit:**

- **It bakes in a clock model and a transport.** LSL's whole value proposition is *its* NTP-derived clock-sync-over-LAN model and *its* network layer. Adopt LSL as your core timing substrate and you've inherited those assumptions — including the ones that don't fit a camera-array instrument whose synchronization needs may be hardware-triggered, frame-clock-based, or otherwise *tighter and more specific* than "software timestamps reconciled over a LAN."
- **XDF encodes the mess of reality.** The authors themselves note XDF must faithfully record ugly real events — a device disappearing and reappearing after a battery swap, per-stream on-device delays that must be measured and declared. That complexity is *correct* for a general recorder and *overhead* for an instrument whose timing model you want to be provably exact.
- **On-device delay modeling is a shared-standard compromise.** LSL models per-stream delays as constant between setup changes — a reasonable general assumption, but a *general* one. Your instrument may be able to do better because you control the capture path.

None of this is a knock on LSL — it's the right tool for its job (heterogeneous, vendor-mixed, human-lab acquisition). It's an argument about **where the boundary goes**: LSL belongs on the *outside* of SkellyCam as an export/import target, not on the *inside* as the thing SkellyCam's timestamps are defined in terms of.

---

## 3. The named lineage for "build to spec, standardize later"

This is where you get citable ammunition. The move you're describing — reject the general standard for the core, build minimal-and-exact, add interop afterward — is not a hunch; it's a recurring, well-argued position.

### 3a. Palantir explicitly eschewing OWL/RDF — your headline precedent

Palantir did not build its Ontology on the semantic-web stack (RDF triple stores, OWL reasoners). It built a **proprietary "executable ontology"** with an opinionated object/property/link *plus action* model, deliberately optimized for **operational decision-making and governed side-effects** rather than the logical-inference-over-open-knowledge use case that RDF/OWL was designed for. Commentators frame this precisely as a *deliberate rejection* of the standards: "a deliberate choice to build beyond traditional semantic web standards toward … a more operationally-focused system," and note that unlike Stardog/GraphDB/Neo4j, Palantir "[doesn't] ship an opinionated action-type abstraction" because they built the whole thing to their own spec ([Pebblous, *What Is Palantir Ontology?*](https://blog.pebblous.ai/project/CURK/ontology/palantir-vs-classic-ontology/en/); [PuppyGraph, *Palantir Ontology*](https://www.puppygraph.com/blog/palantir-ontology)). The cost is real — their ontology is "closed and tool-dependent" — but they judged that owning the model beat inheriting OWL's. Anduril's Lattice docs make the complementary admission: even *they* find "ontology alignment remains a work in progress" when forced to interoperate with heterogeneous external systems — i.e., the interop layer is the hard, deferred part, exactly where you'd expect it.

### 3b. "Worse is Better" (Richard Gabriel, 1989/1991)

Gabriel's famous essay contrasts the **MIT/"do the right thing"** philosophy (interface correctness and completeness first, even if the implementation is complex) with the **New Jersey / "worse is better"** philosophy (implementation simplicity first; ship the small correct core, let it spread, generalize later). His thesis: the simple-core design ships first, spreads, and wins, while the "right thing" is still being specified ([*The Rise of "Worse is Better"*, Gabriel](https://web.stanford.edu/class/cs240/old/sp2014/readings/worse-is-better.html); [Worse is better, Wikipedia](https://en.wikipedia.org/wiki/Worse_is_better)). Unix and C are his examples. **This is the direct philosophical license for "build SkellyCam's timestamp system to be exactly and only what it needs, ship it, and don't gate it on conforming to a general standard."** Simplicity of the implementation beats completeness of the interface.

### 3c. The hourglass / narrow-waist model (Internet architecture)

The Internet scaled because it put a **thin, minimal spanning layer (IP)** at the waist: many technologies below, many applications above, one small dumb interface in the middle. Constraining the waist to be *simple and general* is what made both layers independently evolvable — Micah Beck calls this the **"Deployment Scalability Trade-off"**: simplicity and generality at the waist beat rich, featureful designs on real-world adoption ([Beck, *On the Hourglass Model*; Akhshabi & Dovrolis, SIGCOMM 2011](https://www.ietf.org/slides/slides-itatws-the-evolution-of-layered-protocol-stacks-leads-to-an-hourglass-shaped-architecture-00.pdf); [Hourglass model, Wikipedia](https://en.wikipedia.org/wiki/Hourglass_model)). The design guidance for you: **if there's going to be a shared interface, make it a thin waist you control, not a fat standard you import.** A minimal, exact SkellyCam timestamp representation *is* a narrow waist; LSL/XDF is a fat waist that ossifies your core.

### 3d. Postel's robustness principle + the Adapter pattern

Jon Postel's TCP spec (RFC 793, 1981): *"be conservative in what you send, be liberal in what you accept."* Read architecturally: your **core** should be strict and exactly-specified (conservative); **compatibility with the outside world** lives in liberal adapters at the boundary ([RFC 793](https://www.rfc-editor.org/rfc/rfc793)). This is literally the **Adapter design pattern** — a boundary object that converts your exact internal interface to a foreign one without contaminating the core ([Adapter pattern, GeeksforGeeks](https://www.geeksforgeeks.org/system-design/adapter-pattern/)). "Build SkellyCam's timestamps exactly, add an LSL/XDF exporter later" is textbook conservative-core + liberal-adapter.

### 3e. Premature standardization is a recognized anti-pattern

The interoperability community's own framing: standardize *after* you have "tiny pockets of very focused interoperability," not before; standardization should proceed "in stages and in order, starting in a single ecosystem and single stack" ([Continuum Loop, *Premature Standardization & Interoperability*](https://www.continuumloop.com/premature-standardization-interoperability/)). Building to a shared standard before you understand your own requirements freezes the wrong abstraction. (Folklore version: xkcd 927 — "there are 15 competing standards; let's make one to unify them; now there are 16.")

---

## 4. Synthesis — the two traps, side by side

| | Trap 1 (last doc) | Trap 2 (this doc) |
|---|---|---|
| Seductive because… | there's an obvious ancestral tree (phylogeny) | there's an obvious mature standard (OWL, LSL) |
| The tempting move | model it as **inheritance** | build your core **on top of the standard** |
| What you actually inherit | the whole fragile ancestor chain, implicit conflicts | the standard's data model, clock/transport assumptions, philosophy, failure modes |
| Why it bites | real members violate category defaults (cavefish) | your instrument's real needs violate the standard's general assumptions |
| The mature move | **composition + explicit override layer** | **build-to-spec core + adapters, standardize later, driven by use** |
| Precedent | ECS, MTG layers, OBO's own composition of terms | Palantir vs. OWL; Unix/IP narrow waist; worse-is-better |

Both traps are the same underlying error: **accepting a general structure that looks authoritative, in exchange for surrendering control of your core model.** Composition-over-inheritance and build-to-spec-over-shared-protocol are the same principle at two different altitudes.

## 5. Application to SkellyCam (advisory, your call)

The defensible position, well-supported by the above:

- **Make SkellyCam's timestamp/synchronization model exactly what a multi-camera scientific instrument needs — no more, no less.** Own the clock model. Don't define your timing in terms of LSL's NTP-over-LAN assumptions if your capture path can be tighter/more exact. This is worse-is-better + narrow-waist + build-to-spec.
- **Treat LSL/XDF (and OBO-style semantic tagging, and anything else) as boundary adapters** added when a real user needs the bridge — conservative core, liberal edges (Postel + Adapter).
- **Say so explicitly, and cite it.** "We deliberately do not build on \[standard X] in the core; following the same reasoning Palantir used in rejecting OWL for an operational ontology, and the narrow-waist principle of Internet architecture, we specify a minimal exact internal representation and provide \[standard X] interoperability as an export layer." That reframes a *lack* of standard-compliance from a weakness into a defended architectural decision.

**One proposal-safety note (same as last doc):** this is, on its face, a software-architecture argument, and the solicitation excludes "computational or software solutions without practical integration into an instrumentation system." So in the written proposal, frame the timestamp system as the **metrological core of the instrument** — the thing that makes measurements across cameras/modalities *commensurable and trustworthy* — analogous to how a scientific instrument defines its own calibrated reference frame rather than outsourcing it. The build-to-spec argument then reads as "we engineered the instrument's measurement standard to be exact," not "we wrote middleware."

---

```bibtex
@article{smith2007obofoundry,
  author  = {Smith, Barry and Ashburner, Michael and Rosse, Cornelius and Bard, Jonathan and Bug, William and Ceusters, Werner and others},
  title   = {The {OBO} {Foundry}: coordinated evolution of ontologies to support biomedical data integration},
  journal = {Nature Biotechnology},
  volume  = {25},
  number  = {11},
  pages   = {1251--1255},
  year    = {2007},
  doi     = {10.1038/nbt1346},
  url     = {https://www.nature.com/articles/nbt1346}
}

@article{ashburner2000geneontology,
  author  = {Ashburner, Michael and Ball, Catherine A. and Blake, Judith A. and Botstein, David and Butler, Heather and Cherry, J. Michael and others},
  title   = {Gene {Ontology}: tool for the unification of biology},
  journal = {Nature Genetics},
  volume  = {25},
  number  = {1},
  pages   = {25--29},
  year    = {2000},
  doi     = {10.1038/75556}
}

@misc{bfo_iso21838,
  author       = {Smith, Barry and others},
  title        = {Basic Formal Ontology ({BFO}) 2.0 / ISO/IEC 21838-2},
  howpublished = {\url{https://github.com/bfo-ontology/bfo}},
  year         = {2020},
  note         = {Upper ontology mandated by the OBO Foundry; adopted in 350+ projects}
}

@article{maojo2011bfocritique,
  author  = {Maojo, Victor and Crespo, Jose and Garc{\'i}a-Remesal, Miguel and de la Iglesia, Diana and Perez-Rey, David and Kulikowski, Casimir},
  title   = {Biomedical ontologies: toward scientific debate},
  journal = {Methods of Information in Medicine},
  volume  = {50},
  number  = {3},
  pages   = {203--216},
  year    = {2011}
}

@article{kothe2024lsl,
  author  = {Kothe, Christian and Shirazi, Seyed Yahya and Stenner, Tristan and Medine, David and Boulay, Chadwick and Grivich, Matthew and others},
  title   = {The Lab Streaming Layer for Synchronized Multimodal Recording},
  journal = {Imaging Neuroscience},
  year    = {2024},
  doi     = {10.1101/2024.02.13.580071},
  url     = {https://www.biorxiv.org/content/10.1101/2024.02.13.580071v1.full}
}

@misc{gabriel1991worseisbetter,
  author       = {Gabriel, Richard P.},
  title        = {The Rise of ``Worse is Better'' (in {\it Lisp: Good News, Bad News, How to Win Big})},
  year         = {1991},
  howpublished = {\url{https://www.dreamsongs.com/RiseOfWorseIsBetter.html}}
}

@inproceedings{akhshabi2011hourglass,
  author    = {Akhshabi, Saamer and Dovrolis, Constantine},
  title     = {The evolution of layered protocol stacks leads to an hourglass-shaped architecture},
  booktitle = {Proceedings of ACM SIGCOMM},
  year      = {2011},
  doi       = {10.1145/2018436.2018460}
}

@article{beck2019hourglass,
  author  = {Beck, Micah},
  title   = {On the hourglass model},
  journal = {Communications of the ACM},
  volume  = {62},
  number  = {7},
  pages   = {48--57},
  year    = {2019},
  doi     = {10.1145/3274770}
}

@techreport{postel1981tcp,
  author      = {Postel, Jon},
  title       = {Transmission Control Protocol},
  institution = {IETF},
  type        = {RFC},
  number      = {793},
  year        = {1981},
  note        = {Robustness principle: ``be conservative in what you do, be liberal in what you accept''},
  url         = {https://www.rfc-editor.org/rfc/rfc793}
}

@misc{palantir_ontology_docs,
  author       = {{Palantir Technologies}},
  title        = {Ontology: Overview, Core Concepts, and the Ontology System},
  howpublished = {\url{https://www.palantir.com/docs/foundry/ontology/overview}},
  year         = {2024},
  note         = {Executable ontology; object/property/link (semantic) + action/function (kinetic)}
}

@misc{gof1994,
  author    = {Gamma, Erich and Helm, Richard and Johnson, Ralph and Vlissides, John},
  title     = {Design Patterns: Elements of Reusable Object-Oriented Software},
  publisher = {Addison-Wesley},
  year      = {1994},
  note      = {Adapter pattern; ``favor object composition over class inheritance''}
}
```
