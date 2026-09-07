secret_pin = 2468
attempts_left = 3
is_authenticated = False

# Loops while the pin is not correct and attempts left are more than 0
while not is_authenticated and attempts_left > 0:
    pin = int(input("What is the secret pin xxxx? "))
    if pin == secret_pin:
        is_authenticated = True
        print("Access granted")

    else:
        attempts_left -= 1
        if attempts_left == 0:
            print("Access denied")