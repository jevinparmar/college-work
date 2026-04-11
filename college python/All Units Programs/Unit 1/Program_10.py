# Program to use lambda functions for arithmetic operations

add = lambda a, b: a + b
sub = lambda a, b: a - b
mul = lambda a, b: a * b
div = lambda a, b: a / b

Num_1 = float(input("Enter first number: "))
Num_2 = float(input("Enter second number: "))
operator = input("Enter operator (+, -, *, /): ")

if operator == "+":
    print("Answer =", add(Num_1, Num_2))
elif operator == "-":
    print("Answer =", sub(Num_1, Num_2))
elif operator == "*":
    print("Answer =", mul(Num_1, Num_2))
elif operator == "/":
    if Num_2 != 0:
        print("Answer =", div(Num_1, Num_2))
    else:
        print("Division by zero is not allowed")
else:
    print("Invalid operator")