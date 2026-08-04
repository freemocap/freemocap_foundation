# DCL NSF 26-015 — decision notes

<!-- BOT-GENERATED 2026-08-04. Analysis/planning notes, not proposal text.
     Full verbatim DCL: official-sources/nsf26-015-dcl-ai-agent-ecosystems.md -->

## What it is, mechanically

- A **Dear Colleague Letter**, published 2026-02-20, one day after the PESOSE
  solicitation (2026-02-19). Signed by Erwin Gianchandani, Assistant Director for TIP.
- **It is not a separate funding opportunity.** No separate money, no separate deadline,
  no separate review panel. Same $40M, same Sept 1 deadline, same tracks, same
  solicitation rules.
- The only mechanical change: **title becomes `PESOSE / AI: Track 1: <title>`**
  instead of `PESOSE: Track 1: <title>`.
- Web-only. **No PDF exists** — bot checked `/pubs/2026/nsf26015/nsf26015.pdf` and
  `nsf-gov-resources.nsf.gov/files/nsf26015.pdf`; both empty.

## The operative sentence

> "NSF will give strong consideration to proposals that address these priorities."

That is a thumb on the scale, not a separate pot. Also: "Research must remain
unclassified and publicly releasable."

## What NSF is actually asking for

The DCL is about **protocols between autonomous agents** — how agents built by
different orgs, on different frameworks, talk to each other. Six named priorities:

| Priority | What they want |
|---|---|
| Interoperability | Open standards so agents work across platforms without custom connectors |
| Scalability | Architectures for large networks of agents/tools/services, integration stays simple |
| Security | Protocols usable across heterogeneous security regimes — see the sub-list below |
| Open Science Applications | Demonstrate + evaluate security features in AI protocols **that enable open science** |
| Partnerships | Academic + nonprofit + industry + government collaborations |
| Education and Training | Train students/postdocs to contribute to AI agent ecosystems |

The Security bullet is unusually specific — cross-domain data classification mapping,
identity verification, role- and attribute-based access control, policy-compliant
channels, robust authn + fine-grained authz, **zero knowledge proofs**, end-to-end
auditability, formally specified safe message formats.

## The framing NSF chose

The DCL's central analogy is **TCP/IP**: DARPA and NSF funded the protocol early, it
became the industry standard, it is now the backbone of the internet. NSF is explicitly
saying it wants to fund the TCP/IP of agent interop. That is the story they are primed
to reward.

## Honest read on fit

**This is a genuine fork, not a free bonus.** Points against reflexively taking it:

- The DCL is about **agent-to-agent protocol standards**. FreeMoCap is a markerless
  motion-capture pipeline. The overlap is not obvious and would have to be real, not
  retrofitted.
- Reviewers for a DCL-tagged proposal will likely be selected for protocol/security
  expertise. A weak AI-agent framing gets read by people who will spot it immediately —
  worse than not claiming it at all.
- NSF's own "What PESOSE Is (Not)" slide already says the program won't fund product
  development. Bolting on an agent-protocol angle that is really "we want to build
  features" compounds that risk.

Points for looking harder before dismissing:

- "Open Science Applications" is the softest of the six and is about **protocols that
  enable open science** — closer to scientific-instrument interoperability.
- If there's a real story about standardized interfaces between motion-capture tooling
  and downstream analysis/agentic pipelines — data schemas, provenance, auditability
  across labs — that is a protocol story, not a features story.
- "Partnerships" and "Education and Training" are ecosystem-shaped priorities that
  overlap heavily with what Track 1 asks for anyway.

## The decision to make

Not "should we mention AI." It's: **is there a protocol/interoperability layer in this
work that would exist whether or not NSF asked for it?**

- If yes → the `PESOSE / AI:` title is probably worth taking, and the DCL's six
  priorities become an organizing frame for the Track 1 sections.
- If no → file as plain `PESOSE: Track 1:` and put the effort into the four Track 1
  review criteria instead. Those are what get scored either way.

**Nothing in the DCL waives or replaces any Track 1 requirement.** The four review
questions in Section VI.A still decide the outcome.
