# From Operational Ontologies to Empirical Capture
### A Complete Strategic and Technical Briefing

*A consolidated reference document covering: the software architecture and philosophy of Palantir and Anduril; the digital-twin and knowledge-representation landscape they descend from; the geopolitical moment; the vision of a new scientific instrument for complete empirical capture of agent–environment interaction; the NSF X-Labs opportunity and its hazards; the fragmented state of multimodal behavioral/neural measurement science; the ontology question; the competitive terrain; and the structural funding argument that ties it all together.*

---

## How to read this document

This is a synthesis of an extended strategic conversation. It is organized so that the **technological foundation** (Part I) and the **vision** (Part II) come first, followed by the **funding target** (Part III), the **scientific landscape** the vision must enter (Parts IV–VI), the **structural argument** for why the work is fundable only through an unusual mechanism (Part VII), and finally a **strategic synthesis** (Part VIII) and a **reference glossary** (Appendix). Each part is self-contained enough to be lifted into proposal drafting.

The central thesis that threads through everything: **Defense and enterprise software built an operational semantic layer — a calibrated, typed, fused, action-capable model of the world that sits between raw data streams and archived files — and it unlocked transformative capability. Empirical science of human behavior has every adjacent layer (transport, archive, physics) but conspicuously lacks this middle one. Building it is not a software convenience; it is a new class of measurement instrument.**

---

# PART I — THE ARCHITECTURAL PARADIGM: PALANTIR, ANDURIL, AND THE OPERATIONAL SEMANTIC LAYER

## 1.1 The shared philosophy and the key asymmetry

Palantir and Anduril are frequently lumped together, and at the deepest level the instinct is correct: both reject the premise that data's value lives in *storage and later querying* (the data-lake / data-warehouse paradigm, where data is a passive resource you run SQL against). Both instead organize everything around **decisions and actions that write back to the real world**. Data is captured, fused into a typed model of entities and relationships, and made *actionable* — the model is not a report, it is an operational surface.

But the "they're basically the same" framing hides a crucial asymmetry. The two companies sit at opposite ends of a single pipeline defined by latency and coupling:

- **Palantir is the enterprise / analyst / cloud end.** Its center of gravity is constructing a coherent semantic model of an entire organization, for human decision support, intelligence production, and large-scale data integration. It tolerates seconds of latency in exchange for rich query, governance, and auditable history.

- **Anduril is the tactical-edge / autonomy end.** Its center of gravity is real-time sensor fusion and machine autonomy — sensor-to-shooter loops that run in milliseconds, on ruggedized hardware in the field, often disconnected from any cloud. It sacrifices global consistency for latency and resilience.

This is why they are complementary rather than truly competitive, and in **December 2024** they announced a partnership/consortium to bolt their systems together — Palantir's enterprise data/AI decision-support joined to Anduril's edge autonomy, marketed as "from the edge to the enterprise." They interlock as two halves of one capability. (They overlap and lightly compete only at the seam — e.g., Palantir's Maven vs. Anduril's mission autonomy.)

The single most useful mental model: **pick your point on the consistency ↔ latency ↔ resilience triangle first; it dictates every other architectural decision.** Palantir chose consistency + rich query; Anduril chose latency + resilience. Everything below follows from that choice.

## 1.2 Palantir in depth: the Ontology as the load-bearing concept

Palantir's platforms are **Foundry** (the data integration and operational platform), **Gotham** (the original intelligence/defense analysis platform, with roots in counterterrorism and intelligence-analysis workflows), and **AIP** (the AI Platform layered on top). The unifying concept across all of them is **the Ontology**, which Palantir describes as a "digital twin of an organization" — a semantic layer sitting on top of integrated datasets and models.

### The Ontology data model (the primitives)

The Ontology is built from a small set of typed primitives. Knowing these by name matters because they are exactly the vocabulary a scientific analog would need to reinvent:

- **Object types** — schema definitions for real-world entities or events (an Employee, a Flight, a Shipment). An *object* is one instance; an *object set* is a collection. The analogy: object type ≈ a table, object ≈ a row, property ≈ a column. Object types carry a lifecycle status (experimental / active / deprecated / a "promoted" vetted-core status). In the modern backend they support up to ~2,000 properties per type and tens of billions of objects per type.
- **Properties** — characteristics of an object, backed by columns in a source dataset, requiring a deterministic unique primary key. Notably, Palantir's property *value* type system is explicitly inspired by RDF, OWL, and XSD — but only at the data-type level, not the overall architecture.
- **Shared properties** — a property reused across multiple object types for consistent modeling and centralized metadata.
- **Link types** — schema-level relationships (one-to-one, one-to-many, many-to-many) between object types; analogous to a join. The SDK generates traversal operations ("search-arounds") across links.
- **Action types** — governed transactions that edit objects, properties, and links in a single transaction, including side effects. This is the unit of **"kinetics"** — the verbs. In the modern backend, *all* edits must flow through Actions.
- **Functions** — server-side typed code (TypeScript / Python / Java) that operates against Ontology objects in a governed execution environment; can read properties, traverse links, and make edits.
- **Interfaces** — describe the shape/capabilities of an object type, providing **object-type polymorphism** (the same way interfaces work in typed programming languages), so types sharing a common shape can be handled uniformly.

Palantir frames the whole as **Language** (types / actions / logic), **Engine** (reads / writes / batch mutations, with Change Data Capture for low-latency mirroring), and **Toolchain** (SDKs / DevOps / UIs). The defining choice is that object + link + action + function are bundled as *one governed surface coupled to an application layer* — semantics paired with kinetics. Few commercial platforms do this; most stop at the semantic (read-only) layer.

### The microservices backend

The Ontology is a microservices system, not a database. The named services:

- **Ontology Metadata Service (OMS)** — the schema/type registry; the source of truth for what object/link/action types exist.
- **Object databases** — the indexed instance store, optimized for fast retrieval. All indexed data here is *ephemeral*; the persistent source of truth is always Foundry datasets.
- **Object Set Service (OSS)** — serves reads (search, filter, aggregate).
- **Actions service** — applies governed edits.
- **Object Data Funnel ("Funnel")** — orchestrates writes: reads from datasources and user edits and indexes them into the object databases, keeping them fresh as sources update.

