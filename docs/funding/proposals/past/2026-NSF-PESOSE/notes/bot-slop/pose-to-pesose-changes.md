# What changed: POSE → PESOSE

<!-- BOT-GENERATED. Comparison of NSF 26-506 (captured 2026-08-04) against the
     NSF 23-556 / 24-606 material in ../../old-nsf-pose-repo/. The old repo's local
     copy is the 23-556 FOA; its README points at 24-606 by URL only. Neither
     24-606 nor Safe-OSE 24-608 has been re-fetched — this comparison is therefore
     PARTIAL. Treat as a starting list of things to look into, not a finished diff. -->

## The structural change

NSF merged two programs into one (stated verbatim on nsf.gov/events/nsf-pesose):

```
POSE       (NSF 24-606)  ─┐
                          ├──> PESOSE (NSF 26-506)
Safe-OSE   (NSF 24-608)  ─┘
```

The old POSE Phase I / Phase II framing is gone. It is now three tracks:

| Old | New | Cap | Duration |
|---|---|---|---|
| POSE Phase I (scoping) | **Track 1** — scoping and planning | $300,000 | 1 yr |
| POSE Phase II (establish) | **Track 2** — establishing and expanding | $1,500,000 | 2 yr |
| Safe-OSE (separate solicitation) | **Track 3** — safety, security, privacy | $1,500,000 | 2 yr |

Note the old vocabulary still leaks into NSF's own documents — the 2026-03-09 budget
page says "Upon the award of a **Phase I or Phase II** PESOSE award." Same thing as
Track 1 / Track 2.

## Changes worth checking before reusing anything from the 2025 attempt

Each of these is a **flag to verify**, not a settled finding.

1. **"Secure" is in the program name now.** Every track — including Track 1 — has a
   security requirement. Track 1 now explicitly requires a *Risk Analysis / Security
   Plan* section covering quality assurance, secure modification and release, identity
   management, and chain of custody. Check whether the 2025 outline has anything here.

2. **Solicitation points proposers at CISA / NSA / OpenSSF guidance.** Named in SOL V.A:
   - CISA https://www.cisa.gov/ and NSA https://www.nsa.gov/
   - ESF *Securing the Software Supply Chain: Developers* https://media.defense.gov/2022/Sep/01/2003068942/-1/-1/0/ESF_SECURING_THE_SOFTWARE_SUPPLY_CHAIN_DEVELOPERS.PDF
   - OpenSSF Best Practices criteria https://www.bestpractices.dev/en/criteria

3. **Letters of collaboration: 3–5 required, ≤2 pages each.** Confirm against what
   24-606 asked for. These take real calendar time to collect and there are 28 days.

4. **Nonprofit salary rules are new-looking and specific** — 75th-percentile BLS,
   SOC codes, live BLS links, no C-level titles. This is the FreeMoCap Foundation's
   situation directly. Worth checking whether 24-606 had this.

5. **Ownership and control test.** Non-profit and for-profit proposers must be U.S.-based
   and >50% U.S.-owned and controlled, with a fully-diluted equity analysis spelled out.
   Verify how this reads for a 501(c)(3) with no equity.

6. **Mandatory experiential activities scaled up.** ≥100 interviews, 3–5 person team,
   $30k budget line, named TL/EL/IM roles. Compare to whatever POSE I-Corps asked
   (old repo has NSF 24-110, the POSE I-Corps supplement, referenced by search only).

7. **Explicit exclusions are sharper.** "Not intended to fund existing well-resourced
   open-source communities" and "not intended to fund the development of open-source
   artifacts, tools or products." A Track 1 narrative that reads as "fund our
   development work" is now explicitly out of scope.

8. **DCL 26-015 (AI agent protocol ecosystems)** did not exist for POSE. If FreeMoCap
   has an angle here, the title format changes to `PESOSE / AI: Track 1: ...` and NSF
   states it "will give strong consideration" to proposals addressing those priorities.
   This is a strategic fork worth an explicit decision, not a default.

9. **Measures of success are now enumerated** (data sets, start-ups, new technologies,
   STEM hires, new infrastructure). Proposals "should advance one or more."

10. **PAPPG version.** Old repo carries a PAPPG PDF of unknown vintage. Current is
    **NSF 24-1**, still in force — NSF deferred NSF 26-1 after EO 14332 — but amended by
    Supplement 1, Supplement 2, and Policy Notice NSF 26-200. Jon's `official-pdfs/`
    copy is 24-1, which is right; the supplements aren't there.

## Reusable assets in the old repo

`../../old-nsf-pose-repo/2025-nsf-pose/` contains:

- `proposal-proper/` — project-description.md, project-summary.md, references.bib
- `document/exports/fmc-nsf-pose-2024-project-description.pdf` — the submitted artifact
- `notes/document-notes/` — outline, formatting notes, proposal checklist, LaTeX templates
- `notes/sample_nsf_grants/` — 11 funded NSF proposals across BIO/GEO/PHY/SOC
- `notes/nsf-pose-youtube-video/` — notes from the old POSE webinar
- `notes/funding-opportunity-announcement-foa/` — 23-556 FOA in html/md/pdf + abridged versions

The 2022-era `POSE_Phase_II_Reviewer_Training_Final.pdf` and
`POSE_Phase_II_Proposal_Preparation...pdf` are the closest thing available to reviewer-
side guidance, but they predate PESOSE by four years and two solicitations.
