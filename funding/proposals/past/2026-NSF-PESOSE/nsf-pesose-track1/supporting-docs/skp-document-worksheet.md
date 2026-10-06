# Senior/Key Personnel documents — what they are and what goes in them

Working notes, not a submission artifact. Nothing here gets uploaded.

Research.gov is blocking submission on two documents, for both Jonathan Samir
Matthis and Aaron Cherian:

- Current and Pending (Other) Support
- Collaborators and Other Affiliations (COA)

**Neither can be written as a Typst document in this repo.** Both have mandated
formats produced by NSF tools. What follows is what each one is, and what
information to gather before sitting down with the tool.

---

## 1. Current and Pending (Other) Support

### It must come from SciENcv

PAPPG II.D.2.h(ii), verbatim:

> Current and pending (other) support information must be provided separately
> for each individual designated as a senior/key person through use of SciENcv
> (Science Experts Network Curriculum Vitae). SciENcv will produce an
> NSF-compliant PDF version of current and pending (other) support. Senior/key
> personnel must prepare, save, **certify**, and submit these documents as part
> of their proposal via Research.gov or Grants.gov.

Same tool that produced the biosketches already in `skp/`. Each person does
their own and certifies it personally — nobody can prepare it on their behalf.

### What it is for

> ...used to assess the capacity or any conflicts of commitment that may impact
> the ability of the individual to carry out the research effort as proposed.
> The information also helps assess any potential scientific and budgetary
> overlap/duplication with the project being proposed.

### What has to be listed

A separate entry for **each proposal and each active project**, including
in-kind contributions. No page limit. Per entry, SciENcv asks for:

- Title, and the supporting organization
- Award/proposal number if there is one
- Total anticipated amount, inclusive of indirect costs
- Start and end dates
- **Person-months per year devoted** — "even if unsalaried"
- Overall objectives (1500 characters)
- **Statement of Potential Overlap** with this proposal, in terms of scope,
  budget, or person-months. If none, the field must literally say "none."

### Gather this before opening SciENcv

For **each of Matthis and Cherian**:

| | Matthis | Cherian |
|---|---|---|
| This PESOSE proposal — person-months | 8.0 | 9.0 |
| Any other **pending** proposal | ? | ? |
| Any **active** award | ? | ? |
| In-kind contributions ≥ $5,000 | ? | ? |
| Foreign government-sponsored support | ? | ? |

Two things to watch:

- **This proposal itself gets an entry**, at 8.0 and 9.0 person-months. Those
  numbers must match the budget exactly.
- **The person-month arithmetic has to survive.** 8.0 and 9.0 leave 4.0 and 3.0
  months of headroom in a 12-month year. If another pending proposal pushes
  either person past 12.0, NSF will see the overcommitment on this form.

Also required disclosures: consulting activities that involve research or that
touch the research portfolio, and any foreign government-sponsored talent
recruitment program participation. Participation in a *malign* foreign talent
recruitment program is prohibited outright.

---

## 2. Collaborators & Other Affiliations (COA)

### It must use NSF's COA template

PAPPG II.D.2.h(iii):

> The COA information must be provided through use of the COA template.

That is NSF's official spreadsheet, downloaded from the NSF COA template page —
not a document written here. One per senior/key person.

### It is a Single Copy Document

Reviewers **never see it**. It goes to NSF staff only, and its whole job is
conflict-of-interest screening when picking reviewers. That is also why the
solicitation's List of Project Personnel exists and why it must name every
letter-of-collaboration writer — the two documents do the same job from
different directions.

Practical consequence: **being thorough here costs nothing and protects the
review.** Anyone omitted could end up reviewing the proposal.

### The five tables

**Table 1 —** the individual's own last name, first name, middle initial, and
organizational affiliations in the **last 12 months**.

**Table 2 —** anyone whose personal, family, or business relationship would
preclude them serving as a reviewer. Must state the type of relationship.

**Table 3 —** PhD advisors, and **all** PhD thesis advisees.

**Table 4 —** co-authors on any book, article, report, abstract, or paper in
the **last 48 months** (publication date may be later); and collaborators on
projects — funded awards, graduate research, or otherwise — in the last 48
months.

**Table 5 —** editorial boards: editor-in-chief and journal in the past 24
months, and co-editors directly interacted with in the last 24 months. An
editor-in-chief must list the entire board.

### Candidate entries derived from this repo

Derived from actual repo contents. **Incomplete by definition** — neither
person's full publication and collaboration history is in this repository.
Verify and extend.

