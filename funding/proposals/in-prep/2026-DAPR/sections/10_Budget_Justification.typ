// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Budget Justification

Project period: 12 months from the approved start date.

Requested direct costs: #money(direct-costs). Requested indirect costs: #money(indirect-costs). Total request:
#money(total-request).

The budget supports harmonization of existing gait and balance data, metadata capture and export within
FreeMoCap, and evaluation. No funds are requested for recruitment, new recording equipment, model training,
travel, or clinical services. The accompanying PHS 398 Form Page 4 presents the direct costs.

== Personnel

*Principal Investigator Aaron T. Cherian.* Requested support is #fixed-two(months(pi)) calendar months, equivalent to #percent(pi.effort) effort
over 12 months. At an illustrative annual salary base of #money(pi.annual-base), salary requested is
#money(salary(pi)). Provisional fringe at #percent(fringe-rate) adds #money(fringe(pi)), for a total of #money(personnel(pi)).
The PI will carry out harmonization, metadata architecture, export implementation, automated checks, reuse
demonstrations, and documentation. He will lead DAPR coordination, evaluation, manuscript preparation, and
follow-on research planning.

*Mentor Jonathan Samir Matthis, PhD.* Matthis is President and CEO of the FreeMoCap Foundation. Requested
support is #fixed-two(months(mentor)) calendar months, equivalent to #percent(mentor.effort) effort over 12 months. At an illustrative annual salary
base of #money(mentor.annual-base), salary requested is #money(salary(mentor)). Provisional fringe at #percent(fringe-rate) adds
#money(fringe(mentor)), for a total of #money(personnel(mentor)). He will provide scientific and technical
mentorship, review definitions and mappings, advise on architecture and evaluation, and review representative
exports and documentation. Monthly meetings and quarterly checkpoints will also support manuscript and
follow-on proposal development.

These two personnel lines total #money(personnel-total): #money(salaries) in salaries and #money(fringes) in
provisional fringe. The PI's development effort and Matthis's mentorship will span harmonization,
implementation, evaluation, and release.

The salary bases, employment classifications, and fringe rate above are proposed planning assumptions
requiring institutional approval. They are not representations of current compensation or established
institutional rates. Before submission, the institution must enter the approved salary and fringe amounts and
recalculate effort and totals. If either role is contracted rather than employed, its costs must be classified
in the appropriate category and supported by an agreed scope and rate. The PI's grant effort is separate from
the eligibility requirement that at least 25% of the PI's institutional appointment involve research.

== Other Direct Costs

*Project storage and backup #money(storage).* Twelve months at a proposed average of #money(storage /
project-months) per month will support working copies, backup, and retained release candidates for the
selected numerical data and derived products. These costs support source preservation, reproducibility, and
data management. Final capacity and procurement will be matched to the frozen source inventory; public
repository deposition will use available no-cost options where appropriate.

*Computational validation #money(computing).* A capped allowance will support CPU-based automated checks,
clean-environment builds, and reproducibility checks when these exceed available local or no-cost repository
resources. This request does not support GPU model training or a persistent public computing service. Actual
use will be monitored against the project budget.

== Indirect Costs and Budget Control

Indirect costs are calculated at 8% of #money(direct-costs) in direct costs, yielding #money(indirect-costs)
and a total request of #money(total-request). This calculation assumes the full direct-cost amount is an
allowable base under the final agreement; the signing official will confirm the applicable base. There are no
outgoing subawards in this proposed budget. Any change in personnel classification, approved rates, or
allowable base will be reflected consistently in the detailed budget, this justification, and the
consortium-intent letter before submission.

The proposed direct costs will be reviewed at the six-month report and reconciled at close-out. No essential
unconfirmed in-kind contribution is used to balance this budget. The project scope will remain limited to the
existing gait and balance datasets, a defined set of movement-data types, metadata capture and export, and
representative reuse demonstrations.
]

#show: grant
#body
