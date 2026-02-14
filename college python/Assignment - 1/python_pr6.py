a = float(input("Enter first number: "))
b = float(input("Enter second number: "))
c = float(input("Enter third number: "))

if a > b:
    if a > c:
        print("Largest:", a)
    else:
        print("Largest:", c)
else:
    if b > c:
        print("Largest:", b)
    else:
        print("Largest:", c)
