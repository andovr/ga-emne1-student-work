unit_price = float(input(f"Kva er vareprisen? "))
discount_percentage = int(input(f"Kva er rabattprosenten? "))
discount = unit_price / 100 * discount_percentage
discounted_price = unit_price / 100 * (100 - discount_percentage)
print(f"Rabattbeløpet er {discount} kr og rabattprisen er {discounted_price} kr.")
