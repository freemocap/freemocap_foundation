// =============================================================================
// lib/refs.typ — the single source of truth for citations
//
// WHY THIS ISN'T A .bib FILE
//
// NSF uploads each proposal section as its own separate PDF. References Cited
// is a distinct upload from the Project Description. Typst's `#bibliography()`
// renders the reference list into whichever document declares it — and you
// cannot use `@key` citations in a document that has no bibliography. So a
// normal Typst bibliography would either (a) print the whole reference list
// inside your 7-page Project Description, or (b) leave you unable to cite.
//
// Instead: one ordered array below, consumed by both documents. The Project
// Description calls `c("key")` to get a bracketed number; References Cited
// renders the same array in the same order. Numbering can never drift.
//
// THE URL RULE
//
// PAPPG II.D.2.d(ii) forbids URLs in the Project Description. But NSF 26-506
// requires a pointer to the publicly available open-source product, and tells
// you how to square that: "as URLs may not be included in Project
// Description; proposers should use an in-line citation and an entry in the
// References Cited section to point to the open-source product."
//
// So URLs live HERE and appear only in the References Cited PDF. That is
// permitted — PAPPG II.D.2.e says including a URL in a citation is optional
// but allowed. Never inline a bare URL in narrative text.
// =============================================================================

#let REFERENCES = (
  // -------------------------------------------------------------------------
  // [1] THE PRODUCT POINTER — required by NSF 26-506 for all PESOSE proposals.
  // Cite this early in the Project Description, ideally in the opening
  // paragraph. Keep it as entry #1 so it is trivially findable by reviewers.
  // -------------------------------------------------------------------------
  (
    key: "freemocap",
    entry: [
      FreeMoCap Foundation. _FreeMoCap: A free, open-source markerless motion
      capture application._ Software repository.
      https://github.com/freemocap/freemocap
    ],
  ),

  // -------------------------------------------------------------------------
  // Add further entries below. PAPPG II.D.2.e requires, for each reference:
  // all author names in publication order, article and journal title, book
  // title, volume, page numbers, and year. URL optional.
  //
  // This section has no page limit — but it must contain bibliographic
  // citations ONLY. Do not smuggle explanatory parentheticals in here to
  // dodge the 7-page limit; PAPPG explicitly forbids that.
  // -------------------------------------------------------------------------
  (
    key: "example2024",
    entry: [
      Lastname, A. B., and Otherperson, C. D. Title of the paper.
      _Journal Name_, 12(3):101–118, 2024.
    ],
  ),
)

// ---------------------------------------------------------------------------
// ref-num — resolve a key to its 1-based position. Panics loudly on a typo,
// which is what you want: a silent "[0]" in a submitted proposal is worse
// than a failed build.
// ---------------------------------------------------------------------------
#let ref-num(key) = {
  let i = REFERENCES.position(r => r.key == key)
  if i == none {
    panic("Unknown reference key: '" + key + "'. Add it to lib/refs.typ.")
  }
  i + 1
}

// ---------------------------------------------------------------------------
// c — in-line citation. Usage:
//     FreeMoCap is in active use by research labs #c("freemocap").
//     Prior work #c("freemocap", "example2024") established ...
// ---------------------------------------------------------------------------
#let c(..keys) = {
  let nums = keys.pos().map(k => str(ref-num(k)))
  "[" + nums.join(", ") + "]"
}

// ---------------------------------------------------------------------------
// render-references — used by 03-references-cited/main.typ.
// ---------------------------------------------------------------------------
#let render-references() = {
  for (i, r) in REFERENCES.enumerate() {
    block(above: 0.5em, below: 0.5em)[
      #box(width: 2.2em)[\[#(i + 1)\]] #r.entry
    ]
  }
}
