# Program to perform arithmetic operation using operator

First = float(input("Enter first number: "))
Second = float(input("Enter second number: "))
operator = input("Enter operator (+, -, *, /): ")

if operator == "+":
    print("Answer =", First + Second)
elif operator == "-":
    print("Answer =", First - Second                )
elif operator == "*":
    print("Answer =", First * Second)
elif operator == "/":
    if Second != 0:
        print("Answer =", First / Second)
    else:
        print("Division by zero is not allowed")
else:
    print("Invalid operator")