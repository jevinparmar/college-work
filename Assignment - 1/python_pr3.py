n = int(input("Enter limit: "))

s = 0

for i in range(1, n + 1):
    s += i * i

print("Sum of series:", s)
