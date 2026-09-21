# Letters of Collaboration — what NSF actually asks for

<!-- BOT-GENERATED 2026-08-04. Verbatim requirement quoted from official-pdfs PDF.
     Everything under "Inference" is the bot reasoning, not NSF instruction. Label maintained. -->

## The requirement, verbatim (NSF 26-506 §V.A)

> **1. Letters of Collaboration (required)**
>
> A minimum of three and up to five letters of collaboration from third-party **users and/or
> contributors** of the open-source product must be uploaded. These letters must be from
> current users or contributors (who are not directly related to the proposing team) of the
> open-source product. Each letter should clearly describe how they have contributed and will
> continue to contribute to the development of the proposed OSE. If the OSE will depend on
> facilities infrastructure provided by the proposing organization or another organization
> after the conclusion of the award, one letter of collaboration describing the extent and
> term of this provision should be included. For Track 3: Letters must he importance of the
> vulnerabilities to be addressed from the perspective of users.
>
> PESOSE letters of collaboration do not have to conform to the standard format specified in
> the PAPPG. In addition to the above information, each letter of collaboration (not to exceed
> two pages) must include the name of the letter writer, current affiliations (institution or
> place of employment), and relationship to the members of the proposing team.

*(The "Letters must he importance" clause is a typo in NSF's own published solicitation.
Reads as "must [convey] the importance." Track 3 only — does not apply here.)*

## Parsing it

| Element | Requirement |
|---|---|
| Count | ≥3, ≤5 |
| Who | **users and/or contributors** — "and/or" is load-bearing. A pure user qualifies. |
| Independence | "not directly related to the proposing team" — arm's length. Not Foundation staff, not co-PIs, not people you employ. |
| Content | how they *have* contributed **and** how they *will continue* to contribute **to the OSE** |
| Length | ≤2 pages each |
| Must state | name, current affiliation (institution or place of employment), relationship to the proposing team |
| Format | explicitly **exempt from the PAPPG standard format** |

Two things fall out of that table:

**1. Users count. You do not need five code contributors.** The requirement says "users
and/or contributors" twice. Your ratio problem — many users, few contributors — is not a
problem for this document.

**2. "Contribute to the development of the proposed OSE" ≠ "commit code."** The OSE is the
ecosystem and its managing organization. Contributing to *that* includes: serving on an
advisory board or steering committee, structured user feedback, testing releases, writing
or reviewing documentation, teaching with it, institutional adoption, contributing
datasets, hosting or co-running a workshop, participating in the governance design.

**3. The PAPPG-exemption is a signal.** The standard PAPPG collaboration letter is one
boilerplate sentence, and NSF is explicitly telling you not to file those here. They want
substantive letters.

## Inference — what NSF is using these for

Not stated in the solicitation. Bot's read, based on how the letters interact with the
review criteria:

- **Evidence for criterion #1** — third parties independently confirming the need is real
  and inadequately addressed. This is the main job.
- **Evidence an ecosystem exists to build**, rather than a project with one maintainer and
  a download count.
- **Conflict management** — the personnel table explicitly says "NSF staff will use this
  information in the merit review process to manage reviewer selection," and letter writers
  must appear on that table.

These are not prestige signals. A famous name with a generic letter is worth less than a
named lab describing exactly what they did with the tool and what role they'll take next.

## Inference — portfolio shape

Diversity across user segments probably beats depth in one, because ecosystem *breadth* is
the thing the program is about. A plausible spread for 5:

| Slot | Type | What it demonstrates |
|---|---|---|
| 1 | Research lab with published work using it | Domain problem is real; intellectual merit |
| 2 | Educator / institution using it in curriculum | Maps to NSF's "STEM education and workforce" measure of success |
| 3 | Clinical or applied user | Societal impact, criterion #1 |
| 4 | An actual code contributor | Proves the contributor funnel exists and can grow |
| 5 | Industry, nonprofit, or institutional adopter | Sustainability story has a counterparty |

Five letters from five researchers in one subfield is a weaker signal than five letters
from five different corners of the ecosystem.

On "community people may not be the best candidates": worth separating two things. Lacking
institutional letterhead is a mild weakness — NSF does ask for "current affiliations
(institution or place of employment)." But a long-standing community contributor who can
describe specifically what they built, over what period, and what governance role they'd
take in the future is a *stronger* letter than a prestigious user who writes three vague
sentences. Optimize for specificity and a named future role first, affiliation second.

## What separates a strong letter from a weak one

Strong:
- Names what they specifically did — the project, the scale, over what period
- States a **concrete continuing role** in the OSE, ideally one that maps to a workstream
  in the project description (advisory committee, release testing, docs, workshop host,
  dataset provider, governance working group)
- States affiliation and relationship to the team plainly

Weak:
- General enthusiasm, "important project, wish them luck"
- Past tense only, with no forward commitment
- Vague on who the writer is or how they know you

## Practical notes

- **This is the longest-lead item in the package and the deadline is 2026-09-01.** Letters
  require asking a person, waiting, and often a reminder. Start now.
- The "will continue to contribute" clause means this is a **coordination task, not a
  testimonial request** — you have to tell each writer which role you're asking them to
  take, or they can't write the required content. Decide the roles before you ask.
- Every letter writer must also appear in the **List of Project Personnel, Collaborators,
  and Partner Organizations** table (Full name | Organization | Role).
- Do not draft these letters. They must be the writer's own account, and NSF is explicitly
  asking for non-boilerplate.

## Open question for NSF (PESOSE@nsf.gov)

**Does the facilities-infrastructure letter count inside the 3–5, or on top of it?** The
text places it in the same paragraph without saying. If FreeMoCap will depend on facilities
or hosting from any organization after the award ends, this letter is required and the
arithmetic matters. Worth one email.
