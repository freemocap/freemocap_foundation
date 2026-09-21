#!/usr/bin/env python3
"""
Convert a BibTeX file into the REFERENCES array in template/refs.typ.

    python bib_to_refs.py                     # rewrites refs.typ in place
    python bib_to_refs.py --dry-run           # print to stdout, change nothing
    python bib_to_refs.py --bib other.bib --refs ../template/refs.typ

Only the REFERENCES array is replaced; ref-num, c(), and render-references are
left untouched. A .bak copy is written before any modification.

Requires bibtexparser (v1 or v2 both handled).
"""

import argparse
import re
import shutil
import sys
from pathlib import Path

# ---------------------------------------------------------------------------
# LaTeX -> Unicode. BibTeX exports from Zotero are full of these; Typst has no
# idea what \'i means and will render it literally.
# ---------------------------------------------------------------------------
ACCENTS = {
    r"\'a": "á", r"\'e": "é", r"\'i": "í", r"\'o": "ó", r"\'u": "ú",
    r"\'A": "Á", r"\'E": "É", r"\'I": "Í", r"\'O": "Ó", r"\'U": "Ú",
    r"\'c": "ć", r"\'n": "ń", r"\'s": "ś", r"\'y": "ý", r"\'z": "ź",
    r"\`a": "à", r"\`e": "è", r"\`i": "ì", r"\`o": "ò", r"\`u": "ù",
    r"\`A": "À", r"\`E": "È", r"\`O": "Ò", r"\`U": "Ù",
    r"\~n": "ñ", r"\~a": "ã", r"\~o": "õ", r"\~N": "Ñ",
    r"\~A": "Ã", r"\~O": "Õ",
    r'\"a': "ä", r'\"e': "ë", r'\"i': "ï", r'\"o': "ö", r'\"u': "ü",
    r'\"A': "Ä", r'\"O': "Ö", r'\"U': "Ü", r'\"y': "ÿ",
    r"\^a": "â", r"\^e": "ê", r"\^i": "î", r"\^o": "ô", r"\^u": "û",
    r"\^A": "Â", r"\^E": "Ê", r"\^O": "Ô",
    r"\ss": "ß", r"\aa": "å", r"\AA": "Å", r"\o": "ø", r"\O": "Ø",
    r"\ae": "æ", r"\AE": "Æ", r"\l": "ł", r"\L": "Ł",
    r"\c c": "ç", r"\c C": "Ç", r"\v s": "š", r"\v z": "ž", r"\v c": "č",
    r"\v S": "Š", r"\v Z": "Ž", r"\v C": "Č",
    r"\&": "&", r"\%": "%", r"\_": "_", r"\$": "$", r"\#": "#",
    "--": "–", "---": "—", "~": " ",
}

# Typst markup characters that must be escaped inside content blocks.
TYPST_ESCAPE = {
    "#": r"\#",
    "@": r"\@",
    "$": r"\$",
    "*": r"\*",
    "_": r"\_",
    "[": r"\[",
    "]": r"\]",
}


def escape_typst(s: str) -> str:
    for ch, rep in TYPST_ESCAPE.items():
        s = s.replace(ch, rep)
    return s


def clean_latex(s: str) -> str:
    """Strip LaTeX accents, brace protection, and stray commands."""
    if not s:
        return ""
    s = s.replace("\n", " ")

    # {\'i} and {\'{i}} forms -> resolve the accent, then drop the braces.
    for _ in range(3):
        s = re.sub(
            r"\{(\\[a-zA-Z`'\"^~]+\s*\{?[a-zA-Z]?\}?)\}",
            lambda m: m.group(1),
            s,
        )

    # Longest-first so \'A doesn't get eaten by a shorter key.
    for tex in sorted(ACCENTS, key=len, reverse=True):
        s = s.replace(tex, ACCENTS[tex])

    # Remove any surviving \command{...} wrappers, keeping the argument.
    s = re.sub(r"\\(?:emph|textit|textbf|text|mkbibquote)\{([^{}]*)\}", r"\1", s)
    s = re.sub(r"\\[a-zA-Z]+\s*", "", s)

    # Zotero's brace-protected title case: {{FreeMoCap}} -> FreeMoCap
    s = s.replace("{", "").replace("}", "")

    s = re.sub(r"\\s+", " ", s).strip()
    return escape_typst(s)


def format_authors(raw: str) -> str:
    """
    'Last, First and Last, First' -> 'Last, F. M., Last, F. M.'

    Initials rather than full given names, so a long author list does not eat
    the References Cited page. PAPPG requires all authors in publication
    order, which this preserves.
    """
    if not raw:
        return ""
    out = []
    for name in re.split(r"\s+and\s+", raw):
        name = clean_latex(name).strip()
        if not name:
            continue
        if "," in name:
            last, given = name.split(",", 1)
        else:
            parts = name.rsplit(" ", 1)
            last, given = (parts[1], parts[0]) if len(parts) == 2 else (name, "")
        initials = " ".join(
            f"{p[0]}." for p in re.split(r"[\s.-]+", given.strip()) if p
        )
        out.append(f"{last.strip()}, {initials}".strip().rstrip(","))
    return ", ".join(out)


