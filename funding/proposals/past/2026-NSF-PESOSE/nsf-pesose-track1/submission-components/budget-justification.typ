// =============================================================================
// BUDGET JUSTIFICATION — HARD 5-PAGE LIMIT (PAPPG II.D.2.f)
// Total request: $298,770 of $300,000 cap, 12 months, single organization.
//
// Line map — MUST match the Research.gov budget form line for line:
//   A = senior/key (Jon 8.0 cal mo $64,250; Aaron 9.0 cal mo $64,250)
//   B = other personnel, "Other Professionals" (Paul, 9.0 cal mo, $44,250)
//   C = fringe, 20% of (A+B) = 20% of $172,750 = $34,550
//   D = equipment — NONE, prohibited on PESOSE Track 1
//   E = travel, ALL DOMESTIC: $7,000 conferences + $3,000 I-Corps discovery
//   F = participant support — NONE requested
//   G.1 materials/supplies $8,000 | G.3 consultants $32,000
//   G.6 other $2,500 (I-Corps participation fee only — payroll/HR admin is
//       NOT direct-charged; 2 CFR 200.414(f) bars charging it both directly
//       and through the de minimis rate)
//   I = indirect, 15% de minimis of MTDC $259,800 (no NICRA)
//
// With no participant support, MTDC == total direct costs: none of the
// 2 CFR 200.1 exclusions apply. Every dollar added to any line now carries
// 15% indirect, so $1 of headroom buys only $0.87 of spending.
//
// The I-Corps $8,500 is a program envelope, NOT a budget line: its parts sit
// on E ($3,000 travel), G.3 ($3,000 mentor), and G.6 ($2,500 fee). Do not
// enter it as a single line on the form.
//
// Governing sources, in precedence order:
//   1. NSF 26-506 (solicitation) §V.A
//   2. PESOSE website budget guidance, posted 2026-03-09 — the solicitation
//      directs proposers to it and it overrides PAPPG defaults in several
//      places (two-month rule not enforced; 15% de minimis; BLS 75th-pct
//      salary ceiling; equipment barred on Track 1; tabular travel required)
//   3. PAPPG 24-1
//
// NOTE: literal dollar signs MUST be escaped as \$ in Typst content.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT, note

#show: nsf-doc.with(page-limit: 5, draft: DRAFT, title: [Budget Justification])

= Senior/Key Personnel (Line A)

Salaries for two senior/key personnel are requested. All personnel budgeted
on Lines A and B will be employees of the FreeMoCap Foundation, the proposing
organization, and will be acting as its employees while performing the
responsibilities described below. NSF does not recognize executive titles for
salary-rate determination; the rates below therefore correspond to each individual's
functional responsibilities, and each is well below the 75th-percentile
Bureau of Labor Statistics rate for the corresponding occupation in the
geographic area where the work will be carried out. Standard occupational
classification codes and live BLS references are listed per person.
Person-month calculations use 173.33 hours per month.

The two senior/key personnel are budgeted at different rates because they
occupy different occupations, not different ranks. The PI's responsibilities
classify under Computer and Information Research Scientists (SOC 15-1221) and
the co-PI's under Software Developers (SOC 15-1252). Those occupations carry
different BLS wage distributions, and each rate is benchmarked against its own
occupation rather than against the other person's.

#note[RATE DIFFERENTIAL — this paragraph exists because the PESOSE budget
guidance says NSF "does not recognize the C-level roles for the determination
of salary rates" and requires BLS rates to "correspond to specific
responsibilities." Do not justify the PI's higher rate by seniority, title,
or role in the organization anywhere in this package; the occupational
classification is the argument that survives review.]

#note[EMPLOYMENT STATUS — the sentence above is deliberately future-tense and
tracks the solicitation's own language for non-IHE proposers: the PI "must be
acting as an employee of the proposing organization while performing PI
responsibilities." That is a performance-time test, not a submission-deadline
test — NSF wrote "by the submission deadline" only in the IHE paragraph. The
W-2 transition must nonetheless be real before the period of performance
begins; the award cannot fund the eligibility it depends on.]

