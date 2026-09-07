# Lese inn to tall
# - sørge for at dette er to tall og ikke noe annet
# - gi feilmelding

# break -> hopp ut av løkka no
# continue -> hopp over resten av koden i løkka og start ny runde
while True:
    while True:
        number_a_str = input("Skriv inn et tall: ")
        if not number_a_str.isdigit():
            print("Du må skrive inn et gyldig tall, prøv igjen")
            continue
        number_b_str = input("Skriv inn et tall: ")
        if not number_b_str.isdigit():
            print("Du må skrive inn et gyldig tall, prøv igjen")
            continue
        break

    number_a = int(number_a_str)
    number_b = int(number_b_str)

    product = number_a * number_b

    print(f"{number_a} x {number_b} = {product}")

    terminate = input("For å avslutte, tast '0' ")
    if terminate == "0":
        print("Takk for at du spilte :-)")
        break
# når vi har lest inn 2 tall - cast til int (heiltal) og gjør multiplikasjone

