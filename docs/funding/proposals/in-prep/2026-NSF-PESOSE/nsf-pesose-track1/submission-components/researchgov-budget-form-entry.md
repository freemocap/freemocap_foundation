# Research.gov budget form — exact values to key in

Single organization, no subawards. **One budget period, 12 months.**
Source of truth for the narrative: `budget-justification.typ`. If you change a
number here, change it there too — NSF compares them.

**Total request: $298,770** against the $300,000 Track 1 ceiling.

---

## ⚡ Four fields to change on the live form

Everything else in Research.gov already matches. Retype these four, in this
order, then let the form recompute H, I, and J.

| Line | Currently shows | Change to |
|---|---|---|
| **C. Fringe Benefits** | $30,750 | **$34,550** |
| **G.3 Consultant Services** | $30,000 | **$32,000** |
| **G.6 Other** | $10,000 | **$2,500** |
| **I. Indirect — Base** | $255,000 | **$259,800** |

After those, the form should read **H $259,800 · I $38,970 · J $298,770**. If it
doesn't, something didn't take — check C and the indirect base first, because
neither recalculates on its own.

Why each one moved:

- **C** was 17.8%, not the 20% the justification declares. It was correct back
  when A+B was $153,750 and never updated when salaries grew to $172,750.
- **G.6** drops by $7,500 — the payroll/HR charge comes out of direct costs
  entirely (see G below).
- **G.3** rises by $2,000, absorbing part of what G.6 freed.
- **I. Base** must equal total direct costs. $255,000 is a leftover that no
  longer matches anything.

Left alone on purpose: A ($128,500 across 17.0 months), B ($44,250),
E ($10,000), G.1 ($8,000), F (all zero), D ($0), K ($0).

---

## A. Senior Personnel

Enter each person individually. PESOSE effort is expressed in **calendar
months** (not academic/summer — the Foundation has no academic year).

| # | Name | Cal. months | Funds requested | Implied annual rate |
|---|---|---|---|---|
| 1 | Jonathan S Matthis (PI) | 8.0 | $64,250 | $96,375 |
| 2 | Aaron T Cherian (co-PI) | 9.0 | $64,250 | $85,667 |
| | **Total senior personnel (2)** | **17.0** | **$128,500** | |

Leave academic months and summer months blank/zero for both.

## B. Other Personnel

Paul Matthis goes under **"Other Professionals (Technician, Programmer, etc.)"**
— not Secretarial-Clerical. That distinction matters: 2 CFR 200.413 treats
administrative and clerical salaries as indirect costs by default, and
direct-charging them requires meeting a four-part test. His role is technical.

| Category | # persons | Cal. months | Funds requested |
|---|---|---|---|
| Postdoctoral Scholars | 0 | — | $0 |
| **Other Professionals** | **1** | **9.0** | **$44,250** |
| Graduate Students | 0 | — | $0 |
| Undergraduate Students | 0 | — | $0 |
| Secretarial-Clerical | 0 | — | $0 |
| Other | 0 | — | $0 |
| **Total other personnel** | **1** | | **$44,250** |

$44,250 = $59,000/year × 9/12.

**Total Salaries and Wages (A + B): $172,750**

## C. Fringe Benefits

| | |
|---|---|
| Rate | 20.0% |
| Base | $172,750 (A + B) |
| **Funds requested** | **$34,550** |

⚠️ **The live form has $30,750 here, which is 17.8%, not 20%.** That was the
correct figure back when A+B was $153,750. Fringe is derived from A+B — it must
be re-entered every time any salary changes.

## D. Equipment

**$0.** Equipment requests are not permitted on PESOSE Track 1. Leave empty.

## E. Travel

| | Amount |
|---|---|
| 1. Domestic (incl. Canada, Mexico, U.S. possessions) | **$10,000** |
| 2. International | **$0** |

That $10,000 = $7,000 conference travel + $3,000 I-Corps ecosystem-discovery
travel (four trips at ~$750).

