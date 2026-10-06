# Big Communal Science — precedents for capturing & disseminating instrument-grounded data commons

*Advisory research briefing (bot slop by definition). For JSM. Ninth in the series; builds on [D3] why-not-academia (abandonware/org), [D4] sensor-grounded ontology, [D7] metrology/tiers. Case studies of how scientific communities manage large-scale, arbitrarily-complex, instrument-grounded datasets — what to emulate, what to avoid — framed around the tiered high→low-resource dissemination model. Cited inline; BibTeX at bottom.*

---

## 0. The question this doc answers

We will produce empirical captures **beyond the capacity of any single lab** to record. So the proposal can't read as "a tool that makes datasets." It has to answer: *how does the community capture at maximum density, disseminate outward, and build tools recursively on the result — for decades?* Every field that has faced this has left a playbook. Below: LHC, astronomy (SDSS / Hubble-JWST / Rubin / Astropy), genomics (PDB / Bermuda), gravitational waves (LIGO/GWOSC), and the neuroscience commons (BRAIN Initiative / BIDS / NWB) — plus the cautionary tale (Blue Brain / Human Brain Project). The recurring lessons map cleanly onto the sensor-grounded-ontology + metrology-traceability spine [D4][D7] and the tiered dissemination Jon wants.

---

## 1. The organizing lens — Eghbal's four project types (and which one to engineer toward)

Nadia Eghbal's *Working in Public* (2020) classifies open projects by **user growth × contributor growth** ([overview](https://blas.com/working-in-public/); [notes](https://notes.aquiles.me/essays/notes_on_working_in_public_-_nadia_eghbal/)):

