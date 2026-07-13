// ── 5. Team Capabilities Statement ──
// [Provide a Team Capability Statement describing how the Senior/Key Personnel on the proposed leadership team bring together complementary expertise in strategic leadership, technical expertise, and/or entrepreneurship, as applicable. The statement should describe how, collectively, the team demonstrates the experience, adaptability, and collaborative approach necessary to execute the Mission. Briefly describe the team's intended governance structure and autonomy during Phase 0 and Phase 1. If applicable, include an overview of networks, partnerships, and capital resources your team currently has and how they will be deployed in support of the proposal.]

#import "../helpers/shared.typ": semibold, Dome, Domes, Dome-Mobile
#import "../helpers/xref.typ": flag, suggestion
#import "../helpers/collaborator-network.typ": collaborator-figure

= Team Capabilities Statement <sec-team-capabilities>

// COMPACTED 2026-07-13 → green block below. Original:
// Building the #Dome demands a combination of expertise that no single institution's faculty could assemble, because the work is neither pure science nor pure engineering but the sustained craft of turning one into the other. The FreeMoCap Foundation was built from the ground up to hold that combination under one roof. The leadership team pairs scientific domain expertise in perception–action neuroscience and clinical biomechanics with enterprise software architecture, applied-AI systems, and hardware and mechatronics engineering at both wearable and facility scale, all run by dedicated operations and finance leadership recruited so the technical staff can stay on the Mission. Each member is detailed individually in @sec-personnel; what matters here is that they already function as a single team, having built and maintained a shipping instrument together — most of them for years, part-time or volunteer alongside senior industry and academic roles, before any funding existed.

Building the #Dome demands expertise no single faculty could assemble: the work is neither pure science nor pure engineering but the sustained craft of turning one into the other, and the FreeMoCap Foundation was built to hold that combination under one roof. The leadership pairs perception–action neuroscience and clinical biomechanics with enterprise software architecture, applied-AI systems, and hardware and mechatronics engineering at wearable and facility scale, run by dedicated operations and finance leaders so the technical staff can stay on the Mission. Each member is detailed in @sec-personnel; what matters here is that they already function as a single team, having built and maintained a shipping instrument together — most for years, part-time or volunteer alongside senior roles, before any funding existed.

// CONDENSED 2026-07-13 → green block below. Original:
// *Governance and autonomy.* The FreeMoCap X-Lab (FMC-X) will operate as an independent project within the FreeMoCap Foundation, a 501(c)(3) nonprofit whose leadership is nearly identical to FMC-X's and whose existing mission almost fully overlaps it. Final decision authority rests with the President/PI at the top of the org chart, so research, partnership, and hiring decisions are made in days rather than weeks, with no higher management to consult. The Foundation is already autonomous as of this submission: it holds full internal control of funding allocation, research direction, partnership agreements, intellectual property, and hiring, requires no parent-institution approval for any operational decision, and satisfies every condition of the NSF X-Labs Autonomy Factor Test (§6.1.1) at the time of submission. Phase 0 is the runway over which the remaining leaders transition to full-time ahead of Phase 1; the PI and CSO already are.

*Governance and autonomy.* The FreeMoCap X-Lab (FMC-X) operates as an independent project within the FreeMoCap Foundation, a 501(c)(3) whose leadership and mission nearly fully overlap it. Final authority rests with the President/PI, so research, partnership, and hiring decisions are made in days rather than weeks. The Foundation is already autonomous at submission — full internal control of research, funding, partnerships, IP, and hiring with no parent-institution approval required — and satisfies every condition of the NSF X-Labs Autonomy Factor Test (§6.1.1). Phase 0 is the runway over which the remaining leaders go full-time; the PI and CSO already are.

*Network, partnerships, and community.* An active network of research groups already spans every domain the #Dome serves — human perception-and-action researchers, robotics and prosthetics groups, visual neuroscientists working in ferret and mouse, musculoskeletal biomechanists working in guinea fowl, and primate electrophysiologists (@tbl-collaborators).

#grid(
  columns: (145pt, 1fr),
  gutter: 1em,
  align: (left + top, left + top),
  collaborator-figure,
  [
  Under X-Lab funding, we will merge this collaborator network and the gloabally distrbuted community  FreeMoCap users to form a coherent culture organized around a shared set of tools, skills, and measurements. We will communicate design plans and roadmap priorities through structured processes that gather broad input without stalling on consensus — a Request-for-Comments process modeled on Python's PEP system. 
  
    Once a year, we will host an overlapping set of in-person events including workshops that train students and out-of-domain experts, hackathons that onboard developers, conferences that share #Dome -based research, and a congress
  ],
)
 that sets organizational direction. A Community Grants Program and Developer Fund sustain the open-source network and serve as a testbed for community engagement and consensus-seeking mechanisms.

*A proven model.* FreeMoCap has already proven this operating model - over 15k users across 152 countries, ~10k GitHub stars, and over 3,500 Discord members.  It is a gift freelygiven, built and maintained outside academia, scoped to the measurement itself with an obsessive focus on usability and refusing to claim any research domain — and that refusal is precisely what let it become a commons rather than one lab's tool. The #Dome applies the same measurement-scoped, master-built, open, full-time-maintained model to the far larger target - a scale reachable only with the dedicated, autonomous, milestone-based funding the X-Labs program exists to provide.


*Intellectual property and dissemination.* The IP strategy keeps the core instrumentation open while actively pursuing adoption and commercialization: an open-source core under permissive licensing for downstream use, structured to maximize adoption and impact. A full IP Management Plan is due by the end of Phase 0 under the OT agreement and will be developed against that milestone.

Adoption and dissemination will run on the engine that already built FreeMoCap. The standing collaborator network and community described above are the distribution channel: every validated #Dome instance at a partner site is both a scientific node and a reference build others reproduce from a published parts list, build guide, and calibration protocol. Because the platform is grant-funded and we can sell our hardware wtih very low margins to a reach price point that ensure maximum penetration across the widest possible slice of society. The open-source core invites downstream products, services, and integrations to form around one shared measurement standard, built without black-boxes or IP-induced cones of silence, so the X-Lab's reach is counted not only in units sold but in the independent instruments, companies, and published results that adopt the shared philosophy organized around the love of measurement, and the expansive drive to see more and more fully than we ever could before.


