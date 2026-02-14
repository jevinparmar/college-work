def outer(value):
    def inner(v):
        return v * v
    return inner(value)

n = int(input("Enter a number: "))
print("Result:", outer(n))
