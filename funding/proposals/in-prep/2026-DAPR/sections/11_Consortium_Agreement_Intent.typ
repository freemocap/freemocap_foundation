// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *

#let body = [
= Consortium Agreement Intent

\[PLACE ON FREEMOCAP FOUNDATION LETTERHEAD\]

\[DATE\]

DAPR Pilot Grant Program \
University of Southern California

Re: #project-title

Dear DAPR Pilot Grant Review Committee,

On behalf of the FreeMoCap Foundation, I confirm the institution's intent to establish a formal consortium or
subaward agreement with the University of Southern California if the above Data STACHE project is selected for
funding.

The proposed Principal Investigator is Aaron T. Cherian, \[CONFIRMED DEGREE AND APPOINTMENT\]. Jonathan Samir
Matthis, PhD, President and CEO of the Foundation, will serve as mentor. These are the two individuals
supported by the proposed budget. The performance period is \[START DATE\] through \[END DATE\], covering 12
months. The collaborating institutions for this agreement are the University of Southern California and the
FreeMoCap Foundation. The proposed request is #money(direct-costs) in direct costs and #money(indirect-costs)
in indirect costs, totaling #money(total-request). Indirect costs use the program's 8% cap, subject to
confirmation of the applicable base.

The proposed work will harmonize existing gait and balance validation datasets, incorporate the required
metadata capture and export capability into FreeMoCap, and evaluate preservation and reuse of the resulting
data. Outputs will include data, code, a dictionary and terminology mappings, and documentation. The
Foundation intends to provide the administrative oversight needed to carry out the approved scope, manage
project funds, meet reporting requirements, and comply with applicable research, data-management, and sharing
obligations. Any required institutional review and data-access arrangements will be completed through the
appropriate processes.

The Foundation will verify the PI's eligibility, appointment, research allocation, and required credentials
and will approve the final personnel rates and budget before submission. If selected, we will work with USC to
complete the formal agreement and resolve any required assurances, certifications, or supporting documentation
before award activation. We understand that this letter indicates institutional intent and does not replace
the executed agreement.

Sincerely,

\[AUTHORIZED SIGNING OFFICIAL NAME\] \
\[TITLE\] \
FreeMoCap Foundation \
\[ADDRESS\] \
\[EMAIL AND PHONE\]

Signature: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ \
Date: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
]

#show: grant
#body
