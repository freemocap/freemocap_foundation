// Shared helpers — PESOSE Track 1 Project Description SCAFFOLD.
//
// NO PROSE. Standing rule restored 2026-08-04 after a one-time drafted pass.
// This file defines annotation helpers only; sections contain requirements,
// source citations, and specs for what the author must supply.

#let DRAFT_MODE = true

// ── Canonical source keys ────────────────────────────────────────────────────
// Each key maps to (short label shown in annotations, full name, path).
// Paths are relative to the repo root: 2026-NSF-PESOSE/
// #src() resolves the key to the FULL NAME automatically, so annotations are
// self-explanatory in the compiled PDF and you never have to memorise a code.

#let SOURCES = (
  SOL: (
    name: "NSF 26-506 solicitation",
    path: "official-pdfs/NSF 26-506_ Pathways to Enable Secure Open-Source Ecosystems (PESOSE).pdf",
    kind: "Official — authoritative",
  ),
  BUD: (
    name: "PESOSE website update, 9 Mar 2026 — I-Corps + budget rules",
    path: "notes/bot-slop/official-sources/update-2026-03-09-icorps-and-budget.md",
    kind: "Official — web only, NOT in the solicitation PDF",
  ),
  DECK: (
    name: "NSF PESOSE slide deck (Florence Rabanal, Jul 2026)",
    path: "official-pdfs/downloaded/NSF_PESOSE_slide_deck_2026-07.pdf",
    kind: "Official",
  ),
  DCL: (
    name: "Dear Colleague Letter NSF 26-015 — AI agent protocol ecosystems",
    path: "notes/bot-slop/official-sources/nsf26-015-dcl-ai-agent-ecosystems.md",
    kind: "Official",
  ),
  W1: (
    name: "Webinar 1 — \"Introduction to NSF PESOSE\", 8 Jul 2026",
    path: "notes/bot-slop/official-sources/2026-07-08-Introduction to NSF PESOSE program_outputs/",
    kind: "ASR transcript + AI analysis — timestamps are into the transcript",
  ),
  W2: (
    name: "Webinar 2 — \"NSF PESOSE Q&A Discussion\", 24 Jul 2026",
    path: "notes/bot-slop/official-sources/2026-07-24-NSF PESOSE Q&A Discussion Webinar_outputs/",
    kind: "ASR transcript + AI analysis",
  ),
  PAPPG: (
    name: "NSF Proposal & Award Policies & Procedures Guide (NSF 24-1)",
    path: "official-pdfs/nsf24_1-pappg-proposal-and-award-policies.pdf",
    kind: "Official — authoritative",
  ),
  OSSF: (
    name: "OpenSSF Best Practices criteria",
    path: "official-pdfs/downloaded/OpenSSF_best_practices_criteria.html",
    kind: "Third-party, cited by the solicitation",
  ),
)

// ── Key resolution ───────────────────────────────────────────────────────────
// EVERY marker that takes a source string runs it through this. The leading
// token is looked up in SOURCES and replaced with the full name; the remainder
// (section, page, timestamp) is kept. So `source: "W1 @ 00:36:29"` prints as
// "Webinar 1 — \"Introduction to NSF PESOSE\", 8 Jul 2026 · @ 00:36:29".
// An abbreviation must never reach the rendered page.
#let resolve-source(s) = {
  if s == "" { return "" }
  let parts = s.split(" ")
  let key = parts.at(0).trim(",").trim(".")
  if key in SOURCES {
    let rest = parts.slice(1).join(" ")
    let name = SOURCES.at(key).name
    if rest.trim() == "" { name } else { name + " · " + rest }
  } else { s }
}

// #req[] — verbatim NSF requirement this section discharges.
#let req(source: "", body) = if DRAFT_MODE {
  block(
    width: 100%, inset: 6pt, radius: 3pt,
    fill: rgb("#eef2ff"), stroke: 0.5pt + rgb("#6b7bb8"),
    above: 0.6em, below: 0.6em,
  )[
    #text(size: 8pt, fill: rgb("#3a4a80"), weight: "bold")[REQUIREMENT#if source != "" [ — #resolve-source(source)]] \
    #text(size: 8pt, fill: rgb("#22305c"), style: "italic")[#body]
  ]
}

// #src[] — pointer into an official source. The key resolves to its full name.
#let src(key, loc, body) = if DRAFT_MODE {
  let s = SOURCES.at(key, default: (name: key, path: "?", kind: "?"))
  block(
    width: 100%, inset: 5pt, radius: 3pt,
    fill: rgb("#eef7ee"), stroke: 0.5pt + rgb("#6a9c6a"),
    above: 0.4em, below: 0.4em,
  )[
    #text(size: 8pt, fill: rgb("#2d5a2d"), weight: "bold")[
      #s.name#if loc != "" [ · #loc]
    ] \
    #text(size: 8pt, fill: rgb("#1f3d1f"))[#body]
  ]
}

// #supply[] — what the author must produce. Spec, not narrative.
#let supply(body) = if DRAFT_MODE {
  block(
    width: 100%, inset: 5pt, radius: 3pt,
    fill: rgb("#fff6e0"), stroke: 0.5pt + rgb("#c9a227"),
    above: 0.4em, below: 0.4em,
  )[
    #text(size: 8pt, fill: rgb("#6b5310"), weight: "bold")[AUTHOR SUPPLIES] \
    #text(size: 8.5pt, fill: rgb("#4a3908"))[#body]
  ]
}

// #pitfall[] — NSF-stated common failure mode.
#let pitfall(source: "", body) = if DRAFT_MODE {
  block(
    width: 100%, inset: 5pt, radius: 3pt,
    fill: rgb("#fdecec"), stroke: 0.5pt + rgb("#b00020"),
    above: 0.4em, below: 0.4em,
  )[
    #text(size: 8pt, fill: rgb("#7a0016"), weight: "bold")[NSF-STATED PITFALL#if source != "" [ — #resolve-source(source)]] \
    #text(size: 8.5pt, fill: rgb("#5c0011"))[#body]
  ]
}

#let budget(pages, words) = if DRAFT_MODE {
  align(right, text(size: 7.5pt, fill: rgb("#8a6d1f"))[[budget: #pages pg / ~#words words]])
}
