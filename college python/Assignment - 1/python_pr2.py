# # Program to find sum of first n natural numbers

n = int(input("Enter a number: "))

total = 0

for i in range(1, n + 1):
    total += i

print("Sum:", total)
