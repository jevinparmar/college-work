# Program to return arithmetic answer using function

def calculate(a, b, op):
    if op == "+":
        return a + b
    elif op == "-":
        return a - b
    elif op == "*":
        return a * b
    elif op == "/":
        if b != 0:
            return a / b
        else:
            return "Division by zero is not allowed"
    else:
        return "Invalid operator"

Num_1 = float(input("Enter first number: "))
Num_2 = float(input("Enter second number: "))
operator = input("Enter operator (+, -, *, /): ")

result = calculate(Num_1, Num_2, operator)
print("Answer =", result)