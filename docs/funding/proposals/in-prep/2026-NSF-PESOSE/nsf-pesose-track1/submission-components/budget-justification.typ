// =============================================================================
// BUDGET JUSTIFICATION — no formal page limit; keep tight
// Total request: $298,250 of $300,000 cap, 12 months, single organization.
//
// Line map: A = senior/key (Jon, Aaron) | B = other personnel (Paul)
// C = fringe 20% | D = equipment (NONE — prohibited on Track 1)
// E = travel | F = participant support | G = other direct costs
// I = indirect (15% de minimis of MTDC — no NICRA)
//
// NOTE: literal dollar signs MUST be escaped as \$ in Typst content.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT, note

#show: nsf-doc.with(page-limit: none, draft: DRAFT, title: [Budget Justification])

= Senior/Key Personnel (Line A)

Salaries for two senior/key personnel are requested. All proposing personnel
are new employees of the FreeMoCap Foundation; requested salary rates were
set by the Foundation's Board in its adopted written compensation policy and
are consistent with that policy. NSF does not recognize executive titles for
salary-rate determination; the rates below therefore correspond to each
individual's functional responsibilities, and each is well below the
75th-percentile Bureau of Labor Statistics rate for the corresponding
occupation in the geographic area where the work will be carried out
(standard occupational classification codes and BLS references listed per
person).

== Jonathan Matthis — Principal Investigator
- *Functional title / SOC:* Computer and Information Research Scientist
  (SOC 15-1221); BLS OEWS reference:
  #link("https://www.bls.gov/oes/current/oes151221.htm")[bls.gov/oes/current/oes151221.htm]
- *Salary rate:* \$75,000/year; *Effort:* 12.0 calendar months;
  *Requested:* \$75,000
- *Responsibilities:* Overall scientific and organizational direction of the
  project. Leads governance scoping (comparison and evaluation of
  stewardship models), the risk-analysis and security plan, and the
  core-versus-extension architecture decisions. Serves as Technical Lead for
  the mandatory I-Corps for PESOSE training, with decision-making authority
  over project direction.

== Aaron Cherian — co-Principal Investigator
- *Functional title / SOC:* Software Developer (SOC 15-1252); BLS OEWS
  reference:
  #link("https://www.bls.gov/oes/current/oes151252.htm")[bls.gov/oes/current/oes151252.htm]
- *Salary rate:* \$75,000/year; *Effort:* 9.0 calendar months; *Requested:*
  \$56,250
- *Responsibilities:* Leads the technical scoping work: definition of the
  community-extension architecture, design of the validation, benchmarking,
  and regression-testing infrastructure, and coordination of the data-quality
  and provenance metadata work. Serves as Entrepreneurial Lead for the
  I-Corps for PESOSE training, coordinating stakeholder outreach, discovery
  interviews, and weekly reporting. The remaining 3 months of his effort
  continue on unfunded Foundation activities.

= Other Personnel (Line B)

== Paul Matthis — Operations Lead
- *Functional title / SOC:* Network and Computer Systems Administrator
  (SOC 15-1244); BLS OEWS reference:
  #link("https://www.bls.gov/oes/current/oes151244.htm")[bls.gov/oes/current/oes151244.htm]
- *Salary rate:* \$50,000/year; *Effort:* 7.0 calendar months; *Requested:*
  \$29,167
- *Responsibilities:* Maintains the technical infrastructure on which the
  planning activities run: release and continuous-integration infrastructure
  (GitHub Actions), project web services, and the Google Cloud Platform
  environment hosting project telemetry, including the provenance and
  data-quality instrumentation scoped in the Risk Analysis and Security Plan.
  Provides logistics support for the community education pilots. 

= Fringe Benefits (Line C)

Fringe benefits are requested at a rate of 20% of salaries, consisting of
statutory payroll taxes (7.65%), employer contributions toward individual
health insurance coverage, and a modest retirement plan contribution. Fringe
rates will be established in conjunction with the Foundation's move to W-2
employment (see Professional Services under Other Direct Costs) and applied
uniformly to all project personnel. #note[fringe % must match what the
Foundation actually enacts — confirm health/retirement levels with the payroll
service before finalizing]

