# Agent operating instructions — 2026 NSF PESOSE

## Standing rules (from Jon, 2026-08-04)

1. **All bot output goes in `notes/bot-slop/`.** Nothing else on disk gets created,
   moved, renamed, or edited unless Jon explicitly asks for that specific change.
2. **`official-pdfs/` is read-only.** Jon curates it. The bot does not add to it.
3. **`old-nsf-pose-repo/` is read-only reference.** Stays exactly where it is.
4. **No prose.** Per project instructions: plan, strategize, find information.
   *Exception log:* 2026-08-04 — Jon explicitly requested one drafted pass on the
   scaffold ("i am specifically telling you to make prose... keep the rule present in
   the general case"). That pass was delivered and then **reverted** at his request the
   same day; the scaffold now carries citations only. The rule is in force. Any future
   exception must be requested as explicitly as that one was.
   Do not draft project summary, project description, or any narrative proposal
   text under any circumstances. Outlines, checklists, indexes, and source dumps
   are fine — sentences that could end up in the submitted document are not.
5. **Everything in this folder is slop by default.** It is unverified machine
   output. It is scaffolding for Jon's thinking, not a work product. Every file
   here carries a provenance header saying where it came from and when.
6. **Cite the authoritative source.** Web scrapes drift. The PDFs in
   `official-pdfs/` and the live NSF pages win over anything written here.

## Folder contract

```
2026-NSF-PESOSE/
├── official-pdfs/        <- Jon's.  READ ONLY.
├── old-nsf-pose-repo/    <- reference. READ ONLY. do not move.
└── notes/
    └── bot-slop/         <- everything the bot writes, and only that
```