A migration worth knowing: **Object Storage V1 ("Phonograph")** was the original, tightly coupled to an underlying distributed document store and search engine; it is in planned deprecation (unavailable after **June 30, 2026**). **Object Storage V2** was rebuilt "from first principles" to **decouple indexing from query serving**, enabling horizontal scale, incremental indexing, streaming sources, and column-level permissions. This decoupling — separate the schema registry from the instance store from the query service — is the single most reusable architectural idea in the entire Palantir stack.

### Pipelines and data integration

- **Datasets** are the persistent unit, stored in open columnar format (**Apache Parquet**) with schemas mapping to **Apache Spark** types. Every dataset carries metadata, schema, lineage, and full version history with multi-branch versioning.
- **Pipeline Builder** is the low-code integration app; its transformation backend can target **Spark and Flink**.
- **Code Repositories** provide a git-backed IDE for PySpark/SQL/Java transforms and Functions.
- **Data Lineage** visualizes how data flows across datasets, object types, and applications.
- **Streaming** uses Spark for batch and **Apache Flink** for exactly-once checkpointing. **Apache Arrow** is available for interchange. **Change Data Capture (CDC)** keeps the indexed copy synced to sources.

### The "decision-centric" model and dynamic security

Palantir's own stated rationale is that "the Ontology represents the decisions in an enterprise, not simply the data" — traditional data architectures throw away the *reasoning* behind decisions and the *actions* that follow. Hence the model couples four things: **Data, Logic, Action, and Security**, and it retains "decision data" (the context around a decision, the options evaluated, the downstream consequences) so the loop compounds and AI can learn from it.

The security model is a standout and directly relevant to any system handling sensitive (e.g., human-subjects) data: **security markings propagate automatically along data lineage.** A marking applied to a dataset flows to every downstream derived dataset, object, and transform; removing one requires explicit declassification syntax on a protected branch with approvals. Granular policies provide **row-level** (object security) and **column-level** (property security) controls, evaluated as query templates filled with user attributes — supporting role-based, classification-based, and purpose-based access control. Security is a *propagating property of the data*, not an app-layer afterthought.

### AIP and Apollo

**AIP** layers generative AI onto the Ontology. Crucially, agents interact with the Ontology through *typed tools* — object query, function calls, governed action execution — so the Ontology effectively becomes the agent's persistent, queryable, permissioned memory. This is the architecturally important point: the same typed semantic layer that serves humans serves the AI, with the same governance.

**Apollo** is Palantir's continuous-deployment / day-2 operations system, managing every instance of Foundry and Gotham across connected, disconnected, and air-gapped environments. It inverts the usual push model into a *pull* model: there is no single target version; Apollo reconciles desired constraints against live state. It is Ontology-aware — versioning object types, actions, logic, and policies, not just code.

### Why Palantir did *not* build on RDF/OWL/SPARQL

This is one of the most instructive points in the whole survey, and it has a direct parallel in science (Part V). Palantir built a proprietary, property-graph-flavored, write-capable system rather than adopting the academic Semantic Web stack. Palantir does not publish an explicit takedown of RDF/OWL, but the technical logic is clear:

- **Action and governance are first-class.** RDF/OWL/SPARQL model static knowledge for open-world inference; they have no native concept of a governed mutating transaction, server-side typed logic, or marking propagation. Palantir needed verbs and security, not a reasoner.
- **Closed-world determinism.** OWL's open-world assumption (absence ≠ false) and description-logic reasoning are computationally expensive and ill-suited to deterministic operational dashboards. Property-graph/object models give predictable, pointer-based traversal.
- **Materialization for speed.** Foundry is a heavily materialized, indexed layer kept fresh by CDC, not a federated SPARQL endpoint.
- **Cognitive interoperability.** Labeled-property-graph-style models are more human-legible than verbose RDF reification.

The lesson generalizes: **the formal Semantic Web stack lost to pragmatic property-graph/operational models wherever action, latency, and governance mattered.** Hold this thought — the same split recurs inside neuroscience.

## 1.3 Anduril in depth: Lattice as a "battlefield operating system"

Lattice is the same fuse-into-a-typed-model-then-act philosophy, pushed into hard real time and machine autonomy. Architecturally it can be read as three blocks: **multi-source ingestion → sensemaking (detection, tracking, correlation, intent estimation) → orchestration (task planning, order routing, security)**. It ingests thousands of sensor/effector streams into a real-time common operational picture (COP) and an AI-enabled command-and-control layer, marketed as a "single pane of glass."

### The entity-component data model

This is the key architectural distinctive versus Palantir, and the one most directly applicable to heterogeneous scientific sensor data. An **entity** is "a bag of components." There is **no inheritance hierarchy** — what an entity *is* is determined by which components are present, not by a type tree. Components must be composable and non-hierarchical. Entities can be partial/incomplete, so consumers must robustly handle missing components.

Required components include a GUID (`entity_id`), a liveness flag (`is_live`; false triggers deletion), an expiry time, and provenance. Three top-level templates exist via an `ontology` component:

- **Asset** — an entity under control that can accept tasks.
- **Track** — something tracked but not controlled (a radar hit, a signal detection), carrying a "military view" of disposition / environment / nationality.
- **Geo-entity** — shapes and zones (keep-in / keep-out / loiter).

Enum values come from well-known published Anduril ontologies.

### The SDK, protocols, and mesh

Lattice publishes **open data models as Protocol Buffer (protobuf) schemas** on a public schema registry (entity manager, task manager, ontology namespaces). Two protocols: **gRPC/protobuf** internally between Lattice nodes (binary, bandwidth-efficient — best for high-frequency telemetry in constrained networks) and **REST** for dashboards/admin. Canonical SDKs exist in Go, Java, TypeScript, and Python. Third-party hardware and software integrate by conforming to the entity/task model — a Modular Open Systems Approach (MOSA) of replaceable components behind stable interface contracts. There is a **Lattice SDK** and a **Lattice Partner Program**.

