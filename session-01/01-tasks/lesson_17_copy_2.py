seconds = int(input("Sekunder: "))
hours = sec // (60*60)
seconds_rest = seconds % (60*60)
minutes = seconds_rest // (60)
seconds_rest = seconds_rest % 60
print(f"{hours} timer, {minutes} minutter og {seconds_rest} sekunder.")

# Å bruke eit variabelnamn som ikkje finnast gir ein NameError
