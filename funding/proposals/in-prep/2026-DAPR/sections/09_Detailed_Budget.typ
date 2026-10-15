
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Detailed Budget for Initial Budget Period

*Direct costs only*

Program Director/Principal Investigator: Aaron T. Cherian \[proposed PI\]

Period: \[START DATE\] through \[END DATE\]

Proposed budget assumptions require institutional approval; see Budget Justification.

#block[
  #set text(size: 9pt)
  #set par(leading: 1.5pt, spacing: 4pt)
  List PERSONNEL (applicant organization only). Use calendar, academic, or summer months.
  Enter whole dollar amounts requested for salary and fringe benefits.

  #set table.cell(breakable: false)
  #table(
    columns: (1.5in, 0.75in, 0.55in, 0.55in, 0.55in, 0.9in, 0.9in, 0.85in, 0.95in),
    inset: (x: 3pt, y: 5pt), stroke: 0.5pt,
    align: (x, y) => if y == 0 or x < 5 { left + horizon } else { right + horizon },
    table.header([*Name*], [*Role*], [*Cal. months*], [*Acad. months*], [*Sum. months*],
      [*Inst. base salary*], [*Salary requested*], [*Fringe benefits*], [*Total*]),
    [#pi.name], [#pi.role], [#fixed-two(months(pi))], [], [],
    [#money(pi.annual-base, symbol: false)], [#money(salary(pi), symbol: false)],
    [#money(fringe(pi), symbol: false)], [#money(personnel(pi), symbol: false)],
    [#mentor.name], [#mentor.role], [#fixed-two(months(mentor))], [], [],
    [#money(mentor.annual-base, symbol: false)], [#money(salary(mentor), symbol: false)],
    [#money(fringe(mentor), symbol: false)], [#money(personnel(mentor), symbol: false)],
    table.cell(colspan: 6)[*Personnel subtotals*], [#money(salaries, symbol: false)],
    [#money(fringes, symbol: false)], [*#money(personnel-total, symbol: false)*],
    table.cell(colspan: 8)[Consultant costs], [0],
    table.cell(colspan: 8)[Equipment], [0],
    table.cell(colspan: 8)[Supplies], [0],
    table.cell(colspan: 8)[Travel], [0],
    table.cell(colspan: 8)[Inpatient care costs], [0],
    table.cell(colspan: 8)[Outpatient care costs], [0],
    table.cell(colspan: 8)[Alterations and renovations], [0],
    table.cell(colspan: 8)[Other expenses: project storage and backup #money(storage)], [#money(other-direct, symbol: false)],
    table.cell(colspan: 8)[Consortium/contractual costs: direct costs], [0],
    table.cell(colspan: 8)[*Subtotal direct costs for initial budget period*], [*#money(direct-costs)*],
    table.cell(colspan: 8)[Consortium/contractual costs: facilities and administrative costs], [0],
    table.cell(colspan: 8)[*Total direct costs for initial budget period*], [*#money(direct-costs)*],
  )
]

Indirect costs are detailed in the Budget Justification. The requested indirect costs are
#money(indirect-costs), bringing the total request to #money(total-request).
]

#show: grant
#body

