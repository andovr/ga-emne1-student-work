number = int(input("Write a whole number: "))
squared = number ** 2
cubed = number ** 3
remainder = number % 2
print(f"The square of the number is {squared}.")
print(f"The cube of the number is {cubed}.")
print(f"The remainder of the number when divided by 2 is {remainder}.")

if remainder == 0:
    print("The number is even.")
else:
    print("The number is odd.")