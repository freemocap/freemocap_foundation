// =============================================================================
// lib/nsf.typ — NSF PAPPG 24-1 compliance layer
//
// Encodes the mechanical requirements from PAPPG Chapter II.C so you never
// have to think about them again:
//   * Font: Computer Modern family at >= 11pt (PAPPG II.C.2.a)
//   * <= 6 lines of text per vertical inch (PAPPG II.C.2.b)
//   * >= 1 inch margins on all sides, nothing in the margins (II.C.2.c)
//   * US Letter, single column (II.C.2.d, II.C.3)
//   * No page numbers — Research.gov paginates (II.C.1)
//
// Requires Typst >= 0.12 (uses `par.spacing` and argument-less
// `counter.final()`).
// =============================================================================

// ---------------------------------------------------------------------------
// FONT CHOICE
//
// PAPPG II.C.2.a permits exactly these:
//   Arial (NOT Arial Narrow), Courier New, Palatino Linotype  -> >= 10pt
//   Times New Roman                                           -> >= 11pt
//   Computer Modern family                                    -> >= 11pt
//
// "New Computer Modern" is the Computer Modern family and ships with Typst,
// so it compiles identically on every machine. If a collaborator's research
// office insists on Times New Roman, flip the two lines below — but note that
// TNR must be installed locally, and Typst will silently substitute if it
// isn't. Run `typst fonts` to confirm what's available before submitting.
// ---------------------------------------------------------------------------
#let BODY_FONT = "New Computer Modern"
#let BODY_SIZE = 11pt

// #let BODY_FONT = "Times New Roman"
// #let BODY_SIZE = 11pt

// ---------------------------------------------------------------------------
// LINE SPACING
//
// The rule is a ceiling on density: no more than six lines of text per
// vertical inch, i.e. baseline-to-baseline must be >= 12pt.
//
// Typst computes line height as (top-edge .. bottom-edge) + leading. With the
// default top-edge of "cap-height" and bottom-edge of "baseline", an 11pt
// Computer Modern line is roughly 7.7pt of cap-height, so leading of 0.62em
// (6.8pt) gives about 14.5pt baselines — roughly 5 lines per inch. Compliant
// with margin to spare, and denser than double-spacing so you don't waste any
// of the seven pages.
//
// Do not reduce LEADING below 0.40em without re-checking: that is where you
// start approaching the 12pt floor.
// ---------------------------------------------------------------------------
#let LEADING = 0.62em
#let PAR_SPACING = 0.95em

