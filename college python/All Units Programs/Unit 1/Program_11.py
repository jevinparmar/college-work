# Program to find total of any number of arguments

def total_numbers(*nums):
    total = 0
    for num in nums:
        total += num
    print("Total =", total)

total_numbers(10, 20, 30, 40)