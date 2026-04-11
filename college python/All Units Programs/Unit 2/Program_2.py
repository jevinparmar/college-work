# Program to execute user defined exception

class AgeError(Exception):
    pass

age = int(input("Enter age: "))

try:
    if age < 18:
        raise AgeError("Age must be 18 or more")
    print("You are eligible")
except AgeError as e:
    print("Error:", e)