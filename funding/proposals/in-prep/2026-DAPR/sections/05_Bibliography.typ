// Edit the body below. This file also compiles as a standalone attachment.
#import "../lib/styles.typ": grant, grant-table
#import "../config.typ": project-title
#import "../budget.typ": *
#let body = [
= Bibliography

#bibliography(
  "../references.bib",
  style: "vancouver",
  title: none,
  full: false,
)
]

#show: grant
#body
