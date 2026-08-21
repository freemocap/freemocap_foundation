// PART 9 — Results from Prior NSF Support.  Page budget: ~0.5-1.0
//
// PAPPG II.D.2.d(iii). REQUIRED if any PI or co-PI has current NSF funding,
// or an award whose end date falls within the past five years — regardless of
// whether that award related to this proposal. If more than one award
// qualifies, report only the single most closely related one.
//
// The rules: results must be split under two distinct headings, Intellectual
// Merit and Broader Impacts. Publications must be listed, or you must state
// that none were produced. Evidence of research products and their
// availability is required, and PAPPG names software explicitly — good for
// you.
//
// SPACE WARNING: PAPPG allows up to five pages here, but those five pages come
// out of your seven. At Track 1 length, five pages would leave two for the
// entire proposal. Target half a page to one page. The allowance is written
// for 15-page Tracks 2 and 3.
//
// IF NEITHER PI NOR ANY CO-PI QUALIFIES: delete this file and remove its
// #include from main.typ. Do not include an empty section.

#import "../../lib/nsf.typ": budget, prior-support

#budget("~0.5-1.0 page — NOT the 5 pages PAPPG allows")

#prior-support(
  award-number: [TODO],
  amount: [TODO],
  period: [TODO],
  proj-title: [TODO],
  intellectual-merit: [TODO],
  broader-impacts: [TODO],
  // Pass `publications: none` to auto-emit the exact required sentence
  // "No publications were produced under this award."
  publications: none,
  products: [TODO — software counts, and PAPPG names it explicitly],
)
