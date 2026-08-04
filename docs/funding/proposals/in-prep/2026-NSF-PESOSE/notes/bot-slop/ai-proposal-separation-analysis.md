# Can an AI-focused proposal be separated from the main FreeMoCap proposal?

<!-- BOT-GENERATED 2026-08-04. Analysis, not proposal text. Quotes are from ASR
     transcripts and should be checked against audio before driving a decision. -->

## Short answer

There **is** support for separating a second proposal around a different asset — and NSF
states the test explicitly. But the test is stricter than "different work, same community,"
and there is a second problem: the proposed framing may not match what DCL 26-015 actually
asks for.

## NSF's stated test for whether a second asset warrants its own proposal

**W2 (Q&A webinar) @ 00:41:24–00:41:51** — the program director, answering almost exactly
this question:

> "If it's really a new asset and you really see an opportunity to open up a new area,
> advance knowledge in a new area, or really broaden the impacts — and **it's going to
> require thinking about your users differently, maintainers differently** — you're
> probably then [in scope]. [If not,] I'd probably still put you kind of in the middle
> ground. You could make the argument for one or two, but it's still like, **how are you
> going to tease out the difference between operations today and what you're doing and
> what you're proposing?**"

**W2 @ 00:42:09** — what this turns into at review:

> "Reviewers would ask, and NSF, what is the difference between what you're doing today
> and what you're proposing, and is it **distinctly different enough intellectually and
> with regard to broader impacts** to warrant a proposal or an award."

**W2 @ 00:42:34–00:43:31** — on single asset vs. suite:

> "I think you can make the case for both. **We don't have a recipe.** ... If you're only
> going to go with one asset, why that's sufficient. ... Can we start out with one or two
> and can we work our way towards more?"

### The operative criterion

Not "is the work different." It is: **does it require thinking about your users
differently and your maintainers differently?**

That is a community test, not a workstream test. The stated framing — "it would be part of
the same community in some respects" — is the answer that lands in the middle ground NSF
names as the harder case. Two proposals to one panel, from one small nonprofit, about one
community, with the reviewer question already loaded.

## The second and larger problem: DCL fit

**DCL 26-015 is not about integrating AI into your project.** Re-read its six priorities —
every one is about *protocols between autonomous agents*:

| DCL priority | What it asks for |
|---|---|
| Interoperability | open standards so agents work across platforms/orgs without custom connectors |
| Scalability | architectures for large networks of agents, tools, services |
| Security | protocols usable across heterogeneous security regimes (identity, RBAC/ABAC, zero-knowledge proofs, auditability, formally specified message formats) |
| Open Science Applications | demonstrate + evaluate security features **in AI ecosystem protocols** that enable open science |
| Partnerships | academic/nonprofit/industry/government collaboration on adoption |
| Education and Training | train students/postdocs to contribute to AI agent ecosystems |

The DCL's own anchor analogy is **TCP/IP** — NSF funding a protocol early enough that it
becomes the standard. That is the shape of proposal it is inviting.

"Building and integrating AI-enabled workflows within FreeMoCap" is **using** AI. The DCL
is asking for **protocol infrastructure that lets agents interoperate**. Those are
different proposals, and a DCL-titled submission that is really the former is likely to be
read by reviewers selected for protocol and security expertise.

## Where the idea gets stronger

The version that satisfies both tests at once is not "AI inside FreeMoCap." It is a
protocol/interface layer between autonomous agents and scientific measurement systems,
with FreeMoCap as anchor tenant or reference implementation rather than as the subject.

Under that framing:

- **Different users** — agent developers, tool builders, other instrument and data projects
- **Different maintainers** — protocol/spec maintainers, not application maintainers
- **Different letters of collaboration** — from other projects that would adopt the
  interface, not from FreeMoCap users
- **Squarely inside** DCL Interoperability and Open Science Applications
- **Clean answer** to "how is this different from current operations"

That is a genuinely separate OSE that happens to have FreeMoCap as its first adopter.
It is also a considerably more ambitious claim, and it has to be true.

## The requirement that does not bend either way

SOL §V.A elements 1 and 2 apply to **every** PESOSE proposal, DCL or not: a pointer to an
**existing, publicly available** open-source product, plus its current development and
testing model, methods of dissemination, **user base**, and **contributor base**.

The DCL waives none of it. The slide deck adds that PESOSE is "not intended to fund the
development of open-source artifacts, tools or products."

So regardless of framing:

- If the AI/protocol artifact **does not exist publicly yet**, elements 1 and 2 fail on
  their face, and the proposal reads as a request to fund development.
- If it exists only as an internal or planned component of FreeMoCap, then the product
  being pointed at *is* FreeMoCap — and both proposals point at the same product.

Scoping and planning work is legitimately fundable under Track 1. But Track 1 scopes the
**ecosystem around an existing product**; it does not scope a product that does not exist.

## Questions that decide this

1. Is there an **existing, publicly available** artifact for the AI/protocol proposal —
   with its own users and contributors — or would the proposal point back at FreeMoCap?
2. Does it require **different users and different maintainers**, in NSF's words? If the
   honest answer is "same community in some respects," that is the middle ground.
3. Is the work about **agent interoperability protocols**, or about AI features in an
   application? Only the first is DCL-responsive.
4. Can 3–5 **non-overlapping** letters of collaboration be sourced for it, from people not
   related to the proposing team, in 28 days?

## Worth asking NSF directly

This is exactly the kind of question the mailbox exists for, and the 2026-08-11 proposal
preparation webinar is 21 days before the deadline. Suggested framing for PESOSE@nsf.gov:
whether a second Track 1 proposal responsive to DCL 26-015, centered on an
agent-interoperability layer with an existing tool as reference implementation, is
distinguishable enough from a Track 1 proposal on that tool's own ecosystem.
