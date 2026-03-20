# Program to demonstrate function inside another function (nested function)
# Outer function calls inner function to perform task

def outer(value):
    def inner(v):
        return v * v
    return inner(value)

n = int(input("Enter a number: "))
print("Result:", outer(n))
