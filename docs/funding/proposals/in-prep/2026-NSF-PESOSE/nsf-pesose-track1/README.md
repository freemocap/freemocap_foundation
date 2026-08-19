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
Description: nine part files in `02-project-description/parts/` that
`main.typ` includes in order, producing a single 7-page PDF.

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

Draft mode is driven by `--input draft=true` rather than a variable you edit, so
you cannot accidentally submit a build with draft artifacts. Draft footers sit in
the margin, which PAPPG forbids for proposer-supplied content — that is why they
only exist in draft mode.

To work on one section: `typst watch --input draft=true 02-project-description/main.typ`

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
