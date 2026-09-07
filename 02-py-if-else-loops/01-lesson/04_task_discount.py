purchase_value = float(input("What is the purchase value? "))

if purchase_value >= 1000:
    final_value = purchase_value * 0.8
elif purchase_value >= 500:
    final_value = purchase_value * 0.9
else:
    final_value = purchase_value

print(f"Final amount: {final_value:.2f}")

