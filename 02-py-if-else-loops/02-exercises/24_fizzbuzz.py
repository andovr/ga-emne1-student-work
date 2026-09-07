for number in range(1,31):
    is_divisable_by_3 = number % 3
    is_divisable_by_5 = number % 5
    print(number)
    if is_divisable_by_3 == 0 and is_divisable_by_5 == 0:
        print("FizzBuzz")
    elif is_divisable_by_3 == 0:
        print("Fizz")
    elif is_divisable_by_5 == 0:
        print("Buzz")