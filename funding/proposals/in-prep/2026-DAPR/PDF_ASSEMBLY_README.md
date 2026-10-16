# Include finished PDFs in the DAPR Typst project

This add-on lets your existing Typst narrative and finished PDF attachments appear
in one preview and one compiled packet. It uses Typst's native PDF image support,
available in Typst 0.14 and later. It does not replace your narrative section files.

## Setup

1. Copy the contents of this folder into your existing `2026-DAPR` folder, alongside
   `main.typ`, `sections/`, `lib/`, `config.typ`, and `budget.typ`. Merge the `lib/`
   folder; keep its existing `styles.typ` file. The new entry point is named
   `main_with_attachments.typ`, so your existing `main.typ` is left intact.
2. Put your five finished PDFs in the new `attachments/` folder. The expected names
   are listed in `attachments/README.md`; you can instead change the paths in the
   configuration file to match your own filenames.
3. Open `attachment_settings.typ`. Replace each `pages: none` with that file's total
   page count. Include all Common Form and Supplement pages in each biosketch.
   The budget is preset to one page. Update that count too if the file changes.
4. Preview or compile `main_with_attachments.typ` instead of `main.typ`.

From the `2026-DAPR` directory, the command-line equivalent is:

```sh
typst compile --root . main_with_attachments.typ DAPR_Application.pdf
```

Use the normal PDF export setting. PDF images currently cannot be exported with
a specific conformance standard such as PDF/A or PDF/UA. The output PDF version
must be at least as recent as the source PDFs. Sources must not be password-protected.

## Document order

The new entry point uses the existing project summary, narrative, research plan,
timeline, bibliography, resources, data-sharing plan, and human-subjects narrative.
It then inserts the budget PDF, the existing Typst budget justification, the
consortium PDF, Aaron's biosketch, Jon's biosketch, and Jon's support letter.

The old Typst budget table and draft consortium/support letters are not included.
The new-area justification, biosketch preparation text, and completion notes are
also omitted. This changes assembly only; it does not complete or alter the
underlying human-subjects paperwork or other narrative content.

To leave out the optional support letter, set `jon-support: none` in the
configuration file. Each other attachment is required by this entry point.

## Updating and checking the packet

When you replace a PDF with an updated version under the same filename, recompile
the packet. If its length changes, update its page count first. Setting the count
too low can omit pages; setting it above the file's length produces a compiler error.
Check the start and end of each attachment in the final preview.

PDF pages are placed on full US Letter pages with no added margins, headers,
footers, or figure captions. `fit: "contain"` prevents cropping. Letter-sized
sources retain their page size; other page sizes are scaled to fit Letter.

Keep the original PDFs for separate portal uploads. Typst embeds page content;
it does not preserve all source-document metadata or accessibility tags, and the
combined output is not the original certified or digitally signed source file.
An ordinary visible signature already present on a source page remains visible.

## References

- https://typst.app/docs/reference/visualize/image/
- https://typst.app/docs/reference/layout/page/
