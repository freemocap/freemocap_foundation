// =============================================================================
// REFERENCES CITED — no page limit (PAPPG II.D.2.e)
//
// Bibliographic citations ONLY. PAPPG is explicit that this section "must not
// be used to provide parenthetical information outside of the Project
// Description" — i.e. do not use it as page-limit overflow. Annotations here
// are a compliance risk, not a clever trick.
//
// URLs are permitted here (and optional per PAPPG), which is exactly how the
// solicitation tells you to point at the open-source product without putting a
// URL in the Project Description.
//
// Edit lib/refs.typ, not this file. Numbering stays synchronized with the
// Project Description automatically.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT
#import "../template/refs.typ": render-references

#show: nsf-doc.with(page-limit: none, draft: DRAFT)

#render-references()