== Jonathan Samir Matthis • Principal Investigator
- *Functional title / SOC:* Computer and Information Research Scientist
  (SOC 15-1221); BLS OEWS reference:
  #link("https://www.bls.gov/oes/current/oes151221.htm")[bls.gov/oes/current/oes151221.htm]
- *Salary rate:* \$96,375/year; *Effort:* 8.0 calendar months;
  *Requested:* \$64,250
- *Responsibilities:* Overall scientific and organizational direction of the
  project. Leads governance scoping (comparison and evaluation of
  stewardship models), the risk-analysis and security plan, and the
  core-versus-extension architecture decisions. Serves as Technical Lead for
  the mandatory I-Corps for PESOSE training, with decision-making authority
  over project direction, including approximately one day per week of
  ecosystem-discovery interviewing across the training window. The remaining
  4 months of his effort continue on unfunded Foundation activities.

== Aaron Cherian • co-Principal Investigator
- *Functional title / SOC:* Software Developer (SOC 15-1252); BLS OEWS
  reference:
  #link("https://www.bls.gov/oes/current/oes151252.htm")[bls.gov/oes/current/oes151252.htm]
- *Salary rate:* \$85,667/year; *Effort:* 9.0 calendar months; *Requested:*
  \$64,250
- *Responsibilities:* Leads the technical scoping work: definition of the
  community-extension architecture, design of the validation, benchmarking,
  and regression-testing infrastructure, and coordination of the data-quality
  and provenance metadata work. Serves as Entrepreneurial Lead for the
  I-Corps for PESOSE training, coordinating stakeholder outreach, discovery
  interviews, and weekly reporting, at approximately one day per week across
  the training window. The remaining 3 months of his effort continue on
  unfunded Foundation activities.

== Salary support in excess of two months

The PESOSE program does not enforce the general two-month limit on senior
personnel salary support, but requests exceeding it require justification
under PAPPG II.D.2.f(i)(a). The Foundation defines "year" as the 12-month
project period of this award, and applies that definition consistently across
all personnel and all NSF proposals.

The requested effort exceeds two months because the employment situation
differs from the academic case the policy addresses. NSF's premise is that
research is a normal function of faculty and that compensation for it is
already included in an institutional salary. Neither individual holds an
academic appointment or any other salaried position from which this effort
could be drawn, and this award is the sole source of compensation for the work
described. The requested salary is not supplemental to an existing salary; it
is the compensation for the work itself.

The scope of effort is also set by the program. PESOSE requires a minimum of
100 ecosystem-discovery interviews and approximately one day per week of
interviewing from both the Technical Lead and the Entrepreneurial Lead, plus
kick-off, weekly sessions, and a closing meeting. The PESOSE budget guidance
directs proposers to budget salary support sufficient to accommodate it.

#note[VERIFY against SciENcv Current & Pending before submission: the
cumulative NSF person-month commitment for each senior/key person across all
active and pending proposals must be internally consistent with the months
requested here (Jonathan Samir Matthis 8.0, Cherian 9.0). That leaves 4.0 and
3.0 months of
headroom respectively — do not let another pending proposal push either
person past 12.0 in the year.]

= Other Personnel (Line B)

== Paul Matthis — Research Infrastructure Engineer
- *Functional title / SOC:* Network and Computer Systems Administrator
  (SOC 15-1244); BLS OEWS reference:
  #link("https://www.bls.gov/oes/current/oes151244.htm")[bls.gov/oes/current/oes151244.htm]
- *Salary rate:* \$59,000/year; *Effort:* 9.0 calendar months; *Requested:*
  \$44,250 #note[VERIFY: confirm \$59,000 sits below the 75th-percentile BLS
  OEWS figure for SOC 15-1244 in the specific geographic area of performance,
  not just nationally. The claim above is that every rate is "well below" it.]
