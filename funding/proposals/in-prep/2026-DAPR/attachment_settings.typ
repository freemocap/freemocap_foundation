// Put the PDFs in attachments/, next to sections/ and lib/.
// Replace each `none` page count with the PDF's complete number of pages.
// Count both the Common Form and Supplement in each SciENcv biosketch.
// A missing page count stops compilation so it cannot silently default to one page.
// Paths beginning with / are relative to the Typst project root.

#let attachments = (
  budget: (path: "attachments/budget.pdf", pages: 1, title: "Detailed budget"),
  consortium: (path: "attachments/consortium_agreement.pdf", pages: 1, title: "Consortium agreement intent"),
  aaron-biosketch: (path: "attachments/aaron_biosketch.pdf", pages: 4, title: "Aaron Cherian biosketch"),
  jon-biosketch: (path: "attachments/jon_biosketch.pdf", pages: 4, title: "Jonathan Matthis biosketch"),
  jon-support: (path: "attachments/letter_of_support.pdf", pages: 1, title: "Jonathan Matthis letter of support"),
)

// To omit the optional support letter, replace its complete entry with:
// jon-support: none,
