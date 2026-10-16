// Native PDF import requires Typst 0.14 or newer.
#let include-pdf(file, pages: none, title: "PDF attachment") = {
  assert(sys.version >= version(0, 14, 0), message: "PDF attachments require Typst 0.14 or newer.")
  assert(type(pages) == int and pages > 0,
    message: "Set the complete page count for " + title + " in attachment_settings.typ.")

  for number in range(1, pages + 1) {
    page(paper: "us-letter", margin: 0pt, numbering: none, header: none, footer: none,
      background: none, foreground: none, fill: white)[
      #set par(leading: 0pt, spacing: 0pt)
      #image(file, page: number, width: 100%, height: 100%, fit: "contain",
        alt: title + ", page " + str(number))
    ]
  }
}