def _dot(s: str) -> str:
    """Terminate with a single period, tolerating an existing one."""
    s = s.strip()
    return s if s.endswith(".") else s + "."


def format_entry(e: dict) -> str:
    """
    Build one Typst content block. Fields are only emitted if present, which
    is what the naive version got wrong — it printed '__, :, 2026.' for
    anything without a journal.
    """
    etype = e.get("ENTRYTYPE", "").lower()
    parts = []

    authors = format_authors(e.get("author", "") or e.get("editor", ""))
    if authors:
        parts.append(_dot(authors))

    title = clean_latex(e.get("title", ""))
    if title:
        parts.append(_dot(title))

    # Container: journal, proceedings, or book. Italicised in Typst via _..._
    container = clean_latex(
        e.get("journal") or e.get("journaltitle") or e.get("booktitle") or ""
    )
    if container:
        parts.append(f"_{container.rstrip('.')}_,")

    # Thesis and report types name their institution instead of a container.
    if etype in ("phdthesis", "mastersthesis", "thesis"):
        kind = {
            "phdthesis": "PhD dissertation",
            "mastersthesis": "Master's thesis",
        }.get(etype, clean_latex(e.get("type", "Thesis")))
        school = clean_latex(e.get("school") or e.get("institution") or "")
        parts.append(f"{kind}{', ' + school if school else ''}.")
    elif etype in ("techreport", "report"):
        inst = clean_latex(e.get("institution") or "")
        if inst:
            parts.append(f"Technical report, {inst}.")
    elif etype in ("misc", "software", "online", "dataset") and not container:
        howpub = clean_latex(e.get("howpublished", ""))
        parts.append(_dot(howpub) if howpub else "Software repository.")

    vol = clean_latex(e.get("volume", ""))
    num = clean_latex(e.get("number", ""))
    pages = clean_latex(e.get("pages", "")).replace("--", "–")
    locator = ""
    if vol:
        locator = vol + (f"({num})" if num else "")
    if pages:
        locator = f"{locator}:{pages}" if locator else f"pp. {pages}"
    if locator:
        parts.append(locator + ",")

    year = clean_latex(e.get("year", "") or e.get("date", "")[:4])
    if year:
        parts.append(_dot(year))

    # URLs are permitted in References Cited (and only there). DOI preferred.
    if e.get("doi"):
        parts.append(f"https://doi.org/{clean_latex(e['doi'])}")
    elif e.get("url"):
        parts.append(clean_latex(e["url"]))

    return " ".join(p for p in parts if p.strip(". "))


def load_entries(bib_path: Path):
    import bibtexparser

    if hasattr(bibtexparser, "load"):  # v1
        with open(bib_path, encoding="utf-8") as f:
            return bibtexparser.load(f).entries
    lib = bibtexparser.parse_file(str(bib_path))  # v2
    out = []
    for entry in lib.entries:
        d = {f.key: f.value for f in entry.fields}
        d["ID"] = entry.key
        d["ENTRYTYPE"] = entry.entry_type
        out.append(d)
    return out


def render_array(entries) -> str:
    lines = ["#let REFERENCES = ("]
    for e in entries:
        lines.append("  (")
        lines.append(f'    key: "{e["ID"]}",')
        lines.append(f"    entry: [{format_entry(e)}],")
        lines.append("  ),")
    lines.append(")")
    return "\n".join(lines)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--bib", default="2026-nsf-pose.bib")
    ap.add_argument("--refs", default="../template/refs.typ")
    ap.add_argument(
        "--dry-run",
        action="store_true",
        help="Print to stdout instead of rewriting refs.typ.",
    )
    ap.add_argument(
        "--sort",
        choices=["author", "key", "none"],
        default="author",
        help="Order of the array, which is also the citation numbering order.",
    )
    args = ap.parse_args()

    here = Path(__file__).resolve().parent
    bib_path = (here / args.bib).resolve() if not Path(args.bib).is_absolute() else Path(args.bib)
    refs_path = (here / args.refs).resolve() if not Path(args.refs).is_absolute() else Path(args.refs)

    if not bib_path.exists():
        sys.exit(f"BibTeX file not found: {bib_path}")

    entries = load_entries(bib_path)
    if args.sort == "author":
        entries.sort(key=lambda e: (e.get("author", "").lower(), e.get("year", "")))
    elif args.sort == "key":
        entries.sort(key=lambda e: e["ID"].lower())

    array = render_array(entries)

    if args.dry_run:
        print(array)
        print(f"\n// {len(entries)} entries. Drop --dry-run to update {refs_path.name}.",
              file=sys.stderr)
        return

    if not refs_path.exists():
        sys.exit(f"refs.typ not found: {refs_path}")

    original = refs_path.read_text(encoding="utf-8")
    pattern = re.compile(r"#let REFERENCES = \(.*?\n\)", re.DOTALL)
    if not pattern.search(original):
        sys.exit("Could not find '#let REFERENCES = (...)' block in refs.typ.")

    shutil.copy2(refs_path, refs_path.with_suffix(".typ.bak"))
    refs_path.write_text(pattern.sub(lambda _: array, original, count=1), encoding="utf-8")
    print(f"Wrote {len(entries)} entries to {refs_path} (backup: {refs_path.name}.bak)")


if __name__ == "__main__":
    main()