**Lattice Mesh** is a decentralized mesh that transports data, events, and commands across services, platforms, and domains, absorbing local link outages. Each node shares tracks, contributes to fusion, and relays fire-control *without a single vulnerable hub*. **Menace** (and Voyager, from the Klas acquisition) is the deployable ruggedized compute family that hosts Lattice in degraded environments — designed for **DDIL** conditions (denied, disconnected, intermittent, limited), with resilient mesh networking over multiple encrypted comms paths.

### Task decomposition and autonomy

**Task Manager** handles the lifecycle of tasks routed to "taskable agents" (a service, asset, group, or human). A task has a unique ID, a spec, a status, and a state machine, with parent-child relationships and optimistic-concurrency version control (a version mismatch is rejected to prevent races). Agents advertise capabilities via a task catalog. **Lattice for Mission Autonomy** "breaks high-level operator intent into discrete tasks" distributed across unmanned teams under human-on-the-loop supervision — the AI proposes, it does not independently authorize lethal force. Onboard AI/ML performs real-time multi-sensor fusion, correlating tracks from heterogeneous sensors (optical/IR, RF, radar, LIDAR) into common entities. (Anduril does not publish its tracker/filter math; the general field uses techniques like joint probabilistic data association and labeled random-finite-set filters.)

## 1.4 Comparable and adjacent platforms

The category is broader than these two companies. Worth knowing:

**Defense / C2:**
- **Maven Smart System (MSS)** — Palantir's AI-enabled command-and-control platform, descended from Google's Project Maven computer-vision effort; an Ontology-based, decision/intelligence-centric system fusing 170+ heterogeneous sources and integrating LLMs. Decision-centric, enterprise — contrast with Lattice's edge autonomy.
- **Northrop Grumman IBCS** (Integrated Battle Command System) — the Army's air-and-missile-defense fire-control C2; a hard-real-time "any sensor, best shooter" fire-control network. A different problem than enterprise integration: fusing sensor data into a single track for interceptor cueing in real time.
- **JADC2 / CJADC2** (Joint All-Domain Command and Control) — a *doctrine/concept*, not a product: connect every sensor and shooter across all domains. This is the demand-side reason fusion architectures matter at national scale.

**Industrial / IoT / enterprise twins:**
- **Azure Digital Twins** (models in DTDL, a JSON-LD-based language), **AWS IoT TwinMaker** (entity-component knowledge graph), **PTC ThingWorx**, **Siemens MindSphere/Xcelerator**, **GE Predix**. These converge on the same primitives — typed models, properties, relationships, telemetry — but use JSON-based modeling languages and generally lack the bundled governed-action + propagating-security tier.
- **Databricks / Snowflake / Microsoft Fabric** increasingly host *warehouse-native semantic layers* (semantic views, metric views).

**Semantic-layer and knowledge-graph technology:**
- **Semantic-layer products**: dbt Semantic Layer (MetricFlow), Cube, AtScale. The **Open Semantic Interchange (OSI)** initiative (launched 2025, v1.0 early 2026) aims at a vendor-neutral model for metrics, dimensions, relationships, and context across tools.
- **Graph models**: **RDF/OWL/SPARQL** (W3C triples; description-logic inference under the open-world assumption; needs reasoners) versus **Labeled Property Graphs** (Neo4j/Cypher, Gremlin; labels as a lightweight implicit ontology; fast pointer traversal; no formal semantics). The tradeoff — formal semantics and inference but verbose and heavy, versus speed/flexibility/legibility — is exactly why operational systems lean property-graph.
- **Data mesh vs. data fabric**: mesh = decentralized, domain-owned data products (organizational); fabric = automated metadata-driven integration (technological).

## 1.5 The two digital-twin traditions (keep them separate)

The phrase "digital twin" spans two genuinely different engineering artifacts, and conflating them causes confusion. Both are relevant to the vision, but in different ways.

**(A) The enterprise / operational twin.** Palantir's "digital twin of an organization." Models business processes, assets, and decisions. Azure Digital Twins and AWS TwinMaker live here. Emphasis: entities, relationships, business logic, and (for Palantir) governed action. This is the one the architecture report's Ontology discussion is about.

**(B) The physics-based / engineering twin.** This term originates with **NASA / U.S. Air Force** (Glaessgen & Stargel) — a high-fidelity, physics-based simulation (finite-element, multibody dynamics, computational fluid dynamics) of a *specific physical asset*, continuously updated with live sensor telemetry to mirror, diagnose, and predict its state. Standards landscape: **ISO 23247** (digital twin framework for manufacturing), the **IEC 63278 Asset Administration Shell (AAS)** (a technology-neutral information model with multiple serializations, the core of Industrie 4.0 / RAMI4.0), the **Digital Twin Consortium**, and **model-based systems engineering (MBSE)**. A maturity ladder runs descriptive → diagnostic → predictive → prescriptive.

**The bridge to the vision — human biomechanics twins.** An active research area builds *Human Digital Twins* of the musculoskeletal system, and here the physics-based tradition meets the behavioral-sensor world. The open-source **OpenSim** solver (built on the Simbody multibody engine) is the de facto physics engine, driven by motion capture, IMUs, EMG, and imaging. Examples include sensor-driven twins for gait analysis and monocular-video pipelines feeding mesh recovery into OpenSim. This is the physics-based twin applied to the human body — high-fidelity models synchronized to multimodal physiological/behavioral data. It is closer to the kinematics/video/sensor world than the hospital-flow operational twin, and it is the natural "physics layer" beneath an empirical-capture platform.

The clean takeaway: **treat the operational twin and the physics-based twin as separate layers that exchange data, not one system.** Use a real solver (OpenSim or successor) for the high-fidelity physics twin; use an entity-component / object-link operational layer on top for fusion, governance, and action.

## 1.6 The intellectual lineage

The word "ontology" is borrowed from metaphysics (the study of what exists and how things categorize) and imported into computer science via AI knowledge representation. The canonical CS definition is **Tom Gruber's (1993): "an ontology is an explicit specification of a conceptualization."** The lineage:

