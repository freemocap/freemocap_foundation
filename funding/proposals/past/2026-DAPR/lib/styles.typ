#import "../config.typ": project-title, project-author, font-family, body-size, page-margin

#let grant(body) = {
  set document(title: project-title, author: project-author)
  set page(paper: "us-letter", margin: page-margin, numbering: none)
  set text(font: font-family, size: body-size, lang: "en", hyphenate: false,
    top-edge: 0.8em, bottom-edge: -0.2em)
  set par(leading: 2pt, spacing: 7pt, justify: false, first-line-indent: 0pt)
  set heading(numbering: none)
  show heading: set text(size: body-size, weight: "bold")
  show heading: set block(above: 7pt, below: 5pt, sticky: true)
  show heading.where(level: 1): set block(above: 0pt, below: 9pt)
  show link: set text(fill: black)
  body
}

#let grant-table(columns: auto, header: (), rows: (), size: 10pt) = {
  set text(size: size)
  set par(leading: 1.5pt, spacing: 0pt)
  set table.cell(breakable: false)
  table(columns: columns, inset: (x: 4.5pt, y: 3.5pt), align: left + horizon,
    stroke: 0.4pt + rgb("d9d9d9"),
    fill: (_, y) => if y == 0 { rgb("e9eef2") } else { none },
    table.header(..header.map(cell => strong(cell))), ..rows.flatten())
}
