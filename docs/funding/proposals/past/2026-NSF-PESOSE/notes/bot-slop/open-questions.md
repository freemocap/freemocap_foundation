# Open questions — things the bot could not resolve

<!-- BOT-GENERATED 2026-08-04. Grouped by who has to answer. -->

## Ask NSF (PESOSE@nsf.gov, 703-292-8804)

1. **What is the current I-Corps for PESOSE participation fee?** The 2026-03-09 page says
   it "will be posted on the PESOSE website" and to use the fee in effect at submission.
   The bot could not find a posted number anywhere on nsf.gov. This is a required budget
   line item and cannot be guessed.
2. **Ownership/control test for a 501(c)(3) with no equity.** The eligibility language is
   written entirely in terms of stock, equity, fully-diluted shares, ESOPs, and trusts.
   How a nonprofit with no equity demonstrates ">50% U.S.-owned and controlled" is not stated.
3. **Track 3 slide discrepancy.** The official deck's "Track 3, expanded" slide lists the
   DCL 26-015 AI-agent bullets rather than Track 3 content. Likely a slide-authoring error,
   but worth confirming Track 3's scope hasn't shifted. (Low priority for a Track 1 filing.)

## Ask the FreeMoCap Foundation's own records

4. **Is the SAM.gov UEI active right now?** Solicitation warns registration "can take
   several weeks." 28 days remain. If this is expired or lapsed, it is the critical path
   and nothing else matters until it's fixed.
5. **Is there a federal NICRA?** If not, the 15% de minimis rate applies. This changes the
   whole budget shape.
6. **Does the PI meet the employee test?** "The PI must be an employee of the proposing
   organization who is normally resident in the U.S. and must be acting as an employee of
   the proposing organization while performing PI responsibilities."

## Decisions only Jon can make

7. **Straight PESOSE or the AI-agent DCL angle?** Responding to DCL 26-015 changes the
   proposal title to `PESOSE / AI: Track 1: ...` and NSF says it "will give strong
   consideration" to those priorities. This is a positioning fork with real consequences
   and no obvious default.
8. **Who are the 3–5 letter writers?** Must be current users or contributors *not directly
   related to the proposing team*, each writing ≤2 pages describing past and continuing
   contribution. Longest lead time in the package. Every letter writer also has to appear
   on the personnel/collaborators table.
9. **Who fills TL / EL / IM for I-Corps?** Budget must support 3–5 people. The Industry
   Mentor in particular is someone "with extensive experience developing OSEs" — that may
   not currently be on the roster.
10. **Is the 2026-08-11 Proposal Preparation Webinar worth attending?** It's 21 days before
    the deadline and NSF says it "will focus on the application process itself." Registration
    path not captured; see https://www.nsf.gov/events/nsf-pesose/2026-08-11

## Sources the bot did not capture

11. **NSF_PESOSE_PPT_508c.pdf** binary — text is in `official-sources/`, PDF is not.
    https://nsf-gov-resources.nsf.gov/files/NSF_PESOSE_PPT_508c.pdf
12. **2026-07-09 webinar video** — https://www.youtube.com/embed/HidXRi7Wa3g — not transcribed.
13. **PAPPG 24-1 Supplements 1 and 2, and Policy Notice NSF 26-200.** The base PAPPG in
    `official-pdfs/` is correct and current (NSF 26-1 was deferred after EO 14332), but
    the supplements amend it and aren't in the folder.
14. **Predecessor solicitations NSF 24-606 (POSE) and NSF 24-608 (Safe-OSE)** — needed for a
    complete diff. Only 23-556 exists locally, in the old repo.
15. **Prior POSE / Safe-OSE awards**, program element code **211Y00** — funded-proposal
    patterns not yet reviewed.
    https://www.nsf.gov/awardsearch/search-results?ProgEleCode=211Y00&BooleanElement=Any&BooleanRef=Any&ActiveAwards=true

---

## Added 2026-08-04 — can the Foundation submit two proposals to one deadline?

**Formally: yes.** NSF 26-506 §IV, verbatim, twice over:

> **Limit on Number of Proposals per Organization:** There are no restrictions or limits.
> **Limit on Number of Proposals per PI or co-PI:** There are no restrictions or limits.

Nothing in the solicitation, the DCL, the slide deck, or either webinar transcript
restricts it. Bot grepped both transcripts for multiple-submission language and found none.

### Correction to the framing

**There is no "AI track."** DCL 26-015 is not a fourth track and not a separate
competition. It asks proposers to retitle as `PESOSE / AI: Track #:` and says NSF "will
give strong consideration" to the six named priorities. A DCL-responsive proposal is
still a Track 1 proposal, reviewed against the same four Track 1 criteria, out of the
same $40M.

So the scenario is **two Track 1 proposals**, not one Track 1 plus one AI.

### The blocking question, before any of the logistics

Every PESOSE proposal — DCL or not — must satisfy SOL §V.A elements 1 and 2: a pointer to
an **existing, publicly available** open-source product, plus its current development and
testing model, dissemination, **user base**, and **contributor base**.

The DCL waives none of that. And the deck is explicit that PESOSE is "not intended to fund
the development of open-source artifacts, tools or products."

So: **does the agentic-AI thing already exist as a public open-source product with its own
users and contributors?**

- If **no** → it fails elements 1 and 2 on its face, and reads as a request to fund
  development. Not a viable second proposal at this deadline regardless of the limits.
- If **yes, and it is a genuinely distinct ecosystem** → two proposals are defensible.
- If **yes, but it is part of the FreeMoCap ecosystem** → these are two proposals about
  one OSE, which invites the question W2 records reviewers asking: what is the difference
  between the proposed work and current operations, and why does each warrant an award?

### If both were pursued anyway — the real costs

1. **Letters of collaboration: 3–5 per proposal**, from current users/contributors not
   related to the proposing team, each describing contribution to *that* OSE. Two
   proposals means 6–10 letters, ideally non-overlapping, in 28 days. This is almost
   certainly the binding constraint.
2. **Same program, same panel, likely overlapping reviewers.** Two submissions from one
   small nonprofit about one product can read as an undecided strategy.
3. **If both were funded: two mandatory I-Corps commitments.** 100+ interviews each,
   3–5 people each, kickoff/weekly/closing each. For an organization whose stated problem
   is insufficient organizational capacity, that is a hard thing to staff.
4. **Splitting effort across two 7-page documents** in four weeks, when neither the
   letters nor the SAM.gov/UEI status is resolved.

### Note the second cycle

The deadline recurs **March 2, 2027**. A second proposal is not a now-or-never decision.
