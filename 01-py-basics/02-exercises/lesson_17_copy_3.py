seconds = int(input("Sekunder: "))
hours = seconds // (60*60)
seconds_rest = seconds % (60*60)
minutes = seconds_rest // (60)
seconds_rest = seconds_rest % 60
print(seconds + "sekunder")

# Å legge saman tekst og ein variabel som er eit tal gir ein TypeError