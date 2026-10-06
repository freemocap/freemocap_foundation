# Why This Can't Be Academic Science — OBO & the Internet as precedents, and the incentive-incompatibility argument

*Advisory research briefing (bot slop by definition). For JSM. Third in a series; builds on `entity-trait-composition-landscape.md` and `built-to-spec-vs-shared-protocols.md` — does not replace them. Grounded in the actual solicitation text and cited literature. BibTeX block at the bottom.*

---

## What this doc is for

The X-Labs solicitation has an explicit **dual mandate** (§3.0 Strategic Objectives):

> **Build Sector-Defining Platforms** — "foster the transformation of scientific breakthroughs *beyond traditional outputs like publications and datasets*."
>
> **Develop New Organizational Research Structures** — organizations that "tackle key research challenges that *lack sufficient incentives within traditional academic and industry labs*."

Both objectives are, almost verbatim, arguments *against academia doing this*. The written proposal has to make that case affirmatively. This doc supplies three things toward that:

1. **OBO as an organizational precedent** — and why its slow, 25-year maturation is a *feature* of the argument for sustained, high-payout, multi-year funding.
2. **The Internet as a sanctioned precedent** — the solicitation names it explicitly, which lets us reuse the narrow-waist argument from the prior doc using the program's own reference class (and NSF's own history).
3. **The incentive-incompatibility argument** — historic, cited analogs for JSM's intuition that academic incentives structurally *cannot* produce this kind of instrument, because they punish maintenance, novelty-gate integration, lock in low-information early decisions, and forbid the blank-page refactor.

---

## Part A — OBO as the organizational template, and why 25 years is the point

### OBO is an existence proof of the org structure X-Labs wants

