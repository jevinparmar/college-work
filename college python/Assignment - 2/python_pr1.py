def add(x, y):
    return x + y

def sub(x, y):
    return x - y

def mul(x, y):
    return x * y

def div(x, y):
    if y == 0:
        return "Cannot divide by zero"
    return x / y

a = float(input("Enter first number: "))
b = float(input("Enter second number: "))

print("1.Add 2.Subtract 3.Multiply 4.Divide")
choice = input("Choose operation: ")

if choice == "1":
    print(add(a, b))
elif choice == "2":
    print(sub(a, b))
elif choice == "3":
    print(mul(a, b))
elif choice == "4":
    print(div(a, b))
else:
    print("Invalid choice")