= Equipment (Line D)

No equipment is requested. 
//Equipment requests are not permitted for Track 1 proposals.

= Travel (Line E)

Travel is requested to sustain the community-building and ecosystem-discovery
activities central to Track 1: \$7,000 total, covering two domestic scientific
conferences (estimated \$3,500 per trip: registration, airfare, four nights
lodging, per diem, ground transportation):

- *American Society of Biomechanics (ASB) annual meeting* — engagement with
  the biomechanics research community that constitutes FreeMoCap's core
  academic user base; dissemination of project results and recruitment of
  contributors and ecosystem partners.
- *Society for Neuroscience (SfN) annual meeting* — engagement with the
  neuroscience research community, a major user population for accessible
  motion measurement, and a venue for ecosystem discovery interviews with
  prospective users and contributors.

No international travel is requested. #note[do NOT budget booth/vendor fees —
marketing-adjacent; frame SfN as engagement, not exhibiting]

= Participant Support (Line F)

\$5,000 is requested to provide participant stipends for community members in
the education and onboarding pilots conducted with partner organizations,
lowering barriers to participation for learners and prospective contributors
from under-resourced communities. Participant support costs are excluded
from the indirect-cost base.

= Other Direct Costs (Line G)

== Materials and Supplies — \$8,000
Multi-camera capture kits (consumer-grade webcams and mounting hardware) and
workshop materials for the hands-on education pilots with partner
organizations, and for hardware-configuration testing across supported
platforms.

== I-Corps for PESOSE — \$10,000
Participation in the mandatory I-Corps for PESOSE training is budgeted at
\$10,000, within the \$30,000 program ceiling:
- I-Corps participation fee: \$2,500 #note[PLACEHOLDER — the fee amount in
  effect at submission is posted on the PESOSE website; confirm via
  PESOSE\@nsf.gov and update]
- Industry Mentor stipend: \$3,000 (Endurance Dahen, experienced open-source
  ecosystem leader; supports the team's discovery work)
- Ecosystem-discovery travel within the training window: \$4,500
The training team comprises the Technical Lead (Matthis), Entrepreneurial
Lead (Cherian), and Industry Mentor. No gifts, meals, marketing expenses, or
survey tools are requested.

== Professional Services (Contractual) — \$7,500
Human resources and payroll administration services required to employ the
project personnel as W-2 employees and administer the benefits described
under Fringe Benefits. This is a direct requirement of carrying out the
proposed effort: the personnel effort budgeted above cannot be executed
without employer-of-record, payroll, and benefits administration
infrastructure.

No consultant services and no subawards are requested. The Foundation is a
nonprofit organization; no owners or equity holders exist whose compensation
would be restricted.

= Indirect Costs (Line I)

The FreeMoCap Foundation does not have a federally negotiated indirect cost
rate agreement and elects the 15% de minimis rate on modified total direct
costs. MTDC = \$255,000 (total direct costs of \$260,000 excluding \$5,000
participant support costs). Indirect costs: \$38,250.

#note[FINAL MATH CHECK before submission: recompute totals after the
participation fee placeholder is resolved and fringe % is confirmed]

= Budget Summary

#table(
  columns: (auto, auto),
  inset: 4pt,
  table.header([*Line*], [*Amount*]),
  [A. Senior/Key Personnel], [\$185,417],
  [B. Other Personnel], [\$29,167],
  [C. Fringe Benefits (20%)], [\$37,083],
  [D. Equipment], [\$0],
  [E. Travel], [\$7,000],
  [F. Participant Support], [\$5,000],
  [G. Other Direct Costs], [\$25,500],
  [H. Total Direct Costs], [\$260,000],
  [I. Indirect Costs (15% MTDC)], [\$38,250],
  [*J. Total Requested*], [*\$298,250*],
)
