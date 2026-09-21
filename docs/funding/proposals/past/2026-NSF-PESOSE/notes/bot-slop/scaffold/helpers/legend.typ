// Front matter: marker legend + source table.
// DRAFT-ONLY — vanishes at DRAFT_MODE = false, costs zero pages in submission.
//
// LAYOUT NOTE: columns are given FIXED widths. An `auto` column containing a
// `block(width: 100%)` collapses the neighbouring `1fr` column to near-zero and
// wraps its text one word per line. Do not reintroduce `auto` here.

#import "shared.typ": DRAFT_MODE, SOURCES

// swatch: fixed-width chip, must NOT be width: 100%
#let chip(fill, stroke, fg, label) = box(
  width: 100%, inset: 3pt, radius: 2pt, fill: fill, stroke: 0.5pt + stroke,
)[#text(size: 7.5pt, weight: "bold", fill: fg)[#label]]

// insert zero-width breaks after slashes so long paths wrap
#let brk(p) = p.replace("/", "/\u{200B}")

#let legend-page = if DRAFT_MODE [
  #set par(first-line-indent: 0em, justify: false)

  #align(center)[
    #text(size: 13pt, weight: "bold")[Scaffold key]
    #v(0.15em)
    #text(size: 8pt, style: "italic", fill: rgb("#666"))[
      Draft-only front matter. Disappears at #raw("DRAFT_MODE = false") and costs
      zero pages in the submitted document.
    ]
  ]
  #v(0.5em)

  #text(size: 10pt, weight: "bold")[1 · What the coloured boxes mean]
  #v(0.2em)

  #table(
    columns: (3.6cm, 1fr),
    inset: 4pt,
    stroke: 0.4pt + rgb("#bbb"),
    align: (left + horizon, left + top),

    chip(rgb("#eef2ff"), rgb("#6b7bb8"), rgb("#3a4a80"), "REQUIREMENT"),
    text(size: 8.5pt)[The #emph[verbatim words] of the solicitation or PAPPG for this
      section — not paraphrased. This is what you are graded against.],

    chip(rgb("#eef7ee"), rgb("#6a9c6a"), rgb("#2d5a2d"), "SOURCE · location"),
    text(size: 8.5pt)[A pointer into an official source: what it says and where to find
      it. The header names the source in full and gives a section, page, or timestamp —
      so you never have to decode an abbreviation.],

    chip(rgb("#fdecec"), rgb("#b00020"), rgb("#7a0016"), "NSF-STATED PITFALL"),
    text(size: 8.5pt)[A failure mode NSF named out loud, usually in a webinar — things
      the program director says they see go wrong repeatedly.],

    chip(rgb("#fff6e0"), rgb("#c9a227"), rgb("#6b5310"), "AUTHOR SUPPLIES"),
    text(size: 8.5pt)[What #emph[you] produce for this section. A spec, not a draft.
      The bot does not write these or invent the facts that go in them.],
  )

  #v(0.5em)
  #text(size: 10pt, weight: "bold")[2 · The sources being cited]
  #v(0.15em)
  #text(size: 8pt, fill: rgb("#555"))[
    Paths are relative to the #raw("2026-NSF-PESOSE/") folder. The #emph[Key] column is
    the short code used inside the #raw(".typ") files; it is expanded automatically in
    the rendered boxes above, so it should never appear on a page. If you ever see a
    bare key, that is a bug — decode it here.
  ]
  #v(0.2em)

  #table(
    columns: (1.35cm, 4.5cm, 2.9cm, 1fr),
    inset: 3.5pt,
    stroke: 0.4pt + rgb("#bbb"),
    align: (left + top, left + top, left + top, left + top),

    text(size: 8pt, weight: "bold")[Key],
    text(size: 8pt, weight: "bold")[Source],
    text(size: 8pt, weight: "bold")[Status],
    text(size: 8pt, weight: "bold")[Where it lives],

    ..SOURCES.pairs().map(((k, v)) => (
      text(size: 7.5pt, weight: "bold", fill: rgb("#3a4a80"))[#k],
      text(size: 7.5pt)[#v.name],
      text(size: 7.5pt)[#v.kind],
      text(size: 6.5pt, fill: rgb("#444"))[#brk(v.path)],
    )).flatten()
  )

  #v(0.45em)
  #block(
    width: 100%, inset: 5pt, radius: 3pt,
    fill: rgb("#fdecec"), stroke: 0.5pt + rgb("#b00020"),
  )[
    #text(size: 8pt, fill: rgb("#7a0016"))[
      *Two caveats.* #linebreak()
      *(a) The webinar transcripts are machine-generated.* Speech-to-text renders
      "PESOSE" as PSOS, PESOS and PISOS, and "Safe-OSE" as "SafeOSC". They are cited
      because they carry material found in no written NSF source, but every timestamped
      quote should be checked against the audio before it drives a decision. Where a
      webinar and the solicitation disagree, *the solicitation wins.* #linebreak()
      *(b) The 9 Mar 2026 budget page is not in the solicitation PDF.* The 75th-percentile
      BLS salary caps, SOC codes, 173.33 hrs/month, 15% de minimis indirect, the \$30,000
      I-Corps line and the 3–5 person team requirement exist only on that web page.
      Budgeting from the PDF alone produces a non-compliant budget.
    ]
  ]

  #v(0.4em)
  #block(
    width: 100%, inset: 5pt, radius: 3pt,
    fill: rgb("#fff6e0"), stroke: 0.5pt + rgb("#c9a227"),
  )[
    #text(size: 8pt, fill: rgb("#6b5310"))[
      *On the page count.* In draft mode the footer counts pages of #emph[annotation],
      not of proposal text — the scaffold currently fills the 7-page budget with
      requirement boxes and specs. To measure real length, set
      #raw("DRAFT_MODE = false"): every coloured box disappears and only your prose
      and headings remain.
    ]
  ]

  #pagebreak()
]
