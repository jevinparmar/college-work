# Program to display basic exception handling

try:
    Num_1 = int(input("Enter first number: "))
    Num_2 = int(input("Enter second number: "))
    answer = Num_1 / Num_2
    print("Answer =", answer)

except ZeroDivisionError:

    print("Cannot divide by zero")

except ValueError:
    
    print("Please enter valid numbers")