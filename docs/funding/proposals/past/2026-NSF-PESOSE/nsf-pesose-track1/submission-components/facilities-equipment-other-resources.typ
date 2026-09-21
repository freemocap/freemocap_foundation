// =============================================================================
// FACILITIES, EQUIPMENT AND OTHER RESOURCES — no page limit (PAPPG II.D.2.g)
//
// NARRATIVE ONLY: "must not include any quantifiable financial information."
// No dollars, hours, or percentages. NSF expects what is described here to
// materialize if the award is made. Substantial unfunded collaborations named
// here must ALSO have a matching letter of collaboration.
// =============================================================================

#import "../template/nsf.typ": nsf-doc, DRAFT, note

#show: nsf-doc.with(
  page-limit: none,
  draft: DRAFT,
  title: [Facilities, Equipment and Other Resources],
)

= Organizational Resources

The FreeMoCap Foundation is an incorporated 501(c)(3) nonprofit organization
serving as the long-term steward of the FreeMoCap project and its component
repositories. The Foundation operates as a distributed, remote-first
organization: core team members work from home offices, meet regularly in
person in the Boston area, and attend scientific conferences relevant to
movement research. The Foundation maintains the project's public web presence
at freemocap.org, hosted on a Foundation-managed server.

= Community and Communications Infrastructure

The ecosystem's principal resource is a community platform that already
operates at scale:

- A GitHub organization hosting the project's modular repository suite, with
  continuous integration and release automation handled through GitHub
  Actions;
- A Discord server of approximately 4,000 members, structured so that users
  can ask and answer questions without direct involvement of the core
  development team;
- A weekly community call providing a regular venue for project updates, user
  feedback, and contributor onboarding; and
- A tiered communications model that provides venues at three levels of
  openness: a private core-maintainer channel for internal coordination, the
  open Discord community for user support and discussion, and fully public
  channels — a YouTube channel, Twitch live streams, and social media
  accounts on Twitter and Bluesky — for announcements and public-facing
  content.

This layered communications structure is itself a resource for the proposed
work: it provides the existing venues through which ecosystem discovery,
community education, and contributor recruitment activities will operate.

= Partner and Collaborator Resources

The Foundation works with Boston-area community organizations that provide
physical space and learning communities for the education pilots described in
this proposal, including The Possible Zone and Artisan's Asylum. Workspace in
Boston is additionally available to the team through the Boston Public
Library's nonprofit partnership program. Finally, the project draws on a
distributed network of academic collaborators who make available domain
expertise, populations, and settings for testing and validation across
application areas.

= Computing and Hardware

Core team members maintain desktop and laptop systems covering all supported
platforms — Windows, Linux, and macOS on both Intel and Apple Silicon —
sufficient to test releases across the full platform matrix. This aligns with
the software's design as motion capture for consumer-grade hardware: because
the workflow runs on ordinary webcams, no specialized laboratory equipment is
required to develop or validate it. Web hosting and telemetry services run on
Google Cloud Platform space provided in-kind through the Google for
Nonprofits program.

