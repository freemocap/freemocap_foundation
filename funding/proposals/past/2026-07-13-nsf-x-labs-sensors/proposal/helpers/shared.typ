// Shared helpers — import as:  #import "../helpers/shared.typ": semibold
//
// DRAFT_MODE lives here (not in main.typ) so every section file and helper
// can import the same single toggle — main.typ uses it for page chrome,
// helpers/xref.typ uses it to gate #flag() review-mark highlights. Flip to
// false for submission-ready output; strips WIP overlays and review marks.
#let DRAFT_MODE = false

#let semibold(body) = text(weight: "semibold", body)
#let Dome = smallcaps([Dome])
#let Domes = [#smallcaps([Dome])s]
#let Dome-Mobile = smallcaps([Dome-Mobile])
#let Dome-Auto = smallcaps([Dome-Auto])
#let Dome-Static = smallcaps([Dome-Static])