1. **Classical AI knowledge representation** (1970s–80s): frames (Minsky), semantic networks, description logics, expert systems — encoding a domain's concepts, relations, and constraints for machine reasoning.
2. **The Semantic Web** (Tim Berners-Lee, ~2001): make web data machine-understandable. The W3C stack: **RDF** (knowledge as subject–predicate–object *triples*), **RDFS**, **OWL** (Web Ontology Language, grounded in description logic, emerging ~2004 from the merger of the US "DAML" and European "OIL" efforts), **SPARQL** (query language), and **triplestores**.
3. **The OWL/RDF limitations** that pushed industry away: RDF's atomic triples make n-ary relationships awkward; OWL's open-world assumption is wrong for controlled enterprises; reasoning is expensive.
4. **Knowledge graphs and Labeled Property Graphs**: Google popularized "knowledge graph" in 2012; property-graph databases (Neo4j/Cypher, TigerGraph, Amazon Neptune) became the pragmatic alternative, where node/edge labels act as a lightweight implicit ontology.

Palantir's "dynamic ontology" descends from the property-graph/operational side and adds kinetics + security; Anduril's entity-component model descends from game-engine / robotics ECS (entity-component-system) patterns rather than the Semantic Web at all. **Both descend from the knowledge-representation + property-graph tradition, not the formal Semantic Web tradition — even though they use the same word "ontology" the Semantic Web crowd defined.**

## 1.7 The 2026 geopolitical "winds"

The macro shift is **software-defined defense** displacing the hardware "primes" (Lockheed, RTX/Raytheon, Boeing, General Dynamics). The forces:

- **JADC2/CJADC2** as the demand driver — connect every sensor and shooter.
- **Kill-chain / sensor-to-shooter compression** — collapsing the time from detection to decision to effect.
- A **new defense-tech bloc** — Anduril and Palantir forming a consortium with SpaceX, OpenAI, Saronic, and Scale AI to jointly bid for contracts, challenging the primes.
- A **data-readiness** argument — most tactical-edge sensor data is currently discarded rather than retained for AI training; these platforms capture and retain it.

This is the same architectural pattern — fuse heterogeneous real-world streams into a typed, actionable model — operating at a scale large enough to have geopolitical effects. The vision in Part II is, in effect, the proposal to point that pattern at empirical science.

## 1.8 Cross-cutting technical themes and reusable design patterns

For an engineer borrowing from this whole category:

- **Two fusion patterns dominate.** *Materialize-and-index* (Palantir: Funnel → object databases, CDC keeps fresh; Spark batch + Flink exactly-once streaming) favors consistency and rich query at the cost of latency. *Edge-fuse-and-mesh* (Anduril: fuse at the sensor, mesh syncs only useful artifacts) favors latency and resilience at the cost of global consistency.
- **Canonical data model, decoupled from source schemas.** Object/link/action types, entity-components, DTDL interfaces, AAS submodels — all converge on a typed canonical model. The recurring choices: *composition over inheritance* and *schema as a governed contract*.
- **Separate registry / instance store / query service.** The most transferable single idea.
- **Interchange formats**: protobuf + schema registry where latency/bandwidth matter; Parquet + Arrow where analytics/columnar matter. Avoid RDF/OWL/SPARQL unless you specifically need open-world logical inference.
- **Security as a propagating data property**, not an app-layer bolt-on.

---

# PART II — THE VISION: COMPLETE EMPIRICAL CAPTURE OF AGENT–ENVIRONMENT INTERACTION

## 2.1 The core idea

The vision is to build, for empirical science, the operational semantic layer that Palantir and Anduril built for enterprise and defense: **empirically grounded pipelines that map from sensors in the world — cameras / markerless motion capture, eye trackers, neurophysiology, force plates, and other instruments — fused into a scientifically grounded, calibrated, typed ontology/data model that operates across scales and timescales**, delivering the same speedups, complexity management, and interoperability those platforms promised, but for scientific rather than organizational or military purposes.

The phrase for the new measurement object is **"complete empirical capture of the agent–environment interaction."** The platform is characterized as a new class of research instrument: **massively multidimensional, calibrated, synchronized** — motion capture and eye tracking and neural recordings and force and physiology, all at once, all on a common spatial and temporal frame, unified into a single queryable, analyzable, action-capable record.

## 2.2 The architectural translation — what maps from Palantir/Anduril to science

The mapping is unusually clean, which is what makes the analogy more than rhetorical:

- **Object/entity types** → the things in an interaction: a body, a joint, a gaze vector, a tracked environmental object, a neural event, a force reading, an agent.
- **Link types** → the relationships: this gaze lands on that object; this neural event coincides with that movement onset; this force couples to that limb.
- **Action types / functions** → the analytical and experimental operations, and the closed-loop write-back (e.g., real-time feedback or stimulus control) — the "kinetics."
- **Entity-component composition** → the right pattern for heterogeneous, partially observed multimodal data (some streams present, some missing, no clean inheritance tree).
- **Calibration + synchronization** → the scientific analog of sensor fusion: bringing all modalities onto a shared, metrically meaningful spatial and temporal coordinate system. This is the hard core of the instrument.
- **Propagating provenance/security** → essential for human-subjects data and for reproducibility (full lineage from raw sensor to derived value).
- **Materialize-and-index vs. edge-fuse-and-mesh** → the same triangle: an offline, richly queryable scientific record vs. real-time closed-loop experimentation. A mature platform likely needs both modes as distinct, interoperating paths.

## 2.3 FreeMoCap as the anchor

**FreeMoCap** (the open-source, markerless motion capture platform) is the named starting point — the seed from which the broader concept is built out. Its lineage matters strategically: open, markerless, commodity-hardware, community-driven. That is the right cultural and technical starting point for the one piece of the landscape that the institutes, companies, and standards bodies are *not* structurally incentivized to build (see Part VI). FreeMoCap is treated as the anchor and proof-of-concept for the capture layer, not as the whole of the vision — the vision is the integrated, calibrated, multimodal, semantic instrument that capture feeds.

---

# PART III — THE TARGET: NSF X-LABS

## 3.1 What X-Labs is and what it wants

