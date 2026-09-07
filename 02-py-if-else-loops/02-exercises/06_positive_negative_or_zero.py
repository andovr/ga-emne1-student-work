from math import remainder

number = int(input("Write a whole number: "))
remainder = number % 2

if number == 0:
    print("The number is zero.")
else:
    if number > 0:
        print("The number is positive.")
    else:
        print("The number is negative.")
    # Checks if the number is even or odd
    if remainder == 0:
        print("The number is even.")
    else:
        print("The number is odd.")