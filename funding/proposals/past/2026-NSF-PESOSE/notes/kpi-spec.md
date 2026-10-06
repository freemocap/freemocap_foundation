# KPI SPEC — the numbers layer of the proposal

**Status:** DRAFT FOR JON'S EDIT — fill in every `[JON: ...]` field with the
real, defensible number (and its source/date), and delete whole metric blocks
you don't want. Nothing here is integrated until you've filled it and we've
placed it.

**Where it lands:** a compact table in **Part 2 (Current State)**, referenced by
**Part 7's evaluation plan** as the baseline column of the per-gap evaluation.
One artifact, two jobs: evidence register (Part 2, solicitation-required
"current status") + evaluation baseline (Part 7, criterion d).

**Format:** each metric below is a block. Edit inline. Delete blocks freely.
My suggested keep-set for the final 6-8-row table is marked `[KEEP?]` — but
that's my judgment, not a constraint.

---

## 1. Known consistency problems to fix while we're at it

- **§2 first paragraph** claims "over 10,000 Github stars", "over 15,000 users
  across 153 countries", "over 4,000 members" — your note says these need
  updating to accurate values.
- **§3 Stakeholder discovery** claims "more than 15,000 users" — consistent
  with §2 but both may be stale.
- **X-Labs proposal (July)** claimed "15,000 researchers... across 152
  countries" — countries: 152 vs 153. Pick one.
- **Rule going forward:** every number in the proposal comes from this spec (or
  is deliberately rounded from it), and records an as-of date.

---

## 2. The metric blocks

### M1 — GitHub stars, core repo `[KEEP?]`
- **Value:** `[JON]`
- **As-of:** `[JON]`
- **Source:** GitHub
- **Gap it stresses:** none directly (visibility/context)
- **Track 1 use:** context row

### M2 — GitHub stars, all component repos combined `[KEEP?]`
- **Value:** `[JON]`
- **As-of:** `[JON]`
- **Source:** GitHub
- **Gap it stresses:** none (context)
- **Track 1 use:** scale of the codebase surface area

### M3 — Estimated users (telemetry) `[KEEP?]`
- **Value:** `[JON]`
- **As-of:** `[JON]`
- **Source:** telemetry
- **Gap it stresses:** Knowledge
- **Track 1 use:** baseline for contributor-conversion rate

### M4 — Countries `[KEEP?]`
- **Value:** `[JON]` (reconcile 152 vs 153)
- **As-of:** `[JON]`
- **Source:** telemetry
- **Gap it stresses:** none (breadth of demand)
- **Track 1 use:** demand-breadth evidence

### M5 — Discord / forum members `[KEEP?]`
- **Value:** `[JON]`
- **As-of:** `[JON]`
- **Source:** Discord/forum
- **Gap it stresses:** Knowledge
- **Track 1 use:** baseline for self-serve support ratio

### M6 — Forum questions answered by core team vs. community (%)
> The single most stadium-diagnostic metric we could show: it measures how far
> support depends on the core team, which IS the stadium shape.
- **Value:** `[JON — do we have this, or can we cheaply derive it before Sept 1?]`
- **As-of:** `[JON]`
- **Source:** `[JON — forum analytics?]`
- **Gap it stresses:** Knowledge
- **Track 1 use:** dependence-on-core-team baseline; if not derivable, it
  becomes a *discovery output* instead of a baseline — fine, say so here.

### M7 — Active contributors (commits in the last 12 months) `[KEEP?]`
- **Value:** `[JON]`
- **As-of:** `[JON]`
- **Source:** git history
- **Gap it stresses:** Authority
- **Track 1 use:** contributor-growth baseline

### M8 — Maintainer count with merge rights (bus factor) `[KEEP?]`
- **Value:** `[JON]`
- **As-of:** `[JON]`
- **Source:** `[JON — repo settings / your knowledge]`
- **Gap it stresses:** Authority
- **Track 1 use:** THE bus-factor number; baseline for succession-scoping

### M9 — Median time-to-first-merged-PR, new contributor
- **Value:** `[JON — derivable from git history?]`
- **As-of:** `[JON]`
- **Source:** git history
- **Gap it stresses:** Knowledge
- **Track 1 use:** onboarding-friction baseline; pairs with §6's education work

### M10 — Open issue backlog / median response time
- **Value:** `[JON]`
- **As-of:** `[JON]`
- **Source:** GitHub
- **Gap it stresses:** Authority
- **Track 1 use:** demand-vs-capacity evidence

### M11 — Validation accuracy: gait error vs. marker-based (degrees) `[KEEP?]`
- **Value:** `[JON — sub-5°? exact value]`
- **As-of:** `[JON]`
- **Source:** cherian2026 + the dissertation cite you mentioned (get me the ref)
- **Gap it stresses:** Trust
- **Track 1 use:** integrity-check baseline for Part 5

### M12 — Downloads / installer runs (monthly)
- **Value:** `[JON]`
- **As-of:** `[JON]`
- **Source:** `[JON — installer telemetry?]`
- **Gap it stresses:** none (adoption rate)
- **Track 1 use:** adoption trend; pairs with the "one-click installer is WILD" lede fix

### M13 — Weekly community call attendance
- **Value:** `[JON]`
- **As-of:** `[JON]`
- **Source:** call logs
- **Gap it stresses:** Knowledge
- **Track 1 use:** engagement baseline

### M14 — Institutions running FreeMoCap in coursework
- **Value:** `[JON]`
- **As-of:** `[JON]`
- **Source:** `[JON — known examples?]`
- **Gap it stresses:** Knowledge
- **Track 1 use:** education-pathway demand evidence

---

## 3. Placement & rendering (mechanical, decided later)

- Lives in Part 2 after the first paragraph, as a numbered figure
  (`#figure(table(...), caption: [...]) <tbl-kpi>`), so it gets a caption under
  the new caption style and a stable label for `@tbl-kpi` references.
- Cell text at ~9.5pt is legal (PAPPG II.C.2.a exempts tables) if width demands.
- Part 7's Evaluation subsection then reads baselines from `@tbl-kpi` — the
  per-gap evaluation cites rows by metric name, not by re-printing values.

---

## 4. Things I need from you (beyond numbers)

### 4.1 PolyRepo rationale
Your §2 note said "ask me for details." 2-3 sentences on why component repos
are the right structure — domain separation, per-repo maintainership,
independent release cadence, tech-swap agility. `[JON: write here]`

### 4.2 Sub-5° clinical-accuracy source
The citation in Aaron's dissertation you mentioned. `[JON: paste the ref]`

### 4.3 Letters of collaboration — final list
Scholl Lab, The Possible Zone, Artisans Asylum, Imatest, Endurance Idehen as
mentor... `[JON: full list, so the referencing convention is built on real names]`

### 4.4 The 2024 POSE award — received or not?
Decides whether the disabled Part 9 (prior support) must be enabled per PAPPG
II.D.2.d(iii). `[JON: yes/no]`
