// =============================================================================
// REFERENCES CITED — no page limit (PAPPG II.D.2.e)
//
// Entries live in template/refs.typ (single REFERENCES array shared with the
// Project Description so numbering can never drift). This file only renders
// them. Entry [1] must stay the FreeMoCap product pointer — NSF 26-506 §V.A
// requires the open-source product to be pointed at via in-line citation +
// entry here (URLs are forbidden in the Project Description, allowed here).
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT
#import "../template/refs.typ": render-references

#show: nsf-doc.with(page-limit: none, draft: DRAFT)

#render-references()
