# This script is used to remove the data files from Qucs-s simulations

from pathlib import Path
root = Path(".")
SKIP_DIRS = {".git", "docs", "docs-venv"}
for ext in ("*.ngspice", "*.dat"):
    for file in root.rglob(ext):
        if any(part in SKIP_DIRS for part in file.parts):
            continue
        print(f"Removing: {file}")
        file.unlink()
