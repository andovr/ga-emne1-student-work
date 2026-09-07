counter = 0

for number in range(1, 101):
    divisible_by_three = number % 3
    if divisible_by_three == 0 and 20 < number < 80:
        counter += 1
        print(number)
print(f"The amount of numbers fulfilling the requirements are: {counter}")