The Open Biological and Biomedical Ontologies effort (last doc) is not a company and not a single academic lab. It is a **sustained, federated, governed consortium** with shared design principles, a common upper ontology, a resident philosopher (Barry Smith), and eventual ISO standardization — built to steward durable, precompetitive *scientific infrastructure* that no single lab's grant cycle and no single company's quarterly clock would ever produce ([Smith et al., *The OBO Foundry*, Nature Biotechnology 2007](https://www.nature.com/articles/nbt1346); [Ashburner et al., *Gene Ontology*, Nature Genetics 2000](https://pubmed.ncbi.nlm.nih.gov/17989687/)). That is a concrete instance of the "New Organizational Research Structure" the solicitation is asking teams to invent.

**The parallel to draw:** a FreeMoCap-Foundation-stewarded, open, governed semantic standard for the *empirical capture of sensorimotor agent–environment interaction* is, organizationally, "OBO but pointed at behavior/neuroscience instrumentation instead of molecular biology." That threads **both** X-Labs objectives at once: the instrument is the *platform technology*; the open shared-capture standard it anchors is the *new organizational structure*. (Keep the instrument primary per the solicitation's software-exclusion — see the note at the end.)

### The 25-year timeline is an asset, not an embarrassment

You flagged this and it's right. GO/OBO took ~25 years to stabilize, and that is exactly the argument for why this class of work needs the X-Labs *funding shape* rather than a normal grant:

- Durable shared scientific infrastructure has a **maturation horizon measured in decades**, not 3-year grant cycles. GO/OBO survived only because it received *sustained infrastructure funding* across many years — the kind of continuity a single lab or a single award can't supply.
- The X-Labs structure is built for precisely this: Phase 0 ≤ $1.5M (9–12 mo) to prepare; **Phase 1 ≤ $50M/year (24–36 mo)**; Phase 2 of "variable duration" for continued support of excellent teams; and even a possible **Phase 3** "where continued NSF funding is in the best interests of the nation" (§4.0, §5.0, §8.0). The program explicitly promises "**sustained, multi-year support**" to "institutionally independent organizational structures" (§6.0).
- So OBO's long timeline isn't a caution — it's the **justification for the post-Phase-0 money bags**: "here is a worked example (OBO/GO) proving that durable semantic scientific infrastructure returns enormous value but takes ~25 years and only survives on sustained, non-market stewardship; that is exactly the horizon and structure X-Labs uniquely provides, and exactly why 3-year academic grants have never produced its analog for behavioral/sensorimotor data."

One honest differentiation to keep in the argument: OBO is the *organizational* analog for the long-horizon semantic-infrastructure ambition. The *instrument itself* should still be built-to-spec first (prior doc) — you don't inherit OBO's BFO-realism overhead into SkellyCam's core. OBO is the model for the eventual shared layer, not for the measurement core.

---

## Part B — The Internet is a precedent the solicitation itself hands you

The prior doc's narrow-waist argument turns out to be more than apt — it's using the program's **own chosen reference class**. The solicitation lists exemplar high-impact platform technologies (§7.0):

> "Examples of existing high-impact platform technologies include Very Large-Scale Integration (VLSI), **the Internet**, Polymerase Chain Reaction (PCR), brain-computing interfaces, next-generation sequencing, AI models for protein structure prediction, and Light-Emitting Diodes (LEDs)."

Three things this unlocks:

1. **The narrow-waist story is now on-message, not a stretch.** The Internet scaled because of a thin, minimal spanning layer (IP) at the waist, keeping lower and upper layers independently evolvable ([Hourglass model, Wikipedia](https://en.wikipedia.org/wiki/Hourglass_model); [Beck & Akhshabi/Dovrolis](https://www.ietf.org/slides/slides-itatws-the-evolution-of-layered-protocol-stacks-leads-to-an-hourglass-shaped-architecture-00.pdf)). "Build SkellyCam's timestamp core as a thin exact waist; add LSL/OBO-style interop as adapters above/below" is the *same* architecture that produced the program's flagship example.
2. **NSF's own history is the precedent.** The Internet's transition from research network to global infrastructure ran through **NSFNET** — NSF funded and stewarded the backbone (1986–1995) precisely because it was foundational, precompetitive infrastructure that the market wasn't yet building. That is the exact gap-filling role X-Labs describes, and it's NSF's own lineage.
3. **"Rough consensus and running code."** The Internet's standards (IETF) emerged *after* working implementations, not before — build-to-spec, then standardize, driven by use. This is the prior doc's thesis, validated by the program's headline case, and a direct rebuttal to premature-standardization pressure.

---

## Part C — Why academic science structurally can't do this

This is the section that does the solicitation's required "unmet by existing structures" work. JSM's intuitions map onto named, cited results. The throughline: **it isn't a skill gap — it's an incentive/organizational-structure gap, and it's lawful.**

### C1. Novelty bias and publish-or-perish penalize integration and maintenance

Science rewards "positive, novel, tidy results" (Nosek) — being *first*, not being *useful* or *durable*. Journals resist replications and incremental work as "lack of contribution," and these publication metrics then drive hiring, promotion, tenure, and funding ([Open Science Collaboration / Nosek, *Estimating the reproducibility of psychological science*, Science 2015](https://www.nature.com/articles/s44271-023-00003-2); [Nosek, Yale Scientific](https://www.yalescientific.org/2024/02/brian-nosek-a-crisis-of-research-reproducibility/)). This is exactly the **"isn't that just DeepLabCut?"** reflex: an integrative instrument that *subsumes* DLC as one component is, to a novelty-gated reviewer, "not new" — even though integration is where the actual scientific leverage is. The incentive system literally cannot see the value of the thing you're building.

### C2. Research software becomes abandonware — and this is documented, not anecdotal

The research-software-engineering literature says plainly: **maintenance is not rewarded, funding flows to new projects not upkeep, and skilled research software engineers leave for industry, so tools are maintained "only for a limited period" and then decay** ([*Better incentives are needed to reward academic software development*, Nature Ecology & Evolution 2023](https://www.nature.com/articles/s41559-023-02008-w); [*Better Software, Better Research*, Software Sustainability Institute](https://www.software.ac.uk/publication/better-software-better-research); [*A survey of the state of the practice for research software in the US*, PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC9138129/)). JSM's "academic software becomes the abandonedware version of itself" is the consensus finding of an entire subfield.

### C3. Software rot is a law, not a failing — "Rome built on Rome"

**Lehman's laws of software evolution** (formulated 1974–1996 over real systems): real-world ("E-type") software exhibits *Continuing Change*, *Increasing Complexity* ("as a program is evolved its complexity increases **unless work is done to maintain or reduce it**"), and *Declining Quality* unless rigorously maintained ([Lehman's laws, Wikipedia summary](https://lawsofsoftwareengineering.com/laws/lehmans-laws/)). The "keep building Rome on top of Rome" pathology is Lehman's Increasing Complexity, and the debt framing makes the mechanism explicit: **Ward Cunningham's technical debt** (OOPSLA 1992) — shortcuts speed early development but must be "paid back promptly with a rewrite," or "the interest payments will grind the project to a halt" ([Cunningham / technical debt, Wikipedia](https://en.wikipedia.org/wiki/Technical_debt); [Fowler, *TechnicalDebt*](https://martinfowler.com/bliki/TechnicalDebt.html)). Systems that never pay it down become **Foote & Yoder's "Big Ball of Mud"** (PLoP 1997) — haphazardly-structured, sprawling, duct-taped code, which they observed is the *de facto* most common architecture precisely because the forces that produce it (time pressure, no maintenance reward) are ubiquitous. Academia supplies those forces and none of the paydown.

### C4. Step-zero decisions define the ceiling — this is path dependence

JSM's sharpest claim — *the architecture decisions you make at the start, when you understand the constraints least, define the maximum complexity the project can ever handle* — is **path dependence / technological lock-in**, formalized by Paul David (QWERTY, 1985) and W. Brian Arthur (increasing returns and lock-in, 1989). Their core results: **small early events have disproportionate, non-ergodic long-term effects** ("events occurring early in a path are not averaged out and forgotten"), and increasing returns plus switching costs lock systems into **suboptimal equilibria that persist** even when better alternatives exist ([David, *Clio and the Economics of QWERTY*, AER 1985; Arthur, *Competing Technologies, Increasing Returns, and Lock-In*, Economic Journal 1989 — overview](https://grokipedia.com/page/Path_dependence); [Arthur, *Increasing Returns and Path Dependence in the Economy*](https://sites.santafe.edu/~wbarthur/Books/IR_Book_Preface.pdf)). QWERTY is the canonical case: a layout chosen for 1870s mechanical constraints, locked in for 150 years despite better options. That is *precisely* "the decisions made at the point of least knowledge define the trajectory," with a Nobel-adjacent citation trail.

### C5. The blank-page refactor is engineering wisdom — but forbidden in academia

The discipline's own foundational text endorses restarting: **Fred Brooks, *The Mythical Man-Month* (1975): "Plan to throw one away; you will, anyhow."** The first system is a pilot whose real value is teaching you the requirements you couldn't know at the start; the only question is whether you plan for the throwaway or get forced into it ([Second-system effect, Wikipedia](https://en.wikipedia.org/wiki/Second-system_effect)). FreeMoCap's 3–4 full blank-page refactors are Brooks's pilot-system discipline in action: the tool "does the same thing" on paper but occupies a wildly different capability envelope — because each restart escaped a path-dependent ceiling (C4) instead of paying compounding interest (C3).

**The honest counterpoint, and its resolution.** Joel Spolsky's famous "Things You Should Never Do" (2000) calls rewrite-from-scratch "the single worst strategic mistake" a software company can make, using Netscape's 3-year rewrite gap as the cautionary tale ([Spolsky, *Things You Should Never Do, Part I*](https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/)). This must be addressed head-on, and it *strengthens* the X-Labs case when you do:

- Spolsky's warning is about discarding **accumulated domain knowledge and bug-fixes** in a **shipping commercial product with market share**, under **competitive time pressure** — the danger is "giving competitors a 2–3 year gift."
- Brooks's endorsement is about discarding **architecture** while **retaining the knowledge** — which is what a healthy refactor does, and what FreeMoCap did.
- Critically, **the thing that makes rewrite lethal in Spolsky's story is a *market* penalty** — the competitive clock. **Precompetitive scientific infrastructure has no such clock.** So the single strongest argument against periodic blank-page refactors *does not apply* to the kind of work X-Labs funds. Removing the market clock (which is what a sustained, autonomous, non-academic-non-commercial X-Lab does) is exactly what makes the healthy-but-unpublishable refactor *possible*. The objection becomes the justification.

### C6. Conway's Law — the linchpin tying C1–C5 to the organizational mandate

**Melvin Conway (1968):** "Any organization that designs a system will inevitably produce a design that mirrors the organization's communication structure" ([Conway's law, Fowler](https://martinfowler.com/bliki/ConwaysLaw.html)). The implication is the whole ballgame for this proposal: **you cannot get a well-architected, refactorable, narrow-waisted instrument out of an organization whose incentive structure is novelty-gated, maintenance-starved, publication-driven, and short-term-staffed.** Academia's structure produces abandonware big-balls-of-mud *by Conway's Law* — the architecture is downstream of the incentives. Therefore fixing the instrument requires fixing the *organization* first. That is not a rhetorical flourish; it is the literal reason the solicitation pairs "platform technology" with "new organizational structure." The **Inverse Conway Maneuver** — deliberately structuring the org to produce the desired architecture — is, in effect, what an X-Lab *is*.

### The synthesis for the proposal

Academic science can't build this instrument not for lack of talent but because: novelty-gating renders integrative work invisible (C1); maintenance is unfunded, so tools decay to abandonware (C2); software complexity lawfully increases and quality lawfully declines without paydown that academia never funds (C3); low-information step-zero decisions lock in a complexity ceiling via path dependence (C4); the only escape — the periodic blank-page refactor — is engineering-legitimate (Brooks) and its main danger is a *market* penalty that doesn't apply to precompetitive science, yet it's unpublishable and therefore career-suicidal in academia (C5); and by Conway's Law the resulting architecture is an inescapable mirror of these incentives (C6). **The X-Labs structure — sustained multi-year funding, operational autonomy, freedom from publication metrics, and organizational independence — is the specific, minimal intervention that removes every one of these constraints at once.** OBO shows the payoff horizon; the Internet shows the architecture and NSF's own gap-filling role.

---

## Proposal-safety note (same caveat as prior docs)

Everything in Part C is, on its face, an argument about *software and organizations*. The solicitation excludes "computational or software solutions without practical integration into an instrumentation system," and lists "advancement of platform technologies where the sole challenges to be addressed are non-technical" as out of scope. So this material belongs in the **Mission / "unmet by existing structures"** framing and the **organizational-structure** evaluation criterion (§Merit Review) — *not* as the technical core. Anchor the technical narrative to the instrument (calibration, synchronization, the physical multi-modal capture apparatus); use Part C to explain why the *organization* around it must be an X-Lab rather than a university lab. The two objectives are separate criteria — put the software/org argument where the org criterion lives.

---

```bibtex
@book{brooks1975mythical,
  author    = {Brooks, Frederick P.},
  title     = {The Mythical Man-Month: Essays on Software Engineering},
  publisher = {Addison-Wesley},
  year      = {1975},
  note      = {``Plan to throw one away; you will, anyhow.''; the second-system effect}
}

@article{lehman1980laws,
  author  = {Lehman, Meir M.},
  title   = {Programs, Life Cycles, and Laws of Software Evolution},
  journal = {Proceedings of the IEEE},
  volume  = {68},
  number  = {9},
  pages   = {1060--1076},
  year    = {1980},
  note    = {Laws of software evolution: continuing change, increasing complexity, declining quality}
}

@inproceedings{cunningham1992wycash,
  author    = {Cunningham, Ward},
  title     = {The {WyCash} Portfolio Management System},
  booktitle = {Addendum to the Proceedings of OOPSLA '92},
  year      = {1992},
  note      = {Origin of the ``technical debt'' metaphor}
}

@inproceedings{foote1997bigballofmud,
  author    = {Foote, Brian and Yoder, Joseph},
  title     = {Big Ball of Mud},
  booktitle = {Pattern Languages of Program Design 4 (PLoP)},
  year      = {1997}
}

@misc{spolsky2000neverrewrite,
  author       = {Spolsky, Joel},
  title        = {Things You Should Never Do, Part I},
  year         = {2000},
  howpublished = {\url{https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/}},
  note         = {Argues rewrite-from-scratch is the worst strategic mistake (Netscape)}
}

@article{conway1968committees,
  author  = {Conway, Melvin E.},
  title   = {How Do Committees Invent?},
  journal = {Datamation},
  volume  = {14},
  number  = {4},
  pages   = {28--31},
  year    = {1968},
  note    = {Conway's Law: system design mirrors organizational communication structure}
}

@article{david1985qwerty,
  author  = {David, Paul A.},
  title   = {Clio and the Economics of {QWERTY}},
  journal = {The American Economic Review},
  volume  = {75},
  number  = {2},
  pages   = {332--337},
  year    = {1985},
  note    = {Path dependence and technological lock-in}
}

@article{arthur1989lockin,
  author  = {Arthur, W. Brian},
  title   = {Competing Technologies, Increasing Returns, and Lock-In by Historical Events},
  journal = {The Economic Journal},
  volume  = {99},
  number  = {394},
  pages   = {116--131},
  year    = {1989}
}

@article{osc2015reproducibility,
  author  = {{Open Science Collaboration}},
  title   = {Estimating the Reproducibility of Psychological Science},
  journal = {Science},
  volume  = {349},
  number  = {6251},
  year    = {2015},
  doi     = {10.1126/science.aac4716},
  note    = {Nosek et al.; novelty bias and the replication crisis}
}

@article{aac2023betterincentives,
  author  = {{Anonymous / Nature Ecology \& Evolution editorial and authors}},
  title   = {Better incentives are needed to reward academic software development},
  journal = {Nature Ecology \& Evolution},
  year    = {2023},
  doi     = {10.1038/s41559-023-02008-w},
  url     = {https://www.nature.com/articles/s41559-023-02008-w}
}

@techreport{ssi_bettersoftware,
  author      = {{Software Sustainability Institute}},
  title       = {Better Software, Better Research},
  institution = {Software Sustainability Institute},
  url         = {https://www.software.ac.uk/publication/better-software-better-research},
  note        = {Research software sustainability and academic incentive misalignment}
}

@misc{nsf_xlabs_solicitation,
  author       = {{U.S. National Science Foundation, Directorate for Technology, Innovation and Partnerships}},
  title        = {OTASO for the NSF X-Labs Initiative (FY26)},
  year         = {2026},
  note         = {Dual objectives; Internet listed as exemplar platform technology (\S7.0); Phase 0 $\leq$\$1.5M, Phase 1 $\leq$\$50M/yr, sustained multi-year support}
}
```
