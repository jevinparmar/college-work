# Program to display local, global and nonlocal variables

x = "Global Variable"

def outer():
    x = "Nonlocal Variable"

    def inner():
        x = "Local Variable"
        print("Inside inner:", x)

    inner()
    print("Inside outer:", x)

outer()
print("Outside function:", x)