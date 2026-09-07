product_name = input("Kva heiter produktet? ")
unit_price = float(input(f"Kva er prisen per {product_name}? "))
quantity = int(input(f"Kor mange {product_name} skal du ha? "))
total_price = unit_price * quantity
print(f"Det vil koste {total_price} kr for {quantity} {product_name}.")
