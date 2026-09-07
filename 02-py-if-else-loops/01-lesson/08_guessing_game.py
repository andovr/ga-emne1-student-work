secret_number = 21
attempts_left = 5
guessed_correctrly = False

while attempts_left > 0 and not guessed_correctrly:
    attempts_left -= 1
    guess = int(input("Guess the number (1-30): "))
    if guess == secret_number:
        print("Correct")
        guessed_correctrly = True
    elif guess > secret_number:
        print("Too high")
    else:
        print("Too low")

if not guessed_correctrly:
        print(f"The number was {secret_number}")