- *Responsibilities:* Builds and maintains the technical infrastructure on
  which the planning activities depend: release and continuous-integration
  infrastructure (GitHub Actions), project web services, and the Google Cloud
  Platform environment hosting project telemetry, including the provenance
  and data-quality instrumentation scoped in the Risk Analysis and Security
  Plan. Implements the technical environment for the community education
  pilots, and authors and maintains the contributor-facing operational
  documentation for that infrastructure. This is a technical position; no
  administrative or clerical effort is direct-charged to this award.

= Fringe Benefits (Line C)

Fringe benefits are requested at a rate of 20% applied to a base of \$172,750,
comprising all salaries requested on Lines A and B. Requested fringe:
\$34,550. The rate is composed as follows:

#table(
  columns: (auto, auto, auto),
  inset: 4pt,
  table.header([*Component*], [*Rate*], [*Basis*]),
  [Statutory payroll taxes (FICA: Social Security and Medicare)],
    [7.65%], [Federal statutory rate],
  [Employer contribution toward individual health insurance coverage],
    [9.35%], [Estimated employer contribution],
  [Employer retirement plan contribution],
    [3.00%], [Estimated employer contribution],
  [*Total fringe rate*], [*20.00%*], [],
)

Beyond the statutory payroll tax component, the rates above are estimates.
The Foundation is standing up employer-of-record, payroll, and benefits
administration ahead of the period of performance, and the health and
retirement contribution levels will be set in that work; that administrative
capacity is funded through indirect cost recovery rather than charged
directly to this award. The 20% composite rate applies uniformly to all
project personnel. The award covers a single 12-month period; no salary
escalation is applied or requested.
#note[fringe % must match what the Foundation actually enacts — confirm
health and retirement contribution levels with the payroll service before
finalizing, and update both the component table above and every derived total]

= Equipment (Line D)

No equipment is requested. Funding requests for equipment are not permitted
for PESOSE Track 1 proposals.

= Travel (Line E)

Total travel requested is \$10,000, all domestic: \$7,000 for two conference
trips supporting community building and dissemination, and \$3,000 for
I-Corps ecosystem-discovery travel. No international travel is requested; the
program does not permit it. Costs are budgeted under 2 CFR § 200.475.

*Trip 1 — American Society of Biomechanics (ASB) annual meeting, 1 traveler
(PI).* Engagement with the biomechanics research community that constitutes
FreeMoCap's core academic user base; dissemination of results and recruitment
of contributors and ecosystem partners.

*Trip 2 — Society for Neuroscience (SfN) annual meeting, 1 traveler (co-PI).*
Engagement with the neuroscience research community, a major user population
for accessible motion measurement, and a venue for ecosystem-discovery
interviews with prospective users and contributors.

#table(
  columns: (auto, auto, auto, auto),
  inset: 4pt,
  table.header([*Cost element*], [*Trip 1 (ASB)*], [*Trip 2 (SfN)*], [*Total*]),
  [Airfare (domestic, round trip)], [\$700], [\$750], [\$1,450],
  [Lodging (4 nights)], [\$1,100], [\$1,200], [\$2,300],
  [Meals and incidentals (5 days)], [\$425], [\$425], [\$850],
  [Conference registration], [\$900], [\$750], [\$1,650],
  [Ground transportation], [\$375], [\$375], [\$750],
  [*Trip total*], [*\$3,500*], [*\$3,500*], [*\$7,000*],
)

No booth, exhibiting, or other marketing-related expenses are requested.

*Ecosystem-discovery travel (I-Corps for PESOSE) — \$3,000.* Four domestic
trips at approximately \$750 each (airfare or ground transportation, one night
lodging, meals and incidentals) to conduct in-person interviews during the
training window. The training requires a minimum of 100 discovery interviews,
and NSF's I-Corps guidance expressly permits domestic travel to conduct them
in person.

= Participant Support (Line F)

No participant support costs are requested. The education and onboarding
pilots are conducted with partner organizations that host their own learners;
no stipends, subsistence, travel allowances, or registration fees are paid to
or on behalf of pilot participants. I-Corps discovery interviewees are
likewise uncompensated, consistent with the program's prohibition on
incentives for interviewees.