**Table 4 candidates — co-authors** (from References Cited entry [1], the
FreeMoCap Zenodo record, 2026, within 48 months):

- Queen, P.
- Cherian, A. — *also a co-PI, so he appears on Matthis's COA and vice versa*
- Wirth, T.
- Idehen, E. — *also the budgeted I-Corps Industry Mentor*

**Table 4 candidates — collaborators** (letter-of-collaboration writers; each
must also be on the List of Project Personnel):

| Name | Organization | Stated relationship |
|---|---|---|
| David Bayus | San José State University, CADRE Lab | External user, contributor, educational collaborator |
| Jonathan Nilsson | GIBBET GAMES AB (Sweden) | External user and collaborator |
| Raven Tukes | The Possible Zone | External educational collaborator |
| Sarah Kerr | Imatest LLC | External technical collaborator |
| Andres Casals | — (stated in compiled doc) | External contributor |
| Dominic Scott | — (stated in compiled doc) | External contributor |
| [third name in compiled doc] | — | External contributor |
| Ben Scholl | [pending letter] | — |

Judgment call, yours: Table 4 says *collaborators*. Bayus, Nilsson, Casals and
Scott have demonstrably collaborated. TPZ and Imatest wrote prospective letters
describing no current work together. Including them is the conservative choice
and costs nothing.

### One question I cannot answer and will not guess

**Was Matthis Cherian's PhD advisor?**

Cherian's dissertation is Northeastern University, Department of Bioengineering,
2026. If Matthis advised it, then each belongs in the **other's Table 3**
(advisor / thesis advisee), and that is precisely the relationship COA exists to
surface. If not, they still appear in each other's Table 4 as co-authors.

Answer this before filling either template.

---

## 3. Other Personnel Biographical Information

### Your question: is it only Paul Matthis?

**Yes.** Here is the reasoning, which you can check.

PAPPG II.D.2.h(b) limits this document to three categories: **postdoctoral
associates, other professionals, and students (research assistants)**. Those map
to Line B of the budget — Other Personnel.

This budget's Line B contains exactly one person: **Paul Matthis, Research
Infrastructure Engineer, 9.0 calendar months, $44,250.**

Who is *not* eligible, and why:

- **Matthis and Cherian** — senior/key personnel on Line A. Their biographical
  information is the SciENcv biosketch, already in `skp/`. A senior/key person
  cannot appear in this document.
- **Endurance Idehen** — budgeted on G.3 Consultant Services, not Line A or B.
  He is not personnel of the proposing organization, so he falls outside all
  three PAPPG categories. His role is described in the Budget Justification and
  he belongs on the List of Project Personnel.

### What the document actually is

- **Optional.** Omitting it is fully compliant.
- **Freeform.** No SciENcv, no template, no page limit, no required fields.
- **One PDF** covering everyone included.
- Must be clearly labeled "Other Personnel" — the scaffold's heading does this.
- Its stated purpose is narrow: *"information on exceptional qualifications that
  merit consideration in the evaluation of the proposal."*

That last line is the whole decision. This is not a personnel roster — it exists
to tell reviewers something that strengthens the case. A thin entry is worse
than no entry, because it draws attention to a 9-month budgeted role without
justifying it.

### It is blank because I did not invent anything

To fill it, I need from you:

1. **Whether to include it at all.** Argument for: 9.0 calendar months and
   $44,250 of budgeted effort, and the solicitation requires "a strong
   justification that makes the case that the team is qualified." Argument
   against: if there is no *exceptional* qualification to state, silence is
   stronger.
2. Full name as it should appear
3. Current position title
4. Education — degrees, institutions, fields, dates; or explicitly none
5. Professional experience — employers, roles, dates
6. The specific technical background behind the budgeted responsibilities:
   GitHub Actions CI/release infrastructure, project web services, the GCP
   environment hosting telemetry, provenance and data-quality instrumentation,
   education-pilot infrastructure, contributor-facing operational documentation
7. Products, repositories, or publications — or none

Give me any of that in whatever form and I will draft it.

---

## Order of operations

1. Answer the advisor question above.
2. Both of you open SciENcv, create Current & Pending, certify, submit.
3. Download the COA template, fill five tables each, upload as a Single Copy
   Document.
4. Decide on Other Personnel; send me Paul's details if yes.

Steps 2 and 3 clear the two blocking Research.gov errors. Step 4 is optional.
