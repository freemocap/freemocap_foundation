// FIGURE — FreeMoCap community distribution and growth. Rendered in Part 6.
//
// Ordinary vertically-stacked figure: image on top, caption underneath via the
// template's `show figure.caption` rule. It is NARROW rather than full-width,
// because Part 6 places it in the left column of a #grid so body text fills the
// space beside it (pattern from the X-Labs proposal's
// proposal/sections/5-team-capabilities.typ). Everything about how much page
// this occupies is controlled at the grid in 06-community-building.typ, not
// here — `width: 100%` means "fill my column", whatever the grid gives it.
#figure(
  image("../../figures/2026-08-31-fmc-map-and-gh-stars.png", width: 100%),
  caption: [A. Geographic distribution of FreeMoCap use. B. Cumulative GitHub stars on the core repository since first public release, passing 10,000 in 2026.]
) <fig-star-chart>
