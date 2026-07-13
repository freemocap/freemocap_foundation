// Composite figure + the supporting data figures for the proposal.
//
// These are IMPORTED (not #include-d) on purpose. The helper files are also
// compiled standalone, so they carry their own `#set page` / `#set text`
// rules. #include would splice those rules into the proposal — re-setting the
// margins (breaking the 1" requirement), forcing each figure onto its own
// page, and leaking font sizes into later sections. #import pulls ONLY the
// named binding and discards the file body, so none of that leaks.
#import "dome-sensor-estimate-model/dome-chain-compact.typ": dome-chain-figure
#import "templates/milestones-matrix.typ": milestones-figure
#import "collaborator-network.typ": collaborator-figure

// No `kind:` here → Typst infers the built-in `image` element as the kind.
// The dome flowchart also uses `kind: image`, so the two share one counter:
// this is Figure 1, the flowchart Figure 2. Both tables use `kind: table`,
// giving Table 1 (milestones) and Table 2 (collaborators).
#figure(
  image("../media/2026-07-12-fmc-xlabs_all_v3.jpg", width: 100%),
  caption: [Blah blah blah captions. Blah blah blah captions. Blah blah blah captions. Blah blah blah captions. Blah blah blah captions.],
) <fig-hero>

#v(1.2em)
#dome-chain-figure

#v(1.2em)
#milestones-figure

#v(1.2em)
#collaborator-figure
