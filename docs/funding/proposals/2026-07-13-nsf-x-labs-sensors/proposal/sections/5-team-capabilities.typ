// ── 5. Team Capabilities Statement ──
// [Provide a Team Capability Statement describing how the Senior/Key Personnel on the proposed leadership team bring together complementary expertise in strategic leadership, technical expertise, and/or entrepreneurship, as applicable. The statement should describe how, collectively, the team demonstrates the experience, adaptability, and collaborative approach necessary to execute the Mission. Briefly describe the team's intended governance structure and autonomy during Phase 0 and Phase 1. If applicable, include an overview of networks, partnerships, and capital resources your team currently has and how they will be deployed in support of the proposal.]

#import "../helpers/shared.typ": semibold, Dome, Domes, Dome-Mobile
#import "../helpers/xref.typ": flag, suggestion
#import "../helpers/collaborator-network.typ": collaborator-figure

= Team Capabilities Statement <sec-team-capabilities>

Building the #Dome demands a combination of expertise that no single institution's faculty could assemble, because the work is neither pure science nor pure engineering but the sustained craft of turning one into the other. The FreeMoCap Foundation was built from the ground up to hold that combination under one roof. The leadership team pairs scientific domain expertise in perception–action neuroscience and clinical biomechanics with enterprise software architecture, applied-AI systems, and hardware and mechatronics engineering at both wearable and facility scale, all run by dedicated operations and finance leadership recruited so the technical staff can stay on the Mission. Each member is detailed individually in @sec-personnel; what matters here is that they already function as a single team, having built and maintained a shipping instrument together — most of them for years, part-time or volunteer alongside senior industry and academic roles, before any funding existed. That is the adaptability and collaborative track record the Mission requires, demonstrated rather than promised.

== Governance and autonomy <sec-governance>

The FreeMoCap X-Lab (FMC-X) will operate as an independent project within the FreeMoCap Foundation, a 501(c)(3) nonprofit whose leadership is nearly identical to FMC-X's and whose existing mission almost fully overlaps it. Final decision authority rests with the President/PI at the top of the org chart, so research, partnership, and hiring decisions are made in days rather than weeks, with no higher management to consult. The Foundation is already autonomous as of this submission: it holds full internal control of funding allocation, research direction, partnership agreements, intellectual property, and hiring, requires no parent-institution approval for any operational decision, and satisfies every condition of the NSF X-Labs Autonomy Factor Test (§6.1.1) at the time of submission. Phase 0 is the runway over which the remaining leaders transition to full-time ahead of Phase 1; the PI and CSO already are.
// NOTE (canonical location — unflagged 2026-07-13): §5 OWNS governance, so this
// is the right home for the FMC-X-within-FMC-F / PI-final-say statement. The
// duplicates to resolve are ELSEWHERE: Mission's Unmet Needs (@sec-unmet-needs,
// "founded the FreeMoCap Foundation...") is the redundant re-telling (flagged red
// there); the PI bio (@sec-personnel) legitimately keeps the "left Northeastern"
// fact but not the 501(c)(3)/governance detail. Prior pass flagged this canonical
// sentence by mistake — cut the echoes, not the source.

== Network, partnerships, and community <sec-network>

A standing, active network of research groups already spans every domain the #Dome serves — human perception-and-action researchers, robotics and prosthetics groups, visual neuroscientists working in ferret and mouse, musculoskeletal biomechanists working in guinea fowl, and primate electrophysiologists. This network is real and in use today, not aspirational, with existing collaborations and shared tooling across multiple sites; the PI architects and holds the instrument-and-network together while the domain-specific science is executed by the named collaborators (@tbl-collaborators).

#v(0.6em)
#grid(
  columns: (165pt, 1fr),
  gutter: 1.2em,
  align: (left + top, left + top),
  collaborator-figure,
  [
    The community sets design and roadmap priorities through structured processes that gather broad input without stalling on consensus — a Request-for-Comments process modeled on Python's PEP system — and convenes in person twice a year across workshops that train students and out-of-domain experts, hackathons that onboard developers, conferences that share #Dome -based research, and a congress that sets organizational direction. A Community Grants Program and Developer Fund sustain the open-source network and double as a testbed for engagement mechanisms.
  ],
)
#v(0.6em)

== A proven model at smaller scale <sec-proven-model>

FreeMoCap has already proven this operating model. It is an open-source markerless motion-capture instrument, built and maintained outside academia, scoped to the measurement itself with an obsessive focus on usability and refusing to claim any research domain — and that refusal is precisely what let it become a commons rather than one lab's tool. The receipts are concrete: over 15,000 users across 152 countries, more than 10,000 GitHub stars, and over 3,500 Discord members. The #Dome applies the same measurement-scoped, master-built, open, full-time-maintained model to the far larger target of the complete interaction loop — a scale reachable only with the dedicated, autonomous, milestone-based funding the X-Labs program exists to provide.
// NOTE (canonical location — unflagged 2026-07-13): this is the fullest, correctly
// scoped version of the "15,000 users / 152 countries" receipts (adds GitHub stars
// + Discord members), and §5 is where "networks/community/capital" belongs — so the
// full numbers LIVE HERE. Resolve the duplication upstream: cut the repeat in
// Mission's Unmet Needs (@sec-unmet-needs, flagged red), and keep just ONE lean
// credibility hook in Mission's opening (@sec-new-instrument) — now flagged blue
// (tighten, don't delete) rather than red, since a single receipt there earns the
// vision and is legitimately Mission-level.

== Intellectual property and dissemination <sec-ip>

The IP strategy keeps the core instrumentation open while actively pursuing adoption and commercialization: an open-source core under permissive licensing for downstream use, structured so the platform technologies stay widely accessible as the team pursues adoption, commercialization, and ecosystem growth. A full IP Management Plan is due by the end of Phase 0 under the OT agreement and will be developed against that milestone.

#suggestion(note: [explicit adoption / widespread-use / investment path — the solicitation asks §5 for "networks, partnerships, and capital resources... and how they will be deployed," and rewards positioning for "widespread use and investment." Currently the section stops at licensing])[
Adoption is not left to chance; it runs on the engine that already built FreeMoCap. The standing collaborator network and community described above are the distribution channel: every validated #Dome instance at a partner site is both a scientific node and a reference build others reproduce from a published parts list, build guide, and calibration protocol. Because the platform is grant-funded and offered at or near cost, it reaches price points commercial vendors are structurally unable to serve, decoupling access to world-class measurement from any single vendor's need to profit and seeding an ecosystem the private sector can build on rather than gate. The open-source core invites downstream products, services, and integrations to form around one shared measurement standard, so the X-Lab's reach is counted not in units sold but in the independent instruments, companies, and published results that adopt the ontology — the condition under which a measurement becomes infrastructure and attracts sustained external investment.
]
