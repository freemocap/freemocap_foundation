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

// ── Recovered-cut marks (proposal-uncut reconstruction, 2026-07-15) ──
// This "uncut" build reconstitutes material that was trimmed on deadline day to
// reach the 8-page limit. Plain (un-highlighted) text = the SUBMITTED 8-page
// version. Everything else is restored from an earlier draft and tinted by how
// far back it came from:
//   cut1 — "first cut"  : in the 10-page full draft (2:58 PM) but dropped from the submitted 8-pg  → violet
//   cut2 — "second cut" : recovered from the 13-page draft (10:17 AM)                              → teal
//   cut3 — "third cut"  : recovered from the 15-page draft (5:38 AM)                               → coral
// Gated on DRAFT_MODE (like #flag): the tint disappears in a submission compile,
// leaving the restored prose in place. Inline form #cut1[..] wraps a run within a
// paragraph; block form #cut1-block[..] wraps one or more whole paragraphs.
#let cut-color(tier) = {
  if tier == 1 { rgb("#8e6fd699") } else if tier == 2 { rgb("#2fb6a599") } else { rgb("#f0846f99") }
}
#let cut(tier, body) = { if DRAFT_MODE { highlight(fill: cut-color(tier), body) } else { body } }
#let cut1(body) = cut(1, body)
#let cut2(body) = cut(2, body)
#let cut3(body) = cut(3, body)
#let cut-block(tier, body) = {
  if DRAFT_MODE {
    block(width: 100%, fill: cut-color(tier), inset: (x: 0.4em, y: 0.35em), radius: 1pt, breakable: true)[#body]
  } else { body }
}
#let cut1-block(body) = cut-block(1, body)
#let cut2-block(body) = cut-block(2, body)
#let cut3-block(body) = cut-block(3, body)

// Legend for the recovered-cut tints — drop near the top of the document (draft only).
#let cut-legend() = if DRAFT_MODE {
  block(width: 100%, stroke: 0.5pt + gray, radius: 2pt, inset: (x: 0.6em, y: 0.5em), below: 0.9em)[
    #set text(size: 8.5pt)
    #text(weight: "bold")[Uncut reconstruction — legend.] Un-tinted text is the #text(weight: "bold")[submitted 8-page version].
    Tinted text was cut on deadline day to fit the page limit and is restored here, colored by origin:
    #h(0.4em) #highlight(fill: cut-color(1))[first cut — 10-pg full draft (2:58 PM)];
    #h(0.2em) #highlight(fill: cut-color(2))[second cut — 13-pg draft (10:17 AM)];
    #h(0.2em) #highlight(fill: cut-color(3))[third cut — 15-pg draft (5:38 AM)].
  ]
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
