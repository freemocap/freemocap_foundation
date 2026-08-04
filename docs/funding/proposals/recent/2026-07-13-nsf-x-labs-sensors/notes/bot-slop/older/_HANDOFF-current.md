# HANDOFF (current) — FreeMoCap NSF X-Labs proposal

*Supersedes `_HANDOFF-consolidation.md` (that one was for the consolidation task, now done). Written after building the consolidated vault, the bibliography, and the proposal-planning layer. Read this first.*

---

## Where things stand
Everything advisory lives in `notes/bot-slop/freemocap-xlab-consolodated-docs/` — a linked Obsidian vault (~150 notes, all cross-linked, 0 broken links). Two entry points:
- **`00-MOC.md`** — the consolidated *landscape* (the thesis, the architecture, the scientific landscape, the physical instrument, why-not-academia, the NSF fit) as concepts / threads / integrative docs, plus a glossary, personnel index, and `bibliography/` (one note per citation).
- **`proposal-planning/00-proposal-planning-MOC.md`** — the *strategy* layer, mapped 1:1 to the proposal sections (`01-mission` … `07-logistics-and-coi`). Start here when drafting.

The bibliography is `proposal/FMCF-NSF-XLABS.bib` (78 entries, `authorYYYY` keys). Each entry has a companion note under the vault's `bibliography/`.

## The plan, in one paragraph
A physical **instrument for the complete empirical capture of the agent–environment interaction**: a densely instrumented capture volume in **Boston** (markerless mocap + force plates + EMG + custom binocular eye trackers + mobile EEG + VR/AR), a wearable/outdoor **Wing B** rig with an autonomous **drone swarm**, and a distributed **animal-model network** (ferret/mouse/guinea-fowl with Neuropixels, miniscopes, motor-unit EMG). Built on the proven **FreeMoCap** seed, run by the independent **FreeMoCap Foundation X-Lab**. Two X-Labs objectives, both hit: the instrument = the *platform technology*; the foundation + tiered network + governance = the *new organizational structure*.

## The central admonition (read this before drafting anything)
**Build the proposal from the plan we have NOW — not from the worries we had before we had a good plan.**

Early in this project the pitch was more abstract (ontology / complexity-management / Palantir-Anduril analogy), so a lot of energy went into *defending against the "this is just software" exclusion*. **While this remains a wise things to be concerned about, the NEW plan is specifically designed to counter it. As such, we should not conitnue to definsive organize around that concern, as it has been largely obviated by the new organization of this proposal.** The plan we landed on is self-evidently physical hardware (a building full of synchronized sensors, custom-built eye trackers, animal rigs, a drone swarm). It clears the software exclusion by *what it is*, not by rhetorical contortion.

So, concretely:
- **Assert the instrument, don't defend it.** A single instrument-first sentence handles the exclusion; do not bake "must prove it's not software" through every section. (The vault's `the-software-exclusion` note has been repositioned to say exactly this.)
- **Lead concrete, not abstract.** For Mission, use the on-disk **funnel → hedge → gap → hero** scaffold in `proposal/sections/1-mission.typ`; keep the concrete opening ("information flows in, forces flow out — the brain exists to yank the bones around"); the empty **hero** block is where the Boston build + sensors + animal network go. Do **not** open on "measurement revolutions" abstractions.
- **The real thrust is complexity management.** The binding challenge is fusing many modalities × scales × species into one coherent instrument. Treat **complexity management as a first-order problem**, using the toolkit that **three domains** independently converged on — enterprise (Palantir), defense (Maven/Lattice), and **video games** (entity-component systems, MTG-style override layers). The software/ontology is *how the hardware instrument scales and lasts* — a stated strength, in a clause. See the vault's `complexity-management-first-order` note and the `#software-aphorism` tag.
- **General principle:** when the plan improves, drop the defenses that belonged to the old plan. Don't carry early-phase anxieties into later phases.

## Standing constraints (unchanged)
- Role =  THE AI DOES NOT WRITE THE PROPOSAL. Your role is **observer & advisor, NOT writer of proposal prose.** Do not edit `proposal/**/*.typ` or `proposal/0-summary.md`. The vault (bot-slop) and the `.bib` are the ONLY editable artifacts.
- Personnel by **initials** (public repo); a local `.env` maps initials→names.
- Verify before asserting — numbers, citations, biology, identities. Open items live in the vault's `_verification-punchlist`.


## Leftover cleanup (mount blocked `rm` this session)
Throwaway/superseded files to delete once on a clean setup: `freemocap-xlab-consolodated-docs/_diag_probe.md`, `_probe/`, `_probe.txt`, `_b.txt`, the empty `dramatis-personae.md`, the empty `reference/` folder, and `threads/Science - Military tech alignment.md` (its content now lives in `threads/science-military-coevolution.md`). Also pending if wanted: convert the 66 newer `.bib` entries to biblatex to match the original 12.

*— end of current handoff —*
