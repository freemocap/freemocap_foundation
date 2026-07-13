// ── Cross-reference & review-mark helpers ──
//
// Two independent concerns live here:
//
// 1. Cross-references — thin wrappers so the same personnel initials /
//    section / figure reference is always built the same way, and so it
//    auto-updates (correct §-number, correct Fig.-number) if content moves.
//    Native Typst refs (`@my-label`) already work for headings/figures
//    because main.typ sets `heading(supplement: [§])` and we set figure
//    supplement below — use `@label` directly for those. `#skp()` exists
//    because personnel bullets are plain paragraphs, not a Typst
//    "referenceable" element, so there's no built-in numbering to hook into.
//
// 2. Review marks — `#flag()` highlights a passage without changing a
//    single word of it, for redundancy/verbosity triage during editing.
//    Gated on shared.typ's DRAFT_MODE so it's a no-op in the
//    submission-ready compile — no manual cleanup pass needed later.

#import "shared.typ": DRAFT_MODE

// Figures use "Figure"/"Table" by default; the proposal's prose already
// says "Fig." — align the supplement so @fig-x reads "Fig. 2" not "Figure 2".
#let set-figure-supplements(body) = {
  show figure.where(kind: image): set figure(supplement: "Fig.")
  body
}

// #skp("KM") -> linked initials, jumping to that person's bullet in §4.
// Second arg lets a caller override the visible text, e.g. #skp("KM", shown: [Karl Muller, PM]).
#let skp(id, shown: none) = link(label("skp-" + id))[#if shown == none [#id] else [#shown]]

// #collab("MH") -> linked initials, jumping to that collaborator's row in the
// Collaborator Network table (helpers/collaborator-network.typ). Mirror of #skp()
// for the collaborator table's <collab-XX> labels.
#let collab(id, shown: none) = link(label("collab-" + id))[#if shown == none [#id] else [#shown]]

// #flag(kind: "redundant" | "verbose" | "clarity")[...]
// kind: "redundant" -> red   (says the same thing as content living elsewhere — candidate to cut + cross-ref instead)
// kind: "verbose"   -> blue  (same idea, just wordier than it needs to be — candidate to tighten, not necessarily a duplicate)
// kind: "clarity"   -> amber (grammar / punctuation / awkward / unclear — the ORIGINAL WORDS ARE LEFT UNTOUCHED here on
//                     purpose; a reword can flip meaning, so that's the author's call. Pair with an adjacent
//                     #suggestion[..] holding the proposed rewrite when there is one.)
#let flag-color(kind) = {
  if kind == "redundant" { rgb("#ff000055") } else if kind == "clarity" { rgb("#e8a33d66") } else { rgb("#1e6fff55") }
}


#let flag(kind: "redundant", body) = {
  if DRAFT_MODE {
    highlight(fill: flag-color(kind), body)
  } else {
    body
  }
}

// #suggestion(note: [..])[..] — new prose drafted by Claude. Renders as a GREEN
// highlighted block in DRAFT_MODE so it's visually distinct from author prose, and
// vanishes entirely in the submission-ready compile (DRAFT_MODE = false), so it can
// never ship un-integrated. The `note:` argument is a SOURCE-ONLY annotation (rationale
// / pointer) — kept in the .typ but NOT rendered in the PDF (changed 2026-07-13 at
// author request: keep the green highlight, drop the note from the rendered output).
#let suggestion(note: none, body) = {
  if DRAFT_MODE {
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
