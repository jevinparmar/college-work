# Program to print histogram using a list

def histogram(data):
    for num in data:
        print("*" * num)

numbers = [4, 9, 7]
histogram(numbers)