**The I-Corps travel goes here, not in Other Direct Costs.** Grouping it under
I-Corps in the narrative is fine; putting it on the wrong form line is not.

International must be $0 — the I-Corps guidance prohibits international travel.

## F. Participant Support Costs

**All zero. Number of participants: 0** (leave the parenthetical blank or 0).

| | Amount |
|---|---|
| 1. Stipends | $0 |
| 2. Travel | $0 |
| 3. Subsistence | $0 |
| 4. Other | $0 |
| **Total** | **$0** |

No stipends are paid to pilot learners. Do **not** put the 100 I-Corps
discovery interviewees here — they aren't participants or trainees, they receive
nothing, and PAPPG bars this line from being used for payments to research
subjects in any case.

## G. Other Direct Costs

| | Amount |
|---|---|
| 1. Materials and Supplies | **$8,000** |
| 2. Publication/Documentation/Dissemination | $0 |
| 3. Consultant Services | **$32,000** |
| 4. Computer Services | $0 |
| 5. Subawards | $0 |
| 6. Other | **$2,500** |
| **Total Other Direct Costs** | **$42,500** |

- **G.3 Consultant Services $32,000** = governance/licensing counsel $18,000 +
  security assessment $9,000 + community documentation/facilitation $2,000 +
  I-Corps Industry Mentor (Dahen) $3,000. Legal counsel belongs here: PAPPG
  calls line G3 "Consultant Services (also referred to as Professional Service
  Costs)."
- **G.6 Other $2,500** = the I-Corps participation fee only. ⚠️ The live form
  has **$10,000** here — that still includes the $7,500 payroll/HR charge.
- **The $7,500 HR/payroll charge is gone from direct costs.** 2 CFR 200.414(f)
  says costs "must be consistently charged as either indirect or direct costs,
  but may not be double charged." The 15% de minimis is deemed to cover general
  administration, and payroll/HR administration is the textbook example. It is
  now paid out of the $38,970 of indirect recovery instead.

## H. Total Direct Costs (A–G)

**$259,800**

## I. Indirect Costs

| | |
|---|---|
| Rate | 15.0% (de minimis — no NICRA) |
| Base | $259,800 MTDC |
| **Funds requested** | **$38,970** |

**MTDC equals total direct costs here.** With no equipment, no participant
support, no tuition remission, and no subawards, none of the 2 CFR 200.1
exclusions apply — so the base is the full $259,800.

⚠️ **The live form has the base hard-coded at $255,000.** That is a leftover and
does not match total direct costs. Retype the base every time direct costs move,
or the total silently goes wrong.

If the form resists a 15% rate: the PESOSE budget guidance (posted 2026-03-09)
says explicitly that an organization without a NICRA "may elect to use a de
minimis rate of **15%** of the modified total direct costs." Note that PAPPG
24-1 still says 10% throughout — it predates the October 2024 revision of
2 CFR 200.414(f). The PAPPG's own front matter resolves the conflict: where the
PAPPG and 2 CFR disagree, 2 CFR controls.

## J. Total Direct and Indirect Costs

**$298,770**

## K. Fee

**$0.** Leave blank — a fee is for-profit only.

---

## Before you hit submit

- [ ] **Confirm the I-Corps participation fee.** $2,500 is still a placeholder.
      It's posted on the PESOSE website and you must use the fee in effect at
      submission. If it changes, adjust G.3 consultants to keep J ≤ $300,000.
- [ ] **Confirm the 20% fringe rate** against what the Foundation actually
      enacts. If it moves, C, H, I, and J all move.
- [ ] **Cross-check person-months against SciENcv Current & Pending.** Matthis
      8.0 and Cherian 9.0 leave 4.0 and 3.0 months of headroom respectively. No
      other pending proposal may push either person past 12.0 total.
- [ ] **Every named consultant must also appear** on the List of Project
      Personnel, Collaborators, and Partner Organizations. Dahen is on the
      budget, so he must be on that table.
- [ ] **Rebuild the justification PDF** and confirm every figure in its summary
      table matches this sheet line for line.
