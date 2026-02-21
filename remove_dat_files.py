# This script is used to remove the data files from Qucs-s simulations

from pathlib import Path

root = Path(".")
SKIP_DIRS = {".git", "docs", "docs-venv"}

for ext in ("*.ngspice", "*.dat"):
    for file in root.rglob(ext):
        # Skip any file that lives under one of the excluded directories
        if any(part in SKIP_DIRS for part in file.parts):
            continue
        print(file)
