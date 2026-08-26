// =============================================================================
// lib/refs.typ — the single source of truth for citations
//
// WHY THIS ISN'T A .bib FILE
//
// NSF uploads each proposal section as its own separate PDF. References Cited
// is a distinct upload from the Project Description. Typst's `#bibliography()`
// renders the reference list into whichever document declares it — and you
// cannot use `@key` citations in a document that has no bibliography. So a
// normal Typst bibliography would either (a) print the whole reference list
// inside your 7-page Project Description, or (b) leave you unable to cite.
//
// Instead: one ordered array below, consumed by both documents. The Project
// Description calls `c("key")` to get a bracketed number; References Cited
// renders the same array in the same order. Numbering can never drift.
//
// THE URL RULE
//
// PAPPG II.D.2.d(ii) forbids URLs in the Project Description. But NSF 26-506
// requires a pointer to the publicly available open-source product, and tells
// you how to square that: "as URLs may not be included in Project
// Description; proposers should use an in-line citation and an entry in the
// References Cited section to point to the open-source product."
//
// So URLs live HERE and appear only in the References Cited PDF. That is
// permitted — PAPPG II.D.2.e says including a URL in a citation is optional
// but allowed. Never inline a bare URL in narrative text.
// =============================================================================

#let REFERENCES = (
  (
    key: "cherianOpensourceDevelopmentValidation2026",
    entry: [Cherian, A. T. Open-Source Development and Validation of a Low-Cost Markerless System for Quantitative Motion Analysis. 2026.],
  ),
  (
    key: "dariciLowcostMarkerlessMotion2026",
    entry: [Darici, O., Cabak, C., Wong, J. D. A Low-Cost Markerless Motion Capture System to Automate Functional Gait Assessment: Feasibility Study. _PLOS ONE_, 21(6):e0346606, 2026. https://doi.org/10.1371/journal.pone.0346606],
  ),
  (
    key: "eghbal2020",
    entry: [Eghbal, N. Working in Public: The Making and Maintenance of Open Source Software. 2020.],
  ),
  (
    key: "landaEvaluatingIdleAnimation2026",
    entry: [Landa, E. A., Lazkano, E., Rodriguez, I., Rodriguez-Moreno, I., Irigoien, I. Evaluating Idle Animation Believability: A User Perspective. _Computer Animation and Virtual Worlds_, 37(3):e70116, 2026. https://doi.org/10.1002/cav.70116],
  ),
  (
    key: "mazroueiCatchingSmallBalls2026",
    entry: [Mazrouei, A., Ekladuce, Y., Ryait, H., Mohajerani, M., Karl, J. M., Whishaw, I. Q. Catching Small Balls with a Power Grip and Large Balls with a Precision Grip: Distinct Roles for the Reach and Grasp. _Experimental Brain Research_, 244(3):38, 2026. https://doi.org/10.1007/s00221-025-07223-4],
  ),
  (
    key: "minogueValidationFreetoUseMarkerless2025",
    entry: [Minogue, J. P., Napierala, M., Lowe, B., Drazan, J. F. Validation of Free-to-Use, Markerless Motion Capture for Field Based Measurements of Sagittal Plane Kinematics. Software repository. 2025. https://doi.org/10.2139/ssrn.5089509],
  ),
  (
    key: "nunnariDGSFabeln1MultiAngleParallel2024",
    entry: [Nunnari, F., Avramidis, E., España-Bonet, C., González, M., Hennes, A., Gebhard, P. DGS-Fabeln-1: A Multi-Angle Parallel Corpus of Fairy Tales between German Sign Language and German Text. _Proceedings of the 2024 Joint International Conference on Computational Linguistics, Language Resources and Evaluation (LREC-COLING 2024)_, pp. 4847–4857, 2024.],
  ),
  (
    key: "orrMULTICOLLABASLAffectiveComputing2024",
    entry: [Orr, H., Peechatt, M., Alm, C. O. MULTICOLLAB-ASL: Towards Affective Computing for the Deaf Community. _Proceedings of the 26th International ACM SIGACCESS Conference on Computers and Accessibility_, pp. 1–5, 2024. https://doi.org/10.1145/3663548.3688500],
  ),
  (
    key: "peechattMULTICOLLABMultimodalCorpus2024",
    entry: [Peechatt, M., Alm, C. O., Bailey, R. MULTICOLLAB: A Multimodal Corpus of Dialogues for Analyzing Collaboration and Frustration in Language. _Proceedings of the 2024 Joint International Conference on Computational Linguistics, Language Resources and Evaluation (LREC-COLING 2024)_, pp. 11713–11722, 2024.],
  ),
  (
    key: "queenFreeMoCapFreeOpen2024",
    entry: [Queen, P., Cherian, A., Trent, W., Endurance, I., Matthis, J. S. FreeMoCap: A Free, Open Source Markerless Motion Capture System. Software repository. 2024. https://doi.org/10.5281/zenodo.7233714],
  ),
  (
    key: "nunez-lisboaUnderstandingGaitAlterations2024",
    entry: [Núñez-Lisboa, M., Echeverría, K., Willems, P. A., Ivanenko, Y., Lacquaniti, F., Dewolf, A. H. Understanding Gait Alterations: Trunk Flexion and Its Effects on Walking Neuromechanics. _Journal of Experimental Biology_, 227(19):jeb249307, 2024. https://doi.org/10.1242/jeb.249307],
  ),
)

// ---------------------------------------------------------------------------
// ref-num — resolve a key to its 1-based position. Panics loudly on a typo,
// which is what you want: a silent "[0]" in a submitted proposal is worse
// than a failed build.
// ---------------------------------------------------------------------------
#let ref-num(key) = {
  let i = REFERENCES.position(r => r.key == key)
  if i == none {
    panic("Unknown reference key: '" + key + "'. Add it to lib/refs.typ.")
  }
  i + 1
}

// ---------------------------------------------------------------------------
// c — in-line citation. Usage:
//     FreeMoCap is in active use by research labs #c("freemocap").
//     Prior work #c("freemocap", "example2024") established ...
// ---------------------------------------------------------------------------
#let c(..keys) = {
  let nums = keys.pos().map(k => str(ref-num(k)))
  "[" + nums.join(", ") + "]"
}

// ---------------------------------------------------------------------------
// render-references — used by 03-references-cited/main.typ.
// ---------------------------------------------------------------------------
#let render-references() = {
  for (i, r) in REFERENCES.enumerate() {
    block(above: 0.5em, below: 0.5em)[
      #box(width: 2.2em)[\[#(i + 1)\]] #r.entry
    ]
  }
}