// ---------------------------------------------------------------------------
// nsf-doc — wrap every section document in this.
//
//   page-limit: integer or none
//       Hard limit from the solicitation. In draft mode a footer reports
//       current page count against it and shouts if you are over. Set to
//       `none` for unlimited sections (References Cited, biosketches).
//
//   draft: bool
//       true  -> footer with page counter and limit check (NEVER submit this;
//                footer content sits in the margin, which PAPPG II.C.2.c
//                forbids for proposer-supplied information)
//       false -> clean, submission-ready output
//
//   Set draft via the CLI so you never forget to turn it off:
//       typst compile --input draft=true 02-project-description/main.typ
// ---------------------------------------------------------------------------
#let nsf-doc(
  page-limit: none,
  draft: false,
  title: none,
  body,
) = {
  set page(
    paper: "us-letter",
    margin: 1in,
    numbering: none,
    footer: if draft {
      context {
        let cur = counter(page).get().first()
        let tot = counter(page).final().first()
        set text(size: 8pt, fill: rgb("#888888"))
        let status = if page-limit == none {
          [no limit]
        } else if tot > page-limit {
          text(fill: red, weight: "bold")[OVER LIMIT: #tot / #page-limit pages]
        } else {
          [#tot / #page-limit pages]
        }
        align(center)[DRAFT — page #cur of #tot — #status]
      }
    } else {
      none
    },
  )

  set text(font: BODY_FONT, size: BODY_SIZE, lang: "en")
  set par(justify: true, leading: LEADING, spacing: PAR_SPACING, first-line-indent: 0pt)

  // Headings: unnumbered, bold, tight. NSF reviewers skim on structure, so
  // headings should be visually obvious but must not eat vertical space.
  set heading(numbering: none)
  show heading.where(level: 1): it => block(
    above: 1.1em, below: 0.55em,
    text(size: 11.5pt, weight: "bold", it.body),
  )
  show heading.where(level: 2): it => block(
    above: 0.9em, below: 0.45em,
    text(size: 11pt, weight: "bold", style: "italic", it.body),
  )
  show heading.where(level: 3): it => block(
    above: 0.7em, below: 0.3em,
    text(size: 11pt, weight: "bold", it.body),
  )

  // Tighter lists than Typst's default, which is generous for a page-limited
  // document.
  set list(indent: 1em, spacing: 0.6em, marker: [•])
  set enum(indent: 1em, spacing: 0.6em)

  // Internal title, used by sections that want a visible header (Facilities,
  // Budget Justification). The Project Description should NOT carry a title —
  // spend the line on content.
  if title != none {
    align(center, text(size: 12pt, weight: "bold", title))
    v(0.6em)
  }

  body
}

// ---------------------------------------------------------------------------
// broader-impacts — PAPPG II.D.2.d(i) is unusually specific here: the Project
// Description "must contain, as a separate section within the narrative, a
// section labeled 'Broader Impacts', and 'Broader Impacts' must appear as a
// heading on its own line."
//
// Use this helper rather than typing the heading, so the exact string can
// never drift to "Broader Impact" or "Broader Impacts and Outcomes".
// ---------------------------------------------------------------------------
#let broader-impacts(body) = {
  heading(level: 1)[Broader Impacts]
  body
}

// ---------------------------------------------------------------------------
// prior-support — PAPPG II.D.2.d(iii). Required if any PI or co-PI has current
// NSF funding, or an award that ended within the past five years. Results MUST
// be split under two distinct headings: Intellectual Merit and Broader
// Impacts. Publications must be listed, or you must state that none were
// produced.
//
// Formally this may run to five pages, but those five pages come out of your
// seven. Keep it near one page.
// ---------------------------------------------------------------------------
#let prior-support(
  award-number: none,
  amount: none,
  period: none,
  proj-title: none,
  intellectual-merit: [],
  broader-impacts: [],
  publications: none,
  products: [],
) = {
  heading(level: 1)[Results from Prior NSF Support]
  block[
    *Award:* #award-number. *Amount:* #amount. *Period:* #period. \
    *Title:* #proj-title
  ]
  heading(level: 2)[Intellectual Merit]
  intellectual-merit
  heading(level: 2)[Broader Impacts]
  broader-impacts
  heading(level: 2)[Publications]
  if publications == none {
    [No publications were produced under this award.]
  } else {
    publications
  }
  heading(level: 2)[Research Products and Availability]
  products
}

// ---------------------------------------------------------------------------
// keywords — NSF 26-506 requires the LAST line of the Project Summary to be a
// prioritized list of 2–5 keywords, beginning with "Keywords:" and separated
// by semicolons. Call this as the final thing in the summary document.
// ---------------------------------------------------------------------------
#let keywords(..kw) = {
  let items = kw.pos()
  assert(
    items.len() >= 2 and items.len() <= 5,
    message: "NSF 26-506 requires 2-5 keywords; got " + str(items.len()),
  )
  parbreak()
  [Keywords: #items.join("; ")]
}

// ---------------------------------------------------------------------------
// DRAFT — global flag, read from the command line so it is impossible to
// accidentally leave draft artifacts in a submission build:
//
//     typst compile --input draft=true  02-project-description/main.typ   # draft
//     typst compile                     02-project-description/main.typ   # final
//
// Every part file can `#import "../lib/nsf.typ": DRAFT, note` and get the
// same value without threading it through function arguments.
// ---------------------------------------------------------------------------
#let DRAFT = sys.inputs.at("draft", default: "false") == "true"

// ---------------------------------------------------------------------------
// note — draft-only inline note for TODOs and open questions. Renders nothing
// in a final build, so leftover notes cannot leak into a submission.
// ---------------------------------------------------------------------------
#let note(body) = {
  if DRAFT {
    text(fill: rgb("#c0392b"), size: 9pt, weight: "bold")[[#body]]
  }
}

// ---------------------------------------------------------------------------
// budget — draft-only page-budget marker. Drop one at the top of each part
// file to see, at a glance, whether a section has outgrown its allocation.
// ---------------------------------------------------------------------------
#let budget(pages) = {
  if DRAFT {
    block(
      fill: rgb("#fff4e5"),
      inset: 4pt,
      radius: 2pt,
      width: 100%,
      text(size: 8pt, fill: rgb("#8a5a00"))[page budget: #pages],
    )
  }
}
