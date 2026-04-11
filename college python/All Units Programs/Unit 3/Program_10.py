# Program to overload addition and subtraction operators

class Number:
    def __init__(self, value):
        self.value = value

    def __add__(self, other):
        return self.value + other.value

    def __sub__(self, other):
        return self.value - other.value

a = Number(20)
b = Number(10)

print("Addition =", a + b)
print("Subtraction =", a - b)