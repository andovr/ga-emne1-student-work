#%% Print
print("Hello World!")

#%% Variabler
my_name = "Andreas"
my_age = 32

print(f"Mitt navn er", my_name, "og er", my_age, "år")
print(f"Mitt navn er {my_name} og er {my_age} år")

#%% Casting og input
number_a_str = input("Skriv inn et tall: ")
number_b_str = input("Skriv inn et tall: ")
number_a = int(number_a_str)
number_b = int(number_a_str)

sum_numbers = number_a + number_b
print(sum_numbers)