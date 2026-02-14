def biggest(a, b, c):
    if a >= b and a >= c:
        return a
    if b >= a and b >= c:
        return b
    return c

x = float(input("Enter first number: "))
y = float(input("Enter second number: "))
z = float(input("Enter third number: "))

print("Largest number:", biggest(x, y, z))
