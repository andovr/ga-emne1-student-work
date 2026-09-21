from pathlib import Path

data_folder = Path(__file__).parent.parent / "data"
path = data_folder / "report.txt"


try:
    with path.open("w",encoding="utf-8") as file:
        file.write("Practice report\n")

except PermissionError:
    print(f"Error, does not have the permission to write here: {path}")