= Other Direct Costs (Line G)

== Materials and Supplies — \$8,000
Multi-camera capture kits (consumer-grade webcams and mounting hardware) and
workshop materials for the hands-on education pilots with partner
organizations, and for hardware-configuration testing across supported
platforms. All are consumable or low-cost items; no single item approaches the
\$5,000 per-unit federal threshold for equipment. This request is under 10% of
the total budget.

== I-Corps for PESOSE — \$8,500 total across budget lines
Participation in the mandatory I-Corps for PESOSE training is budgeted at
\$8,500, within the \$30,000 program ceiling. Its components fall on three
different budget lines and are gathered here for review:
- I-Corps participation fee: \$2,500 — this line (Other Direct Costs)
  #note[PLACEHOLDER — the fee amount in effect at submission is posted on the
  PESOSE website; confirm via PESOSE\@nsf.gov and update. If the fee differs,
  adjust the consultant allocation to keep the total at or under \$300,000.
  Only \$1,230 of headroom remains, which at 15% indirect is about \$1,070 of
  spendable room.]
- Industry Mentor stipend: \$3,000 — Consultant Services, below
- Ecosystem-discovery travel within the training window: \$3,000 — Travel
  (Line E), above

Salary support for the Technical and Entrepreneurial Leads' I-Corps effort is
carried on Line A and excluded from the \$8,500 above to avoid
double-counting. The training team is the Technical Lead (Jonathan Samir
Matthis),
Entrepreneurial Lead (Cherian), and Industry Mentor (Idehen) — three
individuals, meeting the requirement that Track 1 teams budget for at least
three and no more than five. No gifts, meals, marketing expenses, or survey
tools are requested.

== Consultant Services — \$32,000

Track 1 is a scoping and planning award, and several of the mandated planning
areas call for independent professional expertise the project team does not
itself hold. Consultants are engaged to produce assessments, evaluations, and
plans — not to develop the open-source product, which is outside the scope of
a Track 1 award. None is an officer or employee of the proposing
organization. Expertise, primary organizational affiliation, normal daily
compensation rate, and number of days of expected service are given for each
below, per PAPPG II.D.2.g(v)(c). No consultant will receive more than \$50,000
over the award period. The Foundation is a nonprofit organization; no owners
or equity holders exist whose compensation would be restricted.

#table(
  columns: (2fr, auto, auto, auto),
  inset: 4pt,
  table.header(
    [*Consultant / expertise*], [*Daily rate*], [*Days*], [*Total*],
  ),
  [Open-source governance and licensing counsel], [\$1,800], [10.0], [\$18,000],
  [Independent security and supply-chain assessment], [\$2,000], [4.5], [\$9,000],
  [Community documentation and education-pilot facilitation],
    [\$500], [4.0], [\$2,000],
  [I-Corps Industry Mentor (Endurance Idehen)], [\$500], [6.0], [\$3,000],
  [*Total*], [], [*24.5*], [*\$32,000*],
)

#note[NAMES AND AFFILIATIONS: PAPPG II.D.2.g(v)(c) asks for each individual's
primary organizational affiliation. Fill in the named firm or individual and
affiliation for the first three rows if they are known by submission; a named
consultant reads far stronger than a role. Every named consultant must also
be added to the List of Project Personnel table.]

Legal services are budgeted here rather than as a separate line because NSF
treats professional service costs and consultant services as the same
category. The legal work requested is specific to the project's scope of
work — the licensing and governance analysis the solicitation requires Track
1 proposals to produce. General organizational legal costs, including
incorporation, nonprofit compliance, board governance, and employment law,
are treated as general administration, are recovered through the indirect
cost rate, and are not direct-charged to this award.

*Open-source governance and licensing counsel — \$18,000.* Independent legal
and policy expertise supporting the Organization and Governance planning
area, which the solicitation requires Track 1 proposals to address:
comparative evaluation of stewardship and fiscal-host models, licensing
options for the core product and community-contributed extensions, trademark
and project-naming policy, and contributor licensing terms. Deliverable is a
written governance and licensing options analysis feeding the ecosystem's
organizational design.
#note[identify the specific firm or individual before submission if possible
— a named consultant is stronger than a role]

