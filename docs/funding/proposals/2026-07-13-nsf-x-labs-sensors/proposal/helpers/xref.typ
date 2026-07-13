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

// #flag(kind: "redundant")[...] / #flag(kind: "verbose")[...]
// kind: "redundant" -> red  (says the same thing as content living elsewhere — candidate to cut + cross-ref instead)
// kind: "verbose"   -> blue (same idea, just wordier than it needs to be — candidate to tighten, not necessarily a duplicate)
#let flag-color(kind) = if kind == "redundant" { rgb("#ff000055") } else { rgb("#1e6fff55") }

#let flag(kind: "redundant", body) = {
  if DRAFT_MODE {
    highlight(fill: flag-color(kind), body)
  } else {
    body
  }
}
