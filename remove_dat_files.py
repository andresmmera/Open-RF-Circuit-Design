# This script is used to remove the data files from Qucs-s simulations

from pathlib import Path

root = Path(".")

for ext in ("*.ngspice", "*.dat"):
    for file in root.rglob(ext):
        print(file)
