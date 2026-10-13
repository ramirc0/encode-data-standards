#!/usr/bin/env python3
"""Check relative Markdown links and heading anchors across the reference.

Usage: python3 scripts/check-links.py

Scans every .md file outside sources/pages/ and .claude/. Reports links whose
target file is missing and anchors that match no heading in the target, using
GitHub's heading slug rules. Exits 1 when it finds a problem.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
LINK = re.compile(r"\]\(([^)\s]+)\)")


def slug(heading):
    """Return the GitHub anchor slug for a Markdown heading's text."""
    text = re.sub(r"<[^>]+>", "", heading)
    text = re.sub(r"\[([^\]]*)\]\([^)]*\)", r"\1", text)
    text = re.sub(r"[^\w\- ]", "", text.strip().lower())
    return text.replace(" ", "-")


def anchors(path):
    """Return every heading anchor in a Markdown file, with GitHub's -1, -2 suffixes for repeats."""
    seen, found = {}, set()
    for line in path.read_text().splitlines():
        match = re.match(r"^#{1,6}\s+(.*)$", line)
        if match:
            base = slug(match.group(1))
            count = seen.get(base, 0)
            found.add(base if count == 0 else f"{base}-{count}")
            seen[base] = count + 1
    return found


def problems(doc):
    """Yield a message for each broken relative link or anchor in one Markdown file."""
    for target in LINK.findall(doc.read_text()):
        if re.match(r"^(https?|mailto):", target):
            continue
        path, _, fragment = target.partition("#")
        dest = (doc.parent / path).resolve() if path else doc
        if not dest.exists():
            yield f"{doc.relative_to(ROOT)}: missing {target}"
        elif fragment and dest.suffix == ".md" and fragment not in anchors(dest):
            yield f"{doc.relative_to(ROOT)}: no anchor {target}"


def main():
    """Check all docs, print problems, and return the process exit code."""
    docs = [
        p for p in ROOT.rglob("*.md")
        if ".claude" not in p.parts and ROOT / "sources" / "pages" not in p.parents
    ]
    found = [message for doc in sorted(docs) for message in problems(doc)]
    print("\n".join(found + [f"{len(docs)} files checked, {len(found)} problems"]))
    return 1 if found else 0


if __name__ == "__main__":
    sys.exit(main())
