# Amazon proposal / Zotero-ready bundle

- `proposal.typ` is the updated full Typst source based on your latest font, sizing, and image filename edits.
- `main_fig.png` is the validation figure used in Appendix A.
- `references.bib` is a BibLaTeX-compatible bibliography read by Typst with IEEE formatting.

Compile in Typst or Typst.app with `typst compile proposal.typ`. The main text cites references using `@citation-key`, and Appendix B populates automatically with `#bibliography("references.bib", style: "ieee", title: none)`.

For Zotero: install Better BibTeX for Zotero if you need stable citekeys, then export selected items to BibLaTeX and append them to `references.bib`. To cite a new item, add `@your-citation-key` in `proposal.typ`. Ensure each citation key is unique; Zotero exports using different keys will require corresponding in-text updates.

Current adoption evidence: FreeMoCap repository had 10,773 GitHub stars when checked on November 10, 2026. Proposal uses the stable statement `more than 10,000 stars`.
