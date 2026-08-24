// PART 4 — Organization and Governance.  Page budget: ~1.0
//
// One of the four mandated Track 1 content areas:
//   "Outline activities to establish governance and licensing models,
//    development and integration processes, security and privacy safeguards,
//    and metrics for long-term success."
//
// Serves criterion (b): the long-term sustaining vision.
//
// THIS IS THE HEART OF THE PROPOSAL, and the place where your unusual
// situation has to be handled head-on. The FreeMoCap Foundation already
// exists, which is atypical for a Track 1 applicant and cuts both ways.
//
// The resolution — honest, not a dodge: INCORPORATION IS NOT GOVERNANCE. A
// 501(c)(3) whose maintainers all already know each other is a legal wrapper,
// not a distributed development organization. Name the genuine gaps:
//   * a contribution and review process that works when contributors are not
//     already in the room
//   * a succession story for when a key maintainer's role changes
//   * a deliberate licensing analysis rather than an inherited license
//   * a security and release process
//   * any mechanism for funding maintenance after grant money ends
//
// Saying this plainly converts your biggest apparent weakness into evidence
// that you understand the problem well enough to be worth funding. Put it
// early in this section rather than letting a reviewer discover it.

#import "../../lib/nsf.typ": budget, note

#budget("~1.0 page")

= Organization and Governance

The FreeMoCap Foundation was incorporated as a 501(c)(3) in XXXX and holds stewardship of the projection's main repositories. Track 1 will be used to compare and evaluate models of how authority and responsibility should be distributed beyond the Foundation as the ecosystem grows. 

== Governance scoping 

Track 1 will evaluate models used by comparable scientific and creative open-source projects, among them Python's PEP process, which separates a steering council holding final authority from a core team of trusted contributors and editors, against FreeMoCap's structure and scale. Interviews with maintainers of mature open-source projects during ecoystem discovery will be used to compare and evaluate different governance models. 

[some other stuff here detailing more of the specifics of decision making/how authority is distributed, not sure what to put, will return to this]

== Distributed infrastructure and community extensions

FreeMocap is currently organized as a series of repositories separated by responsibility, and this modular architecture provides an opportunity of separate shared infrastructure of motion capture from domain-specific elements required by particular users. For example, the `skellytracker` interface defines a pathway to implement alternative pose-estimation models into the broader motion capture workflow. This is particularly important as the models commonly used in markerless motion capture software are trained on standard human datasets and do not generalize to atypical morphologies, nonhuman subjects, or other specialized use cases, leaving each group to recreate a motion capture workflow for their use independently.

A community extension system would allow that integration work to be completed once and then reused. A researcher who has integrated a model best suited to a particular population could make it available to others facing the same need, while a computer vision researcher publishing a new method could translate their research to a much broader audience who might otherwise lack the technical knowledge to implement it. In this model, FreeMoCap would maintain the shared workflow, while domain experts could contribute specialized capabilities through defined interfaces. 

Support for this model requires clear organization, governance and security practices. Track 1 will examine what review and quality standards extensions should meet, how approved extensions should be packaged and distriubted, and how maintenance responsibilities should be divided between extension maintainers and core developers. These decisions will be informed by interviews conducted during ecosystem discovery with maintainers of mature open-source projects that already support community extension systems, as well as FreeMoCap users and researchers that can help define the documentation, interfaces, and technical knowledge required to develop and use such extensions. This work will produce a set of contribution, maintenance and review patterns that can guide not only pose-estimation extensions, but other community developed capabilities as well, such as biomechanical analyses. 

== Licensing

The FreeMoCap software and its component repositories are licensed under the AGPL. This choice reflects the central premise of the proposed ecosystem: improvements to publicly funded infrastracture are most valuable when they return to the broader community. The FreeMoCap Foundation also retains the ability to offer alternative licensing terms for organiziation whose intended use is incompatible with the AGPL, providng a potential sustainability mechanism - keeping the OSE freely availabe while commercial licensing can generate resources for maintenance and stewardship. 


== Long-term Sustainability

Discussions with contributors and experienced open-source maintainers during Ecosystem Discovery will shape governance structures that reduce dependence on a small core team, allowing the ecosystem to be community-driven while remaining stewarded by the FreeMoCap Foundation. In parallel, the Foundation will evaluated a diversified model fo financial sustainability, including alternative commercial licensing, standardized hardware kits, training and support services, institutional partnerships, and continued grant funding. Ultimately, we aim for sustainability to come from diversification, with an ecosystem that does not depend on a single maintainer, and an organization that does not depend on a single source of support. 



// -----------------------------------------------------------------------------
// CLOSING OUTPUT SENTENCE — one sentence, no heading, naming what this section
// produces. Keeps activity and output adjacent so the section does not read as
// pure intention, without duplicating the milestone table in Part 7.
// Must correspond to a row in that table.
// -----------------------------------------------------------------------------
// TODO: "This work produces draft governance and licensing documents, posted publicly and reviewed by maintainers of comparable OSEs."
