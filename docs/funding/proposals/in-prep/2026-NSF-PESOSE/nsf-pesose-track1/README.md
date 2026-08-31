# NSF PESOSE Track 1 — Typst proposal template

Scaffolding for a **NSF 26-506 Track 1** (scoping and planning) submission.
Deadline **September 1, 2026, 5 p.m. submitting organization's local time**;
next cycle March 2, 2027.

> **Not compile-tested.** This was written without a Typst install available.
> Run `./build.sh draft` first and expect to fix a syntax error or two.
> Targets **Typst 0.12+** (uses `par.spacing` and argument-less
> `counter.final()`).

## Why one PDF per section

NSF uploads each proposal section as a **separate PDF** through Research.gov.
So this is not one document with chapters — it is several independent documents
sharing a compliance layer. `build.sh` emits one PDF per section into `out/`.

The one place "write separately, then combine" applies is the Project
Description: eight part files in `02-project-description/sections/` that
`main.typ` includes in order (shared figures/tables live in
`02-project-description/floats/`), producing a single 7-page PDF.

## Layout

```
lib/nsf.typ                       compliance layer — fonts, margins, leading, helpers
lib/refs.typ                      all citations; shared numbering across PDFs
01-project-summary/               1 page, three headed blocks, keywords last line
02-project-description/
  main.typ                        assembler + the spine, restated
  parts/01-need-and-framing.typ   ~1.0pp   criterion (a)
  parts/02-product-status.typ     ~1.0pp   solicitation-required content
  parts/03-ecosystem-discovery.typ ~0.75pp mandated Track 1 area
  parts/04-organization-governance.typ ~1.0pp mandated area — criterion (b)
  parts/05-risk-security.typ      ~0.75pp  mandated area
  parts/06-community-building.typ ~0.75pp  mandated area — criterion (c)
  parts/07-milestones-evaluation.typ ~0.75pp criterion (d)
  parts/08-broader-impacts.typ    ~0.5pp   PAPPG-required exact heading
  parts/09-prior-nsf-support.typ  ~0.5pp   conditional; delete if N/A
03-references-cited/              no limit; where URLs are allowed to live
04-budget-justification/          5 pages; $300K / 12 months ceiling
05-facilities/                    narrative only, zero dollar figures
06-synergistic-activities/        copy TEMPLATE.typ per senior/key person
07-personnel-list/                solicitation-required table
08-letters/                       copy TEMPLATE-loc.typ per letter (need 3–5)
09-mentoring-plan/                only if funding postdocs or grad students
build.sh                          compile all + compliance checks
```

Page budgets sum to roughly seven. They are a starting allocation, not gospel —
move space between sections deliberately rather than by accident.

## Workflow

```bash
./build.sh draft     # page counters in the footer, notes and budget markers visible
./build.sh           # clean submission PDFs in out/
```

Draft mode is the template's **default** (`DRAFT = true` in `template/nsf.typ`),
so plain compiles and Tinymist VS Code previews show the draft artifacts —
footer, notes, flags, suggestions, budget markers, and a thin frame around the
6.5in x 9in text block marking the PAPPG 1-inch margin boundary (anything
crossing that line is either a margin violation or a draft artifact) — with no
command-line flags while you write. The only way to produce a submission-clean
PDF is an explicit `--input draft=false`, which `build.sh` always supplies in
final mode:

```bash
./build.sh draft                       # draft artifacts on (explicit)
./build.sh                             # submission build — draft artifacts forcibly off
typst watch 02-project-description/main.typ   # live preview, draft mode
typst compile --input draft=false 02-project-description/main.typ  # manual submission build
```

Draft footers sit in the margin, which PAPPG forbids for proposer-supplied
content — that is why they only exist in draft mode.

### Review marks (`flag` / `suggestion`)

Ported from the NSF X-Labs proposal (`helpers/xref.typ` there, now living in
`template/nsf.typ` here, gated on the same CLI-driven `DRAFT` flag). They keep
the author's voice and any drafted-by-assistant voice separable at a glance in
the draft compile:

- `#flag(kind: "redundant")[..]` — red highlight: says what content elsewhere
  already says; candidate to cut + cross-reference instead.
- `#flag(kind: "verbose")[..]` — blue highlight: right idea, too wordy;
  candidate to tighten, not necessarily delete.
- `#flag(kind: "clarity")[..]` — amber highlight: hard to understand. The
  original words are **never** touched — a reword can flip meaning. Put the
  proposed rewrite in an adjacent `#suggestion[..]` block and let the author
  compare.
- `#flag(kind: "awk")[..]` — pink highlight: understandable but clumsy —
  awkward phrasing, clunky rhythm. Candidate to smooth while keeping the
  meaning; pair with a `#suggestion[..]` when a rewrite exists.
