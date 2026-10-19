// Compile this entry point from your existing 2026-DAPR project folder.
// Narrative sections stay editable in Typst; finished PDFs replace their drafts.
#import "lib/styles.typ": grant
#import "lib/include_pdf.typ": include-pdf
#import "attachment_settings.typ": attachments
#import "sections/01_Project_Summary.typ" as section-01
#import "sections/02_Project_Narrative.typ" as section-02
#import "sections/03_Research_Plan.typ" as section-03
#import "sections/04_Project_Timeline.typ" as section-04
#import "sections/05_Bibliography.typ" as section-05
#import "sections/06_Resources.typ" as section-06
#import "sections/07_Data_Management_and_Sharing_Plan.typ" as section-07
#import "sections/08_Human_Subjects_Determination.typ" as section-08
#import "sections/10_Budget_Justification.typ" as section-10

#let attachment(item) = include-pdf(item.path, pages: item.pages, title: item.title)
#show: grant

#set page(numbering: "1", number-align: center)
#section-01.body
#pagebreak(weak: true)
#section-02.body
#pagebreak(weak: true)
#section-03.body
#pagebreak(weak: true)
#section-04.body
#pagebreak(weak: true)
#section-05.body
#pagebreak(weak: true)
#section-06.body
#pagebreak(weak: true)
#section-07.body
#pagebreak(weak: true)
#section-08.body

#attachment(attachments.budget)
#pagebreak(weak: true)
#section-10.body

#attachment(attachments.consortium)
#attachment(attachments.aaron-biosketch)
#attachment(attachments.jon-biosketch)
#attachment(attachments.jon-support)

// No new-area justification, draft letters, biosketch preparation, or completion notes.
