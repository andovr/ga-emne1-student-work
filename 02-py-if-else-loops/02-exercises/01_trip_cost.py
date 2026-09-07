driving_distance = float(input("How far is the drive in kilometers? "))
fuel_usage_per_100km = float(input("How much fuel is used per 100km? "))
fuel_price_per_liter = float(input("What is the fuel price per liter? "))

fuel_usage = driving_distance / 100 * fuel_usage_per_100km
fuel_cost = fuel_usage * fuel_price_per_liter

print(f"The fuel usage is {fuel_usage} liters and the cost is {fuel_cost} kr.")