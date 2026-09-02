input_factor = int(input("What factor du you want multiplication table for? "))

for loop_factor in range(1,11):
    product = input_factor * loop_factor
    print(f"{input_factor} x {loop_factor} = {product}")