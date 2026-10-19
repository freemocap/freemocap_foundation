"""Compile every attachment and review document. Uses Typst CLI or the Python binding."""
from pathlib import Path
import argparse, json, shutil, subprocess, sys

root = Path(__file__).resolve().parent
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--main-only', action='store_true', help='Build the full review PDF only')
args = parser.parse_args()
project = json.loads((root / 'project.json').read_text())
entries = [('main.typ', 'compiled/main.pdf')]
if not args.main_only:
    entries += [(name, 'compiled/' + Path(name).stem + '.pdf') for name in project['masters'] if name != 'main.typ']
    entries += [(s['path'], 'compiled/sections/' + s['name'] + '.pdf') for s in project['sections']]
cli = shutil.which('typst')
if not cli:
    try:
        import typst
    except ImportError:
        sys.exit('Install the Typst CLI, or run: python -m pip install typst==0.15.0')
for source, output in entries:
    target = root / output
    target.parent.mkdir(parents=True, exist_ok=True)
    if cli:
        subprocess.run([cli, 'compile', '--root', str(root), str(root / source), str(target)], check=True)
    else:
        typst.compile(str(root / source), output=str(target), root=str(root))
    print(output)
