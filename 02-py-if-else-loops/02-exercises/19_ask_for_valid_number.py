number_is_valid = False

while not number_is_valid:
    number = int(input("Write a positive whole number: "))
    if number > 0:
        number_is_valid = True
    else:
        print(f"{number} is not a valid number. Try again.")
print(f"{number} is a valid number.")