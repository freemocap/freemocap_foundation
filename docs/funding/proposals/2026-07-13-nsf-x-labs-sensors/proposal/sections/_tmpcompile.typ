// THROWAWAY COMPILE HARNESS — safe to delete (`rm proposal/sections/_tmpcompile.typ`).
// Not referenced by main.typ; changes nothing in the real build.
// Purpose: standalone syntax/citation check of 1-mission-dome.typ, which needs a
// #bibliography in scope for its @-citations to resolve.
#set text(size: 12pt)
#set heading(numbering: "1.")
= Mission
#include "1-mission-dome.typ"
#bibliography("../FMCF-NSF-XLABS.bib", style: "nature")
