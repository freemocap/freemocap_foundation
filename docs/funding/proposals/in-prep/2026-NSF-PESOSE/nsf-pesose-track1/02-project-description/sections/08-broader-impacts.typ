// PART 8 — Broader Impacts.  Page budget: ~0.5
//
// PAPPG II.D.2.d(i) is unusually prescriptive: this must be a separate
// section within the narrative, labeled "Broader Impacts", with that phrase
// appearing as a heading on its own line. The `broader-impacts()` helper
// guarantees the exact string — do not hand-type the heading.
//
// Bring the accessibility thread back here. It is the one argument worth
// repeating across the document: Project Summary, need section, and here.
// Lowering the cost floor for movement science broadens who can do it at all,
// which is a societal outcome PAPPG explicitly recognizes (enhanced
// infrastructure for research and education; increased public engagement with
// science; development of a diverse STEM workforce).
//
// Also worth connecting to the solicitation's own Measures of Success:
// data sets established or expanded, new technologies or techniques
// established, participants hired into a STEM field, new infrastructure built.

#import "../../lib/nsf.typ": budget, note
#import "../../lib/nsf.typ": broader-impacts

#budget("~0.5 page")

#broader-impacts[
  // TODO: accessibility as the through-line.
  // TODO: tie to at least one of the solicitation's Measures of Success.

  #note[exact heading guaranteed by the helper — do not retype it]
]