*Independent security and supply-chain assessment — \$9,000.* External
security expertise supporting the Risk Analysis and Security Plan, which the
solicitation requires Track 1 proposals to address. Scope: threat modeling,
review of the dependency graph and software-bill-of-materials posture,
evaluation of secure release and chain-of-custody practices against Open
Source Security Foundation and CISA/NSA supply chain guidance, and identity
and access management review. Deliverable is a written vulnerability and risk
assessment with prioritized remediation planning, produced independently of
the development team.

*Community documentation and education-pilot facilitation — \$2,000.*
Compensated engagement of experienced community members, budgeted across
several individuals, for work that the Community Building planning area
depends on: authoring and reviewing onboarding and contributor documentation,
facilitating the education and onboarding pilots with partner organizations,
and structured evaluation of the contributor experience. This funds
documentation, facilitation, and assessment — not product feature development.
The balance of the work is carried by the Research Infrastructure Engineer on
Line B, whose effort was increased for that purpose.

*I-Corps Industry Mentor — \$3,000.* Endurance Idehen, an experienced
open-source ecosystem leader, serves as Industry Mentor on the I-Corps for
PESOSE training team. NSF's I-Corps guidance requires a few hours per week
across the training window in addition to program meetings; the request
reflects 6.0 days at \$500/day. He is not an employee of the Foundation and is
therefore budgeted here rather than on Line A or B.

== Other — \$2,500
The I-Corps for PESOSE participation fee, described above.

Employer-of-record, payroll, and benefits administration services are not
requested as direct costs. Those are general administrative functions of the
organization, recovered through the indirect cost rate below, and consistent
treatment under 2 CFR § 200.414(f) prohibits charging them both directly and
through the de minimis rate.

No subawards are requested.

= Indirect Costs (Line I)

The FreeMoCap Foundation does not have a federally negotiated indirect cost
rate agreement and elects the de minimis rate of 15% of modified total direct
costs, as permitted by the PESOSE budget guidance and 2 CFR § 200.414(f).

Modified total direct costs are \$259,800, equal to total direct costs. No
equipment, participant support, tuition remission, or subawards are
requested, so none of the MTDC exclusions in 2 CFR § 200.1 apply to this
budget. Indirect costs: \$38,970.

= Budget Summary

#table(
  columns: (auto, auto),
  inset: 4pt,
  table.header([*Line*], [*Amount*]),
  [A. Senior/Key Personnel (2 people, 17.0 cal months)], [\$128,500],
  [B. Other Personnel (1 person, 9.0 cal months)], [\$44,250],
  [C. Fringe Benefits (20% of \$172,750)], [\$34,550],
  [D. Equipment], [\$0],
  [E. Travel (domestic; international \$0)], [\$10,000],
  [F. Participant Support], [\$0],
  [G.1 Materials and Supplies], [\$8,000],
  [G.3 Consultant Services], [\$32,000],
  [G.6 Other (I-Corps participation fee)], [\$2,500],
  [G. Total Other Direct Costs], [\$42,500],
  [H. Total Direct Costs], [\$259,800],
  [I. Indirect Costs (15% of \$259,800 MTDC)], [\$38,970],
  [*J. Total Requested*], [*\$298,770*],
)

The total request of \$298,770 is within the \$300,000 Track 1 ceiling for a
12-month period of performance.

#note[FINAL MATH CHECK before submission: (1) confirm the I-Corps
participation fee and adjust the consultant allocation if it differs from
\$2,500; (2) confirm the 20% fringe rate against what the payroll service and
benefits selections actually produce;
(3) verify every figure here matches what is keyed into the Research.gov
budget form line by line — the form, not this PDF, is what blocks submission.
Remaining headroom to the \$300,000 cap is \$1,230, which at 15% indirect is
about \$1,070 of actual spending. Any increase must come out of another line.]
