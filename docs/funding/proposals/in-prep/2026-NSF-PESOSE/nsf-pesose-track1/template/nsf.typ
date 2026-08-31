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
#let LEADING = 0.57em
#let PAR_SPACING = 0.95em

// ---------------------------------------------------------------------------
// draft-margin-box — draft-only frame around the text area (PAPPG II.C.2.c:
// 1-inch margins on all sides, nothing of yours in the margin). On US Letter
// with 1-inch margins the text block is exactly 6.5in x 9in, so this draws a
// thin line around it: in a draft compile, anything crossing that line is
// either a margin violation (PAPPG can bounce the proposal for it) or a draft
// artifact that must not ship. Draft footers live BELOW the line, in the
// margin, by design. Vanishes in submission builds. Ported from the X-Labs
// proposal's main.typ (same color, same geometry).
// ---------------------------------------------------------------------------
#let draft-margin-box = place(
  top + left,
  dx: 1in,
  dy: 1in,
  rect(
    width: 6.5in,
    height: 9in,
    fill: none,
    stroke: .5pt + rgb("#7e7eba"),
  ),
)

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
//   Draft mode is the DEFAULT (see DRAFT below), so plain compiles and
//   Tinymist previews always show draft artifacts. The ONLY way to get a
//   submission-clean PDF is an explicit --input draft=false, which build.sh
//   always supplies:
//       ./build.sh                  # submission build
//       typst compile --input draft=false main.typ   # manual submission build
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
    background: if draft { draft-margin-box },
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

  // figure.caption — styled as a visibly distinct caption block: smaller
  // font, tighter leading, inset from both margins, block-justified.
  //
  // Legality (PAPPG 24-1 II.C.2.a exemption, verified 2026-08): "A font size
  // of less than 10 points may be used for mathematical formulas or
  // equations, figures, tables, or diagram captions and when using a Symbol
  // font to insert Greek letters or special characters." That list is
  // EXHAUSTIVE — footnotes and reference text are NOT exempt, so do not
  // shrink those. NSF 26-506 adds no font rules of its own; it defers to
  // "the PAPPG version in effect on the proposal's due date".
  //
  // The six-lines-per-inch rule (II.C.2.b: baselines >= 12pt) has NO
  // small-text carve-out, so caption leading is set in ABSOLUTE terms to
  // hold ~12.3pt baselines at 8.5pt: cap-height of 8.5pt CM is ~6pt, so
  // 0.75em leading lands just over the 12pt floor (~5.8 lines/inch vs the
  // 6-line ceiling). Do not reduce leading here without redoing that math.
  show figure.caption: it => align(center, block(
    width: 85%,
    breakable: true,
    {
      set text(size: 8.5pt)
      set par(justify: true, leading: 0.75em, spacing: 0.5em, first-line-indent: 0pt)
      it
    },
  ))

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
// DRAFT — global draft-mode flag. Hard-coded, no CLI input.
//
// false: draft artifacts (footer, notes, flags, suggestions, budget markers)
//        render as NOTHING. Every compile is submission-clean — plain `typst
//        compile`, Tinymist preview, and ./build.sh all produce the same PDF.
//
// Flip to true only to read the annotations while writing, and flip it back
// before building anything you intend to upload. A draft footer sits in the
// page margin, which PAPPG II.C.2.c forbids for proposer-supplied content.
//
// Every part file can `#import "../template/nsf.typ": DRAFT, note` and get
// the same value without threading it through function arguments.
// ---------------------------------------------------------------------------
#let DRAFT = false

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

// ---------------------------------------------------------------------------
// REVIEW MARKS — ported from the NSF X-Labs proposal's helpers/xref.typ
// (2026-07-13), gated here on the CLI-driven DRAFT flag instead of that
// repo's hand-edited DRAFT_MODE, so a submission build can never contain
// them regardless of what anyone forgets to flip.
//
// The two helpers encode an authorship discipline — keep the author's voice
// and any assistant's voice separable at a glance in the draft compile:
//
//   * Mechanical fixes (unambiguous typos, broken markup) are edited
//     directly, no marker.
//   * Grammar/clarity/word-choice issues NEVER touch the original text:
//     wrap it in #flag(kind: "clarity")[..] and put any proposed rewrite in
//     an adjacent #suggestion[..]. A reword can flip meaning — that call
//     stays with the author, who compares the two and picks.
//   * New drafted prose goes in #suggestion(note: [..])[..] — a green block
//     in draft, and NOTHING in a submission build, so it can never ship
//     un-integrated.
//   * Passages to cut or tighten are wrapped in #flag(kind: "redundant" |
//     "verbose")[..] plus a `// NOTE:` explaining the call — the wrapped
//     text survives untouched in the submission build because a flag is a
//     review mark, not a change.
//
// flag kinds (first three same palette as X-Labs, so muscle memory carries
// over; "awk" added here):
//   "redundant" -> red   (says what content elsewhere already says —
//                         candidate to cut + cross-reference instead)
//   "verbose"   -> blue  (right idea, wordier than it needs to be —
//                         candidate to tighten, not necessarily duplicate)
//   "clarity"   -> amber (hard to understand — grammar / punctuation /
//                         unclear meaning; original words left untouched;
//                         pair with an adjacent #suggestion holding the
//                         rewrite)
//   "awk"       -> pink  (understandable but clumsy — awkward phrasing,
//                         clunky rhythm, words fighting the reader; the
//                         meaning survives but the sentence fights back.
//                         Candidate to smooth; pair with #suggestion when
//                         a rewrite exists)
// ---------------------------------------------------------------------------
#let flag-color(kind) = {
  if kind == "redundant" { rgb("#ff000055") }
  else if kind == "clarity" { rgb("#e8a33d66") }
  else if kind == "awk" { rgb("#d364c766") }
  else { rgb("#1e6fff55") }
}

#let flag(kind: "redundant", body) = {
  if DRAFT {
    highlight(fill: flag-color(kind), body)
  } else {
    body
  }
}

// #suggestion(note: [..])[..] — drafted prose. Renders as a green block in
// draft builds, visually distinct from author prose, and vanishes entirely
// in the submission build. `note:` is a SOURCE-ONLY annotation (rationale /
// pointer) kept in the .typ but NOT rendered — carried over unchanged from
// the X-Labs behavior decided there on 2026-07-13.
#let suggestion(note: none, body) = {
  if DRAFT {
    block(
      width: 100%,
      fill: rgb("#9accb0"),
      stroke: (left: 2.5pt + rgb("#70c796")),
      inset: (x: 0.6em, y: 0.5em),
      radius: 1pt,
      breakable: true,
    )[#body]
  }
}

// #new(note: [..])[..] — newly integrated text: a #suggestion that Jon has
// accepted (and possibly edited) during an audit pass. Tracked with a
// light-blue block in draft builds so every spine-introduced passage stays
// visible until the final cleanup sweep; unlike #suggestion, it UNWRAPS to
// plain prose in the submission build — accepted text IS the proposal, so a
// submission build is always valid while #new markers are still present.
// Lifecycle: #suggestion (proposed, green) -> #new (accepted, blue, tracked)
// -> plain prose (settled). `note:` is a source-only annotation.
#let new(note: none, body) = {
  if DRAFT {
    block(
      width: 100%,
      fill: rgb("#cfe0f5"),
      stroke: (left: 2.5pt + rgb("#7aa7d9")),
      inset: (x: 0.6em, y: 0.5em),
      radius: 1pt,
      breakable: true,
    )[#body]
  } else {
    body
  }
}
