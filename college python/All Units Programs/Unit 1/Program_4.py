# Program to display Armstrong numbers from 10 entered numbers

numbers = []

for i in range(10):
    num = int(input("Enter number: "))
    numbers.append(num)

print("Armstrong numbers are:")

for num in numbers:
    original = num
    total = 0
    digits = len(str(num))

    while num > 0:
        digit = num % 10
        total = total + (digit ** digits)
        num = num // 10

    if total == original:
        print(original)