#import "../helpers/shared.typ": req, budget, src, supply, pitfall
= Risk Analysis and Security Plan <sec-security>
#budget(0.8, 480)

#req(source: "SOL §V.A — Track 1")[
*Risk Analysis/Security Plan*: Identify anticipated security, safety, and privacy risks
and explore mechanisms for quality assurance, secure modification and release, identity
management, and chain of custody.
]

#src("W2", "video_summary — General Importance of Security and Privacy")[
Applies to all tracks, not only Track 3: "Need to convince reviewers and NSF why the asset
matters. Data management security plan is essential. Crucial for sensitive data, e.g.,
biomedical field, software, or data-related projects."
]

#src("SOL", "§V.A — recommended guidance")[
Solicitation names three sources directly. Cite in References Cited (no URLs in body):
CISA; NSA/ESF "Securing the Software Supply Chain: Developers"; OpenSSF Best Practices
criteria.
]

#src("W1", "@ 00:37:59")[
Testing infrastructure is called out for Track 1 and 2 as well: "How are you going to test
that infrastructure? And then how are you going to work with the quality control and
security of new content as it's developed, as it's added."
]

#supply[
- Threat model: technical (dependency/supply-chain, distribution, pretrained-model
  provenance) and socio-technical (credential concentration, maintainer overload)
- Release integrity: signing, provenance, reproducible builds, release checklist, SBOM
- Build/test infrastructure and quality control for incoming content
- Identity management: commit rights, release keys, registry and domain ownership,
  rotation and succession; bus factor per item
- Chain of custody for the measurement record: version, calibration state, config
- Vulnerability disclosure and response policy
- OpenSSF baseline score + documented target
- Privacy: local-first posture, what data leaves the machine, consent, applicable regimes
]