- **Federations** — high users **+** high contributors (Linux, Wikipedia, Rust). Distributed governance, sustainable.
- **Clubs** — high contributors, modest users; **most users are also developers** (Eghbal's example: **Astropy**). High context, high affinity, self-maintaining, but a limited-size community.
- **Stadiums** — high users, **few** contributors; a small maintainer core with a huge passive audience. The **burnout / abandonware trap** [D3].
- **Toys** — low/low; personal projects.

**Strategic read for us:** the technical core should behave like a **club** (the people who use the sensor-grounded ontology are the people who extend it — the antidote to academic abandonware [D3]), but the *reach* must be engineered toward a **federation** (many labs + classrooms as users **and** contributors). The failure mode to design against is the **stadium**: becoming a wildly-used tool maintained by an overwhelmed few. Naming this quadrant target explicitly is a governance-structure argument the X-Labs org criterion wants [D3].

---

## 2. Case studies — approach, strengths, weaknesses, lessons

### 2a. LHC / CERN — the tiered data grid + the upgrade cadence
- **Approach:** capture at maximum density, reduce in real time (trigger), then **distribute through a tiered grid (WLCG)**: **Tier 0** (CERN: prompt reconstruction, archival) → **Tier 1** (≈11 national centers: custodial storage, reprocessing) → **Tier 2** (≈140+ institute centers: analysis + simulation) → Tier 3 (individual). ~8000 physicists get near-real-time access ([WLCG, Wikipedia](https://en.wikipedia.org/wiki/Worldwide_LHC_Computing_Grid); [CERN Courier](https://cerncourier.com/a/the-lhcs-worldwide-computer/)).
- **The cadence:** the community keeps analyzing a run's data for years while the **hardware is upgraded (HL-LHC)** based on lessons from the prior run. Capture → mine-for-years → upgrade-instrument → repeat.
- **Emulate:** the **tiered grid is literally the high→low-resource dissemination model** — data (and calibration, and tools) flow outward from a central high-density capture. The "upgrade the instrument while the community mines the last dataset" rhythm = the multi-phase X-Labs tempo.
- **Avoid:** enormous central cost/coordination overhead; and the **trigger throws data away irreversibly** — an un-recoverable decision about what's worth keeping (our analogue: what you don't measure stays un-hydrated [D6]; choose the capture envelope deliberately).

### 2b. Astronomy archives — proprietary periods, tiered rights, and the query layer
- **SDSS (Sloan):** the gold-standard **data-release** model — periodic public releases via **SkyServer** with both raw (DAS) and queryable catalog (CAS) layers. It democratized astronomy and **enabled Galaxy Zoo** citizen science (100k+ public classifiers) ([SkyServer traffic](https://arxiv.org/pdf/cs/0701173); [Galaxy Zoo](https://academic.oup.com/mnras/article/435/4/2835/1022913)).
- **Hubble/JWST (MAST):** **proprietary period then open** — Hubble reduced to 6 months; JWST default 1-year exclusive access, then public to all via MAST (which serves 20+ missions) ([Science, JWST open?](https://www.science.org/content/article/should-webb-telescope-s-data-be-open-all)).
- **Rubin/LSST:** explicit **tiered data rights** — 2-year proprietary window for rights-holders (US/Chile astronomers + in-kind contributors), with a **"derived data products"** mechanism to share with non-rights-holders ([Rubin data rights](https://www.lsst.org/content/data-rights)).
- **Emulate:** the **incentive balance** (reward the lab that built/collected before wider release) is the fair answer to "why would a high-resource lab share?" — *though we adapt this to **home-lab discretion** (hold → clean → publish), not a fixed proprietary clock; see §4*; the **query/portal layer** (SkyServer) is what lets students and the public actually use the data → classroom reach; **Virtual Observatory** interoperability standards = the ontology/traceability layer [D4].
- **Avoid:** Rubin's caution — even *after* the proprietary period, non-rights-holders can be shut out of the access centers; gating can ossify into exclusion. Keep the low-resource/classroom tier genuinely open.

### 2c. Astropy — the software commons on top of the data commons
- **Approach:** a community-built core Python library that **unifies analysis across all the telescope archives**; Eghbal's canonical **club** — users are developers, so it's self-maintaining ([Astropy](https://www.astropy.org/about.html)).
- **Emulate:** the data commons needs a **software commons** on top or it's just a warehouse. "Everyone who uses it can fix/extend it" is the sustainability model academia otherwise lacks [D3].
- **Avoid:** a pure club has a **low user-growth ceiling** — great for astronomers-who-code, but it won't by itself reach classrooms. Pair the club core with an easy on-ramp (cognitive-load/usability [D4]) to grow toward federation.

### 2d. Genomics — setting the sharing *culture* early
- **Protein Data Bank (PDB):** pre-publication sharing of structural coordinates since 1971 — the granddaddy of open scientific data commons.
- **Bermuda Principles (1996):** the Human Genome Project mandated **release of DNA sequence within 24 hours** of generation into the public domain — a norm *culturally imposed by the community + funders* that became the archetype for rapid data release ([Bermuda Principles, genome.gov](https://www.genome.gov/25520385/online-education-kit-1997-bermuda-meeting-affirms-principle-of-data-release); [Bermuda Triangle history, PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC7307446/)).
- **Emulate:** **set the release norm at the very start.** Data-sharing culture is established early or not at all; a funder/consortium can simply mandate it, and the downstream value is enormous.

### 2e. LIGO / GWOSC — open data + open tooling + tutorials
- **Approach:** a single extreme-capture instrument whose data, after a proprietary period, is fully released via the **Gravitational Wave Open Science Center** — **with software, tutorials, and documentation** ([GWOSC](https://gwosc.org/about/)).
- **Emulate:** open data **bundled with open tooling and teaching materials** is what lowers the barrier to the low-resource/classroom tier. Data alone isn't enough; ship the on-ramp.

### 2f. Neuroscience commons — standards-first (the most direct analog)
- **Approach:** the BRAIN Initiative built a **federated network of archives** unified by **community data standards**: **BIDS** (Brain Imaging Data Structure) for imaging, **NWB** (Neurodata Without Borders) for neurophysiology, surfaced through **OpenNeuro** (600+ datasets, 20k+ participants) and **DANDI** (400+ dandisets, 350+ TB, 20+ species), all under **FAIR** principles; plus the **Human Connectome Project / ConnectomeDB** ([OpenNeuro, eLife](https://elifesciences.org/articles/71774); [DANDI](https://www.nature.com/articles/s41597-025-06285-x)).
- **Emulate — this is the strongest structural precedent for us:** the winning move in neuro was **a community file/metadata standard (BIDS/NWB) that made heterogeneous data interoperable**, plus **federated** (not monolithic) archives. That *is* the sensor-grounded ontology + metrology-traceability registry play [D4][D7], with a proven governance model to copy. BIDS especially: a simple, community-owned convention that unlocked a field.
- **Avoid:** standards proliferation and adoption friction; success required real community buy-in and easy tooling, not a mandate from above.

### 2g. Blue Brain / Human Brain Project — the cautionary tale
- **What happened:** the EU's **€1B Human Brain Project** (grown out of Markram's Blue Brain) aimed to *simulate* the brain top-down. In 2014, **800+ neuroscientists signed an open letter** revolting against its science and governance; a review committee sided with critics and forced a management overhaul ([Science, the revolt](https://www.science.org/content/article/updated-european-neuroscientists-revolt-against-eus-human-brain-project); [MIT Tech Review post-mortem](https://www.technologyreview.com/2021/08/25/1032133/big-science-human-brain-failure/)). Blue Brain itself concluded as planned in 2024 with ~300 papers + an open platform ([Blue Brain, EPFL](https://bluebrain.epfl.ch/)).
- **Avoid (the lessons):** (1) **don't over-centralize around one grand vision/PI** — top-down flagships alienate the community they need; (2) **don't promise a total unification you can't deliver**; (3) critics' core point — *simulating the hardware atom-by-atom tells you nothing about the cognition/software* — is a warning to **stay grounded in measurement, not simulation**; (4) engage the community **bottom-up**.
- **Why this *validates* our approach:** sensor-grounded (measurement-first, not simulation-first), composable/federated (not one monolithic model), community-owned (not one-PI). We are, almost point-for-point, the anti-HBP.

---

## 3. Cross-cutting lessons → our design

| Lesson | Source precedent | Our mechanism |
|---|---|---|
| **Tiered dissemination** (density falls, reach grows outward) | LHC WLCG; SDSS/Rubin tiers | Tier 0 X-Lab → Tier 1 partner labs → Tier 2 universities → Tier 3 classrooms/citizen, all on one ontology [D4] |
| **Standards-first interoperability** | BIDS/NWB; Virtual Observatory; PDB format | The sensor-grounded ontology + metrological traceability registry [D4][D7]; adapters [D2] |
| **Set the sharing culture early** | Bermuda Principles; PDB | Release norm + uncertainty-tagged data mandated from Phase 0 |
| **Home-lab-controlled release (NO mandated proprietary window)** | Hubble/JWST/Rubin (adapted) | Home lab holds → cleans → publishes at its discretion; publisher/subscriber tiers set by the data's stakeholders |
| **Software commons on the data commons** | Astropy | Community-extensible analysis tooling; users-as-developers core |
| **Bundle open tools + tutorials** | LIGO/GWOSC | Lower the barrier for the classroom/low-resource tier |
| **Engineer a federation; avoid the stadium & the flagship** | Eghbal; HBP failure | Club-like core scaled to federation; distributed governance, not one-PI |
| **Measurement-first, not simulation-first** | HBP cautionary tale | Sensor-grounded [D4]; the anti-HBP |
| **Deliberate capture envelope** | LHC trigger (irreversible reduction) | Choose what to hydrate; document what's left un-measured [D6] |
| **Upgrade instrument while community mines prior data** | HL-LHC | The multi-phase X-Labs cadence [D3] |

---

## 4. The tiered dissemination model, stated for us (and the strategic-dominance framing)

The precedents converge on a concrete structure — the thing to actually propose:

- **Tier 0 — the X-Lab / flagship instrument.** Maximum modality density, best calibration, lowest uncertainty. (LHC Tier 0 / the big telescope.)
- **Tier 1 — well-resourced partner labs.** Mirror, reprocess, contribute new modalities (ferret+neural, guinea-fowl EMG, etc.).
- **Tier 2 — mid-resource universities/labs.** Run analyses; connect *their own* captures into the shared ontology.
- **Tier 3 — classrooms, low-resource sites, citizen science.** Cheaper tools, **higher uncertainty**, but **the same sensor-grounded ontology** — commensurable because every measurement is metrologically traceable and uncertainty-tagged [D7]. (SkyServer/Galaxy Zoo reach.)

**Dissemination model — home-lab-controlled, publisher/subscriber (NOT a mandated proprietary window).** We do *not* impose a proprietary period or a forced flow-out. Each instrument instance has a **home lab** that owns its captures: it collects, then **holds, cleans, inspects, and — entirely at its own discretion — publishes**. Publication pushes to **subscribers** as an *optional* download, at whatever **cleanliness/access tier the data's stakeholders choose** (raw → cleaned → distilled); other dissemination happens however the home lab decides (publications, teaching materials, etc.). As data is refined, **exemplar recordings** — representative subjects, interesting behaviors, clipped/cleaned/visualized/written-up — get distilled and can be pushed to a broad audience; these distilled exemplars are what drive **teaching settings** and seed publications, research programs, and proposals. So the picture is not "density falls as it flows from a central tap," but "**each home lab curates and publishes on its own terms, and everyone downstream subscribes to the tier they're granted**" — still commensurable across tiers because every record is uncertainty-tagged and ontology-consistent [D4][D7]. (The resource tiers above describe *uncertainty scale of tooling*; the publisher/subscriber model describes *who owns and releases what* — orthogonal, and both hold.)

**National-leadership framing (use the FOA's own words, not "dominance").** The solicitation frames the whole initiative around the *"urgent need for the United States to maintain global leadership in science and technology"* (§2.0), *"the benefit of the nation and national competitiveness"* (§3.0), *"technology sectors where U.S. competitiveness is a priority"* (§3.1), and sustaining a *"national innovation ecosystem"* (§8.0) — that is the language to echo. Whoever sets the *standard* anchors the field, as CERN, NIST, and the astronomy archives anchor their global communities. By making the **open sensor-grounded ontology** the lingua franca (while *also* building the high-end hardware for those who can run it), the X-Lab becomes the US-anchored, vendor-neutral center of gravity for the field, reaching from flagship labs to classrooms. Standard-setting is soft power: being the reference body advances US scientific leadership *without* depending on owning the instruments [D3 "be the NIST/JCTLM of this field"].

---

## 5. Deploying this in the 8-page proposal (say vs allude)

- **Say (Outcomes / impact / org-structure):** the tiered dissemination model (one crisp diagram-worthy paragraph); the intent to set an open standard + release norm; the federation governance target.
- **Allude (one line each):** the precedents — "following the model that made BIDS/NWB, the LHC computing grid, and the SDSS archive successful" — don't expound each history [D5 say-vs-allude].
- **Use as the anti-HBP contrast** if a reviewer worries about overreach: measurement-first, federated, community-owned.
- **Strategic-dominance** belongs in Mission/impact framing, phrased as standard-setting & broad reach, not chest-thumping.
- **Don't** let this become a second mission (data-commons governance) that dilutes the instrument story — it's the *dissemination/impact* wing of the instrument.

---

## 6. Caveats

- These are analogies; our data (behaving agents, multimodal, cross-species) is messier and less standardized than particle events or genome sequences — the standardization challenge is harder, which is *why* the sensor-grounded ontology + metrology is load-bearing.
- "Strategic dominance" framing should be evidence-based and measured; NSF reviewers respond to *enabling broad national capability*, not nationalism.
- Proprietary-period design is genuinely contested (JWST debate); pick a defensible default and say why.

---

```bibtex
@book{eghbal2020working,
  author={Eghbal, Nadia}, title={Working in Public: The Making and Maintenance of Open Source Software},
  publisher={Stripe Press}, year={2020},
  note={Project taxonomy: toys / clubs / federations / stadiums; Astropy as the canonical ``club''}
}
@misc{wlcg, title={Worldwide LHC Computing Grid (Tier 0/1/2 model)}, howpublished={\url{https://en.wikipedia.org/wiki/Worldwide_LHC_Computing_Grid}}, year={2024}}
@article{bermuda1996, title={The Bermuda Principles: 24-hour public release of HGP DNA sequence (1996)},
  howpublished={\url{https://www.genome.gov/25520385}}, year={1996},
  note={See also Maxson Jones et al., ``The Bermuda Triangle,'' J. Hist. Biol. 2018}}
@article{openneuro2021, author={Markiewicz, C. et al.}, title={The OpenNeuro resource for sharing of neuroscience data}, journal={eLife}, year={2021}, doi={10.7554/eLife.71774}}
@article{dandi2025, title={The DANDI Archive for neurophysiology (NWB standard)}, journal={Scientific Data}, year={2025}, doi={10.1038/s41597-025-06285-x}}
@misc{bids, title={Brain Imaging Data Structure (BIDS) / Neurodata Without Borders (NWB) community standards}, howpublished={\url{https://bids.neuroimaging.io}}, year={2024}}
@misc{rubin_datarights, title={Vera C. Rubin Observatory / LSST Data Rights \& tiered access}, howpublished={\url{https://www.lsst.org/content/data-rights}}, year={2024}}
@misc{jwst_open, title={Should Webb telescope's data be open to all? (proprietary periods)}, howpublished={\url{https://www.science.org/content/article/should-webb-telescope-s-data-be-open-all}}, year={2022}}
@misc{sdss_skyserver, title={SDSS SkyServer \& Galaxy Zoo citizen science}, howpublished={\url{https://academic.oup.com/mnras/article/435/4/2835/1022913}}, year={2013}}
@misc{gwosc, title={Gravitational Wave Open Science Center (LIGO/Virgo/KAGRA open data + tutorials)}, howpublished={\url{https://gwosc.org/about/}}, year={2024}}
@misc{hbp_revolt, title={European neuroscientists revolt against the EU's Human Brain Project}, howpublished={\url{https://www.science.org/content/article/updated-european-neuroscientists-revolt-against-eus-human-brain-project}}, year={2014}}
@misc{hbp_postmortem, title={How big science failed to unlock the mysteries of the human brain}, howpublished={\url{https://www.technologyreview.com/2021/08/25/1032133/big-science-human-brain-failure/}}, year={2021}}
```
