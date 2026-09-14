guests = ["Kermit", "Miss Piggy", "Gonzo"]

print(guests)

print("\n---\n")

mixed_bag = ["Andreas", 32, True]
print(mixed_bag)

print(guests[0])
print(guests[1])
print(guests[-1])

print("\n---\n")

guests.append("Animal")
guests.remove("Gonzo")
print(guests)
print(len(guests))

print("\n---\n")

for guest in guests:
    print(guests)

print("\n---\n")

scores = [72, 22, 91, 65]
print(len(scores))
print(sum(scores))

average = sum(scores) / len(scores)
print(f"Average: {average}")

print(min(scores))
print(max(scores))

guests.insert(1, "Camilla")
print(guests)