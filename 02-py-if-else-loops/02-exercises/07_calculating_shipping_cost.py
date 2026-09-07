weight = float(input("What is the weight of your package in kg? "))

if weight <= 2:
    print("Shipping will cost 79 kr.")
elif weight <= 5:
    print("Shipping will cost 129 kr.")
elif weight <= 10:
    print("Shipping will cost 199 kr.")
else:
    print("You can not ship your package with this service, sorry!")