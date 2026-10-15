# DAPR Typst project

Editable source for **Harmonizing FreeMoCap Movement Data for Rehabilitation Research**.
Converted from the October 14 two-person application draft, with the subsequent human-subjects clarification carried over.

## Start here

Open `main.typ` for the full review copy. Edit the actual text in `sections/`; each section exports a `body` and can also compile by itself. The master files import that same body, so edits appear in both versions.

| File or folder | Purpose |
| --- | --- |
| `main.typ` | All 15 sections, including supporting drafts and preparation notes. |
| `application.typ` | Sections 01-10 only. This is a review bundle, not a direction to submit one combined attachment. |
| `preparation.typ` | Biosketch preparation and completion notes only. |
| `sections/01_...typ` through `13_...typ` | Editable application and letter text. |
| `preparation/14_...typ` and `15_...typ` | Working materials, not certified submission documents. |
| `config.typ` | Project title, author, font, body size, and margins. |
| `budget.typ` | Provisional salary bases, effort, fringe, and other costs; totals update in the table and linked prose. |
| `lib/styles.typ` | Shared heading, paragraph, page, and table formatting. |
| `forms/` | Original filled NIH Word/PDF forms and blank Word templates. |
| `compiled/` | Precompiled review PDFs and individual attachments. Rebuild after editing. |
| `notes/` | Conversion notes and unresolved decisions. |

## Compile

With the Typst CLI installed, run these commands from the project folder:

```sh
typst compile --root . main.typ compiled/main.pdf
typst watch --root . main.typ compiled/main.pdf
typst compile --root . sections/03_Research_Plan.typ compiled/sections/03_Research_Plan.pdf
```

To build every section and all three review documents:

```sh
python build.py
```

The build script uses the Typst CLI when available. It can also use the Python binding (`python -m pip install typst==0.15.0`). Python is not needed when compiling directly with the CLI or in the Typst web app.

In the Typst web app, upload the `.typ` files and their folders with the structure intact, then open `main.typ` as the main file. There are no external Typst packages to download. Keep `--root .` when compiling a section from the CLI so it can access the shared files.

## Formatting and editing

The template uses US Letter, half-inch margins, Arial 11 pt body text, and 9-10 pt tables. Arial must be available to the compiler. It is normally installed on Windows; for another environment, provide your licensed Arial font files or install the font. Font files are not distributed in this project. Resolve any missing-font warning before relying on pagination.

The research plan has explicit page breaks for one aims page, three strategy pages, and one dissemination page. Keep those breaks while editing. Check page limits and the summary's 30-line limit after substantive changes; source conversion does not make an unfinished application submission-ready.

Ordinary text lives inside `#let body = [ ... ]` in each section. Typst uses `= Heading` for headings and `*bold*` for bold text. Literal brackets and currency signs are escaped as `\[` and `\$`; keep those escapes. Bibliographic citations remain the original manual numbers, so update in-text numbers if you reorder the bibliography.

Edit numerical assumptions in `budget.typ`. The budget and linked dollar amounts update together. Review surrounding descriptions and any remaining fixed policy limits after changing assumptions. The original filled Word forms in `forms/` are snapshots and do not update automatically.

## Forms and outstanding items

Sections 07 and 09 are editable Typst working transcriptions, not replacements certified as official NIH templates. The supplied call directs applicants to use the NIH DMS format page and PHS 398 budget form. Retain the original forms for final submission and transfer any changed answers or amounts into the required formats.

The human-subjects section now records Northeastern IRB approval of the original validation study and the PI's retained access to participant identities. It does not claim a determination for the proposed project. Confirm the appropriate classification and final documentation before submission. Mentorship/support letters are generally optional; the institutional consortium-intent letter is required for an external applicant. Detailed reminders are in `notes/REVIEW_NOTES.md`.