- `#suggestion(note: [..])[..]` — green block of newly drafted prose. The
  `note:` argument is source-only (kept in the `.typ`, never rendered). In a
  submission build a suggestion renders **nothing**, so it can never ship
  un-integrated; a flag passes its text through untouched, because a flag is
  a review mark, not a change.

Mechanical fixes (unambiguous typos, broken markup) are still edited directly,
no marker. Everything above disappears from the PDF when `build.sh` runs
without `draft`, and every section file already imports from
`template/nsf.typ`, so opting in is one extra name in the existing import.

Text lifecycle during integration work: `#suggestion` (proposed, green,
vanishes in submission builds) → `#new` (accepted-and-tracked, light-blue
block in draft builds, **unwraps to plain prose in submission builds**) →
plain prose (settled). Proposed citations appear as `//` comments only until
validated into Zotero/the bib — never rendered.

## What the compliance layer handles for you

- Fonts, size, and line density (PAPPG II.C.2): New Computer Modern at 11pt with
  leading giving ~5 lines per vertical inch, against a ceiling of 6
- 1-inch margins, US Letter, single column, no page numbers
- `broader-impacts()` guarantees the exact required heading string
- `keywords()` asserts the 2–5 count NSF 26-506 requires
- `prior-support()` enforces the Intellectual Merit / Broader Impacts split and
  auto-emits the required "No publications were produced under this award."
- `c("key")` gives in-line citations that stay numbered consistently with the
  separate References Cited PDF — which is how you point at the FreeMoCap repo
  without putting a URL in the Project Description
- Figure captions render at 8.5pt, inset from both margins and block-justified
  so they read as captions; table text may be shrunk below 10pt, all under the
  explicit PAPPG 24-1 II.C.2.a exemption for "mathematical formulas or
  equations, figures, tables, or diagram captions". That list is exhaustive:
  footnotes, references, and body prose are **not** exempt and must stay at the
  full 11pt (Computer Modern). The six-lines-per-inch ceiling (II.C.2.b) has NO
  small-text carve-out, so caption leading is already set at the ~12pt-baseline
  floor. Figures/tables still count toward page limits.

`build.sh` additionally fails the build on page-limit overruns and URLs in the
Project Description, and prints the embedded fonts so a silent font substitution
can't slip through.

## The spine

Every sentence in the Project Description should be load-bearing for:

> FreeMoCap is already a working product with real users; what does not exist
> yet is the organization that would let it survive independent of its current
> maintainers — and twelve months of scoping is what produces the credible plan
> for that organization.

Sentence-level test, in order:

1. Does this make the **ecosystem** more believable, or just the **software**
   more impressive? Cut the latter.
2. Is this **existing evidence** or **planned activity**? Never blur them.
3. Which of the four Track 1 review criteria does it serve? If none, cut it.

The four criteria: (a) societal or national need not currently being addressed
adequately; (b) long-term sustaining vision; (c) recruitment strategy for
contributors *and* users; (d) specific, actionable milestones plus evaluation
plan.

Two things to keep front of mind while drafting:

- **Track 1 supports planning, not product development.** The 2.0 refactor is
  *evidence* the product is real and maintained. It cannot be the funded work.
- **Incorporation is not governance.** The Foundation already existing is
  atypical for a Track 1 applicant. Name the real gaps — contribution process
  that works with strangers, succession, deliberate licensing, security and
  release process, post-grant maintenance funding — early and plainly.

## Not covered here

Generated in NSF systems, not Typst:

- **Cover Sheet** — Research.gov form. Title must begin `PESOSE: Track 1: `
- **Biographical Sketch** and **Current and Pending (Other) Support** — must
  come from **SciENcv**
- **Collaborators and Other Affiliations (COA)** — NSF template, single-copy
  document
- **Data Management and Sharing Plan** — created in the Research.gov tool
  (released April 27, 2026), no longer a PDF upload
- **Budget forms** — Research.gov, though the justification is built here

## Open items before this is submittable

1. **Which organization leads.** For a non-IHE lead, the PI must be an
   *employee* of the proposing organization; personnel on budget lines A and B
   must also be employees. A Northeastern lead has different PI eligibility
   rules and brings an existing SAM registration, negotiated indirect rate, and
   COI/RECR policies. This determines whose AOR signs and which institutional
   policies must exist.
2. **SAM.gov registration active** for the lead. NSF's own warning: it can take
   several weeks, and NSF blocks submission outright if it is not active.
3. **Letters of collaboration** — 3 to 5 from third-party users or contributors
   not connected to the team. Longest lead time in the package; request first.
4. **Indirect cost rate.** The solicitation sets no F&A limitation. Confirm the
   current de minimis percentage in writing with the program officer — PAPPG
   24-1 predates a revision to 2 CFR 200.414(f) and neither supplement updates
   that passage.
5. **I-Corps for PESOSE** salary for 3–5 people budgeted, at 173.33 hours/month.

Program contact: PESOSE@nsf.gov, (703) 292-8804.
