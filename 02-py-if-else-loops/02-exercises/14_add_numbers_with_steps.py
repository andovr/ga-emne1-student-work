sum_multiples_of_three = 0
sum_multiples_of_five = 0

for i in range(3, 31, 3):
    sum_multiples_of_three += i
print(f"The sum of multiples of 3 from 3 to 30 is: {sum_multiples_of_three}")

for i in range(5, 51, 5):
    sum_multiples_of_five += i
print(f"The sum of multiples of 5 from 5 to 50 is: {sum_multiples_of_five}")