The **NSF X-Labs Initiative** (run by NSF's Directorate for Technology, Innovation and Partnerships, under the Other Transactions Agreement Solutions Offering) funds **full-time, autonomous, milestone-funded R&D teams** to build "novel platform technologies capable of unlocking entirely new sectors, including new fields of scientific inquiry." It is explicitly for work that "traditional university and industry labs cannot easily address." Teams get ambitious goals, operational autonomy, milestone-based funding, and the ability to span academia, industry, national labs, and nonprofits.

The relevant **Topic 2** is *Scientific Instrumentation for Sensing and Imaging*. Its framing opens with: "Every revolution in science has been preceded by a revolution in what we can measure." It names targets including whole-brain activity at cellular resolution across long timescales and, tellingly, "instruments intentionally engineered for next-generation AI training pipelines."

Structure: **Phase 0** (~9–12 months, up to ~$1.5M, preparation and milestone/budget refinement) → **Phase 1 Go/No-Go** → **Phase 1** (~24–36 months, up to ~$50M/year) → **Phase 2**. The written proposal is **8 pages**, evaluated roughly equally on **"Team Qualifications and Structure"** and **"Mission Clarity and Outcomes."** Written-proposal deadline: **July 13, 2026**.

The **autonomy factor test** is central: to reach Phase 1, a team must have full internal control of funding allocation, research direction, hiring, and — critically — **full ownership and control of IP**, independent of any parent institution, with decisions made "in days not weeks."

## 3.2 The fit

The vision fits X-Labs unusually well, better than most software pitches would, for specific reasons:

- The **"platform technology that unlocks new fields"** mandate matches the shape of the pitch directly.
- The **"new measurement modality"** register is available: complete empirical capture of agent–environment interaction is a measurement-revolution argument, not a software argument — exactly the register Topic 2 invites.
- The **cross-scale / cross-domain / multi-timescale** framing is native to the vision *and* native to the solicitation's language.
- The **"reshape an entire field"** bar is satisfiable: behavioral science, motor neuroscience, and embodied cognition are all bottlenecked by fragmented, non-composable measurement.

## 3.3 The exclusions and risks — the knife to avoid

The solicitation contains sharp exclusions that a careless framing walks straight into. These are the real hazards:

1. **"Computational or software solutions without practical integration into an instrumentation system."** This is the sharpest blade. A reviewer's first reflex will be: *is this just better lab middleware or a data standard?* The Palantir/Anduril analogy can *hurt* here if it makes the work sound like enterprise software. The mitigation is to make the platform read as **an instrument that produces a measurement previously impossible** — to define a *new scientific observable* (the calibrated, synchronized, semantically-unified interaction record) and show the platform is what makes that observable measurable at all.
2. **"Incremental advancement of the state of the art."** Must not read as "a better mocap tool."
3. **"Technologies already at full-scale commercialization"** and **"narrow, not widely deployable impact."** Must argue broad, multi-field adoption — a platform many disciplines take up — not a single vertical.
4. **The team-autonomy bar.** A FreeMoCap-anchored academic effort must credibly argue it can become a full-time, institutionally independent organization owning its own IP. The breadth-of-impact and independence arguments are where reviewer skepticism will concentrate.

## 3.4 The three load-bearing questions

Everything in the proposal should be answerable to these three:

1. **What is the new measurement** — the scientific observable that becomes knowable that wasn't before? (Not the platform; the *observable*.)
2. **What field is being reshaped**, specifically enough that a reviewer can picture the before/after?
3. **Why hasn't this been built, and why can't normal NSF grants or a startup do it?** — the mission-unmet argument. (Part VII supplies the answer.)

The single reframing that is "the whole ballgame": the proposal must read as **a new instrument that unlocks a new science, not as infrastructure that makes existing science more convenient.**

---

# PART IV — THE SCIENTIFIC LANDSCAPE: A FIELD OF INCOMPATIBLE PIECES

## 4.1 The precedent: Mobile Brain/Body Imaging (MoBI)

The vision has a named precedent in the literature: **Mobile Brain/Body Imaging (MoBI)**, coined by Scott Makeig's group at UCSD's Swartz Center for Computational Neuroscience around 2009. It is defined almost exactly as the vision would put it: the *synchronous* collection of brain activity (EEG), behavior (motion capture, eye tracking), and environmental events, to study joint brain/body dynamics supporting natural cognition in 3D environments.

This cuts two ways, both useful:

- **It validates the concept.** There is a ~15-year peer-reviewed lineage; a reviewer will not think the idea is crankish. Key names: Scott Makeig, Klaus Gramann, Daniel Ferris.
- **It exposes the gap.** MoBI is a **methodology, not a platform.** It is something heroic labs assemble by hand, per study, from incompatible parts. The analysis toolboxes that exist — MoBILAB (now unmaintained), the BeMoBIL pipeline — are batch post-processing scripts, not an operational data model. *The absence of the instrument is the bottleneck.* The pitch is not "invent multimodal capture"; it is "multimodal capture has never been turned into an actual instrument, and that absence throttles the field."

## 4.2 The layered stack and the missing middle

The decisive structural insight: **the scientific field has independently evolved the same layers Palantir and Anduril have — except the middle (semantic/operational) layer is missing.**

**Transport / synchronization layer — solved (as transport): Lab Streaming Layer (LSL).** The de facto standard, also from UCSD. It supports 150+ device classes and clients in many languages, providing sub-millisecond synchronization over a LAN. But it is a *timestamping transport, not a data model.* It gets samples onto a shared clock; it does nothing about what those samples *mean* or how they relate. Its documented pain points are precisely the "thousand sloppy codebases" problem: heterogeneous sampling rates, multiple proprietary acquisition systems and APIs, and a downstream burden of conversion, integration, annotation, and storage. Its known limitation: it cannot access data until it reaches the CPU running LSL, so it cannot itself measure device throughput delays. (Associated format: **XDF**.)

**Archive layer — solved (as file formats): BIDS and NWB.** **BIDS** (Brain Imaging Data Structure) began as an MRI convention and has been extended modality by modality — EEG, MEG, PET, iEEG, fNIRS, motion (motion-BIDS), and a 2026 eye-tracking extension (BEP20). **NWB** (Neurodata Without Borders) is the neurophysiology analog. Three properties matter: they are *archival* (built for sharing finished datasets, not live operation), *fragmented* (each modality bolted on by a separate working group over a decade), and *incompletely interoperable* (BIDS lists NWB only as an "unofficially-supported" format that could be dropped). This is the scientific equivalent of the pre-integration enterprise: every department has its own schema, and they meet only in a shared folder.

**Physics / modeling layer — dominant but hated: OpenSim.** The NIH-funded de facto musculoskeletal solver (Delp 2007; Seth 2018), built on the Simbody multibody engine. It has massive field penetration and genuine scientific value, but its workflow is notoriously hostile — its own roadmap concedes that model building is "cumbersome and time-consuming." The tell is the swarm of tools that exist *only to paper over its usability*: **OpenSim Creator** (a GUI from TU Delft to make model-building bearable), **OpenCap** (video → simulation, from the Delp lab), **AddBiomechanics** (automatic scaling/IK), **OpenSense** (IMU), **Moco** (optimal control). And the surrounding ecosystem keeps reinventing wheels — e.g., MATLAB-dependent toolkits (BOPS) spawning open-source replacements (vail'á, MuSkeMo in Blender). OpenSim is the perfect foil: dominant, valuable, and so painful that a large share of the field's engineering effort goes into wrapping it. It is both prior art and a cautionary design example.

**The missing middle: a calibrated, synchronized, semantically-typed operational layer.** *Nobody has it.* There is no scientific equivalent of Palantir's Ontology or Lattice's entity-component model — no shared typed representation where a skeleton joint, a gaze vector, a force reading, a neural event, and an environmental object are the same first-class, linked, spatially-and-temporally-calibrated entity. **That gap is the instrument.**

## 4.3 The two enabling shifts — the wind at the back

Two simultaneous shifts make this the right moment, and both should be named:

1. **Markerless capture has crossed the threshold.** Deep-learning pose estimation (DeepLabCut, OpenPose, SLEAP, AniPose, DANNCE, and the FreeMoCap lineage) has moved kinematics out of the marker-suit, calibrated-lab regime. Motor neuroscience is explicitly reorienting toward naturalistic, unconstrained behavior, validated against gold standards like XROMM (X-ray). Cheap cameras can now feed the capture layer — the supply-side enabler.
2. **"Naturalistic" / "real-world" neuroscience is the field's stated frontier.** The move away from the chin-rest, single-modality, static paradigm toward embodied, interacting agents is precisely what MoBI and the Topic 2 language both point at. The vision is the platform this frontier needs and lacks.

---

# PART V — THE ONTOLOGY QUESTION IN SCIENCE

## 5.1 Two camps — and the Palantir parallel recurs

Neuroscience has split into the same two ontology camps that the enterprise world did, and the same pragmatic-over-formal winner emerged — which is both a validation of the architectural bet and a guide to what to build.

**The formal-ontology camp (academically respected, operationally stalled).** OWL-based, Basic Formal Ontology–aligned efforts descended from the Gene Ontology lineage that worked so well in molecular biology:
- **CogPO (Cognitive Paradigm Ontology)** — Turner & Laird, derived from the BrainMap taxonomy, BFO-compliant, distributed as .owl files; describes experimental conditions (stimulus modality, response, instructions).
- **Cognitive Atlas** — Russell Poldrack's NIMH-funded knowledge base of cognitive constructs and the tasks that measure them.
- **NIF / NIFSTD** (Neuroscience Information Framework Standard ontology) and **NEMO** (Neural ElectroMagnetic Ontologies).

These describe *experiments and cognitive constructs* — what task was run, what mental process it putatively engages — not raw multimodal data. They never achieved operational penetration; they are meta-analysis and annotation aids used by specialists.

**The pragmatic-annotation camp (adopted and operational, but shallow).** This is where the field actually lives — the same pragmatic choice Palantir made over formal RDF/OWL. The flagship is **HED** (see 5.2). Alongside it: BIDS, NWB, LSL.

The parallel is exact: **the formal Semantic-Web-style ontologies lost to pragmatic annotation/format standards wherever adoption and operation mattered — just as RDF/OWL lost to property graphs in the enterprise.** This is direct ammunition for justifying a pragmatic, property-graph/entity-component design over a formal OWL approach in the proposal.

## 5.2 HED (Hierarchical Event Descriptors) in depth

**HED** is the closest thing the field has to an event ontology, and the most important single reference point for the "scientific ontology" question. Key facts:
- Developed by Kay Robbins, Scott Makeig, Dora Hermes, Arnaud Delorme; BRAIN Initiative–funded.
- It is the **annotation standard for events in BIDS.**
- Its design philosophy is the tell: HED has *implicit ontological and linked-data representations* but a deliberately *more intuitive interface* than traditional ontological annotation. It uses a base "standard schema" plus extensible **library schemas** (e.g., HED-SCORE for clinical EEG), letting communities add controlled vocabularies without a formal-ontology bottleneck. Generations have evolved (HED-3G being a major reformulation).
- Crucially, **HED's own authors diagnose the gap**: existing ontology-based frameworks cannot straightforwardly annotate events in modern, complex laboratory or real-world scenarios because of their complexity and the need for fine-grained detail. This is a citable admission directly useful for the novelty argument.

## 5.3 Why none of these is what the vision proposes

Every one of these — formal or pragmatic — is an **annotation / metadata layer for experiments and events.** None is an **operational data model for the continuous, calibrated, multimodal interaction stream itself.** HED tags say "a target stimulus appeared at t=4.2s"; nothing in this ecosystem says "this skeleton joint, this gaze vector, this force reading, and this neural event are the same first-class, linked, spatially-and-temporally-calibrated entity." That is the Palantir object/link/action layer, and it does not exist for science. **The strongest positioning: the vision is the operational semantic layer that HED and BIDS presuppose but, as tagging/format standards, can never become.**

---

# PART VI — THE COMPETITIVE TERRAIN

The honest answer to "why hasn't this been built" is *not* "nobody is trying." Serious, well-funded players are building pieces. The opportunity is that each is structurally confined to a piece by its own incentives. Mapped by layer:

## 6.1 Acquisition / experiment-control stacks
- **Allen Institute for Neural Dynamics** — the most sophisticated effort. Co-develops **Harp** (open real-time data acquisition, lightweight binary protocol, hardware sync) and **Bonsai** (a reactive visual-programming language for multimodal closed-loop experiments). Architecturally, Bonsai is the closest existing thing to the operational layer (a reactive dataflow engine) — but it is an experiment-control tool, and the whole Allen effort is **animal-model, single-institute pipeline** infrastructure.
- **ONI / ONIX** (Open Neuro Interface) — an open-source multi-instrument hardware standard and API for multimodal neural recording during naturalistic behavior; mouse-focused.

## 6.2 Archives
- **DANDI** (BRAIN Initiative–supported, NWB-based cloud archive with compute-near-data), **OpenNeuro** (BIDS-based, 20,000+ subjects), **EBRAINS** (EU Human Brain Project), **Pennsieve**. These are storage-and-sharing layers — archival and post-hoc, not operational capture instruments.

## 6.3 Commercial markerless capture (the most direct competition for the FreeMoCap niche)
- **Theia (Theia3D)** — marketed as the most extensively validated markerless system; tracks 124 keypoints, exports .c3d, validated against Vicon across gait/sports/posture. Its team is formidable: it includes **Peter Loan, architect of SIMM (the predecessor to OpenSim)**, and a DeepMind director of research. Take it seriously.
- **Move.ai** (phone-based, Gen-2 spatial motion models, real-time and API workflows), **Captury**, **Moverse**, academic SMPL/SMPL-X pipelines (MAMMA, OpenCap).

**The decisive competitive read:** *every commercial markerless system is single-modality — kinematics only.* They extract a skeleton from video. None fuses kinematics with neural, gaze, force, and physiological data into a unified calibrated record; none has a semantic layer. Their incentive is to perfect one measurement and sell it into a vertical market (sports, clinical, animation), not to integrate all modalities. That is the structural reason the integrated instrument does not fall out of the commercial sector.

## 6.4 The white space — the betweenness argument

State it precisely: the **institutes** build closed multimodal pipelines for their own (animal) science; the **archives** store finished, single-modality-organized datasets; the **companies** sell single-modality capture into vertical markets; the **standards bodies** retrofit file formats and tags. The **open, human, naturalistic, multimodal, calibrated, semantically-unified, operational capture instrument** falls between every one of these chairs. The defensibility argument *is* that betweenness — and FreeMoCap's open, markerless, commodity-hardware lineage is the right starting point for the piece nobody else is incentivized to build.

The competitive risk to internalize: the edge is **not** "we capture motion better" — Theia and Move.ai will win the pure-capture race. The edge is the **integration-as-instrument thesis**: the calibrated, synchronized, multimodal, semantic *whole* that none of them is built to produce. Framed this way, the crowded capture-tool market becomes *evidence for* the vision (the pieces are maturing) rather than a threat to it.

---

# PART VII — THE STRUCTURAL ARGUMENT: WHY NORMAL MECHANISMS CAN'T BUILD THIS

This is the strongest part of the "mission unmet by existing structures and funding mechanisms" case, and it is nearly handed over by the research-software-sustainability literature. It also directly answers load-bearing question #3.

## 7.1 The research-software sustainability crisis

The findings are blunt and citable:
- **Software isn't a first-class deliverable, so it stays a prototype.** Academic software often cannot be sustained because it was never a first-class research deliverable and remained in a prototype state, or because incentives and resources to maintain it vanish when project funding ends. *This is the mechanism that produces the thousand sloppy grad-student codebases.* It is not individual failure; it is the designed output of the system.
- **Funding ends; maintenance doesn't.** Tool funding is tied to a grant's duration, but maintenance obligations extend far beyond it — and science has been "too singularly focused on innovation" to treat maintenance of foundational infrastructure as anything but a lesser task.
- **The incentive system punishes the work.** Promotion is still based on metrics like the h-index (the DORA declaration notwithstanding); research-software engineering is not accepted as an academic profession; and most academic developers — usually PhD students or postdocs — never receive training in sustainable software development.
- **The classic "valley of death"** between a research prototype and a sustained, full-scale capability is a recognized structural gap with no good grant instrument spanning it.

## 7.2 Why this *is* the X-Labs thesis

Put together: a calibrated, synchronized, multimodal, semantically-unified capture platform is exactly the class of artifact the normal R01 / standard-NSF-grant machine cannot produce. It requires full-time professional software engineering, indefinite maintenance, cross-modality integration that no single PI's grant scopes, and an institutional home with autonomy and IP control. **The autonomy / full-time / IP-ownership requirements of X-Labs are not bureaucratic hoops — they are the literal solution to the documented reason this class of platform does not get built.** The structural argument is therefore not a bureaucratic preference but the core justification: normal mechanisms *structurally* produce disposable single-modality prototypes, and this work requires the opposite.

---

# PART VIII — STRATEGIC SYNTHESIS AND RECOMMENDATIONS

Pulling the whole arc together, the proposal's spine should be:

1. **Lead with the new instrument, not the software.** The proposal must read as *a new measurement modality that unlocks a new science*, not as infrastructure that makes existing science more convenient. Define the new observable explicitly: the calibrated, synchronized, multimodal, semantically-unified record of agent–environment interaction. This single reframing is the whole ballgame for clearing the "software without instrumentation" exclusion.

2. **Frame the ontology as the missing operational layer, not a new standard.** Do not pitch another data standard (BIDS/HED/NWB occupy that, and reviewers will pattern-match to a committee). Pitch the operational semantic layer for raw fused interaction data that those annotation standards presuppose but cannot be. Use HED's own admission that current frameworks cannot handle real-world complexity. Justify the pragmatic property-graph / entity-component design over formal OWL by pointing to the twin histories where formal ontologies lost to operational models (enterprise *and* neuroscience).

3. **Name the competition and show the seam.** Reviewers will know Allen, Theia, DANDI. Naming them and showing precisely why each is structurally confined to a piece (animal pipelines / single-modality products / archival storage) is far stronger than ignoring them, and demonstrates the landscape command X-Labs expects. The integration-as-instrument thesis turns the crowded field into evidence for the vision.

4. **Make the funding-structure argument explicit and load-bearing.** This is the "unmet by existing mechanisms" section, and the sustainability literature gives citable, non-hand-wavy backing. The X-Labs autonomy/IP/full-time model is the structural solution to a documented structural failure.

5. **Borrow the architecture deliberately and visibly.** The Palantir/Anduril lineage is a strength when it supplies *architecture* (typed canonical model, composition over inheritance, separated registry/store/query, propagating provenance, materialize-and-index vs. edge-fuse-and-mesh, security as a data property) — and a liability only if it makes the work *sound* like enterprise software. Use it for engineering credibility; keep the surface framing on measurement and science.

6. **Respect the central risk.** The edge is integration, not capture. Keep the emphasis on the calibrated, synchronized, multimodal, semantic whole. Do not get drawn into competing on pure pose-estimation accuracy, where well-capitalized, talented teams (Theia with the SIMM/OpenSim architect; Allen with serious infrastructure funding) will win.

The proposal's three answers, restated for the reviewers:
- **New measurement:** the complete, calibrated, cross-scale interaction record — previously unmeasurable as a unified object.
- **Field reshaped:** behavioral / motor / embodied-cognitive neuroscience, currently bottlenecked by fragmented, non-composable measurement.
- **Why unmet:** normal funding structurally produces disposable single-modality prototypes; this requires full-time, autonomous, IP-owning, sustained platform engineering — the X-Labs model.

---

# APPENDIX — KEYWORD AND NAME GLOSSARY

### Defense / enterprise platforms and architecture
- **Palantir**: Foundry, Gotham, AIP (AI Platform), Ontology, object/link/action types, Functions, Interfaces, shared properties, Ontology Metadata Service (OMS), Object Storage V1 ("Phonograph") vs V2, Object Data Funnel, Object Set Service, Pipeline Builder, Code Repositories, Data Lineage, Apollo, Maven Smart System (MSS), Change Data Capture, "decision-centric," "digital twin of an organization," marking propagation.
- **Anduril**: Lattice, Lattice OS, Lattice SDK, Lattice Mesh, entity-component model ("bag of components"), Asset/Track/Geo-entity, Task Manager, Menace, Voyager, "single pane of glass," mission autonomy, DDIL, MOSA, common operational picture (COP).
- **Adjacent/defense**: Northrop Grumman IBCS, JADC2/CJADC2, C4ISR, kill chain, sensor-to-shooter, the defense "primes," STANAG.
- **Industrial/IoT twins**: Azure Digital Twins (DTDL), AWS IoT TwinMaker, PTC ThingWorx, Siemens MindSphere/Xcelerator, GE Predix; ISO 23247, IEC 63278 Asset Administration Shell (AAS), Digital Twin Consortium, MBSE, RAMI4.0.
- **Semantic layer / graphs**: dbt Semantic Layer (MetricFlow), Cube, AtScale, Open Semantic Interchange (OSI); Neo4j/Cypher, Gremlin, Labeled Property Graph; RDF/RDFS/OWL/SPARQL, triplestore, DAML+OIL, open-world vs closed-world assumption; data mesh vs data fabric.
- **Interchange**: Protocol Buffers (protobuf), gRPC, Apache Parquet, Apache Arrow, Apache Spark, Apache Flink.

### Intellectual lineage
- Tom Gruber ("explicit specification of a conceptualization"); knowledge representation, frames (Minsky), semantic networks, description logic, expert systems; Tim Berners-Lee, the Semantic Web; knowledge graphs (Google 2012); entity-component-system (ECS) from game engines/robotics; Gene Ontology; Basic Formal Ontology (BFO).

### Scientific measurement — concept & precedent
- **MoBI** (Mobile Brain/Body Imaging) — Scott Makeig, Klaus Gramann, Daniel Ferris; Swartz Center for Computational Neuroscience (SCCN); MoBILAB, BeMoBIL pipeline; EEGLAB.
- Naturalistic / real-world neuroscience, ecological validity, embodied cognition, sensorimotor contingencies, Human Digital Twin.

### Scientific measurement — sync, standards, ontology
- **LSL** (Lab Streaming Layer) and **XDF**; **BIDS** (Brain Imaging Data Structure) and extensions (motion-BIDS, BEP20 eye-tracking, iEEG-BIDS, MEG-BIDS); **NWB** (Neurodata Without Borders); FAIR principles; INCF.
- **HED** (Hierarchical Event Descriptors) — Kay Robbins, Scott Makeig, Dora Hermes, Arnaud Delorme; HED-3G, library schemas, HED-SCORE.
- Formal cognitive ontologies: **CogPO** (Cognitive Paradigm Ontology; Turner & Laird; BrainMap), **Cognitive Atlas** (Russell Poldrack), **NIF/NIFSTD**, **NEMO**.

### Scientific measurement — capture & modeling
- Markerless pose: **DeepLabCut** (Mackenzie & Alexander Mathis), **SLEAP**, **OpenPose**, **AniPose**, **DANNCE**, **OpenMonkeyStudio**; **FreeMoCap**; SMPL/SMPL-X; **XROMM** (validation gold standard); marker-based incumbents (Vicon, OptiTrack, Qualisys).
- Commercial markerless: **Theia (Theia3D)** (Peter Loan, SIMM/OpenSim architect), **Move.ai**, **Captury**, **Moverse**.
- Biomechanics modeling: **OpenSim** (Scott Delp, Ajay Seth; Stanford/Simbios), **Simbody/SimTK**, **OpenCap**, **AddBiomechanics**, **OpenSim Creator** (TU Delft), **Moco**, **OpenSense**; alternatives **MyoSuite**, **HyFyDy**, **MuSkeMo**, vail'á.

### Infrastructure & funding ecosystem
- **Allen Institute for Neural Dynamics** — Harp, Bonsai; **ONI/ONIX** (Open Neuro Interface).
- Archives: **DANDI**, **OpenNeuro**, **EBRAINS** (EU Human Brain Project), **Pennsieve**.
- Funders/context: NSF TIP, BRAIN Initiative, NIH, Chan Zuckerberg Initiative, Kavli; research-software sustainability, "valley of death," DORA, research-software engineering (RSE) as a profession.

### Funding target
- **NSF X-Labs Initiative**; OTASO (Other Transactions Agreement Solutions Offering); Topic 2: Scientific Instrumentation for Sensing and Imaging; Phase 0 / Phase 1 Go-No-Go / Phase 1 / Phase 2; Autonomy Factor Test; selection criteria — "Team Qualifications and Structure" and "Mission Clarity and Outcomes"; written-proposal deadline July 13, 2026.

---

*End of briefing.*
