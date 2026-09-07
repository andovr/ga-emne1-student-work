upper_limit = int(input("What is the limit for the biggest square number you want to print? "))
number = 1
square_number = 1

while square_number <= upper_limit:
    print(square_number)
    number += 1
    square_number = number ** 2
