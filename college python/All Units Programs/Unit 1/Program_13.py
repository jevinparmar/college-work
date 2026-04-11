# Program to use map, filter and reduce with lambda

from functools import reduce

numbers = [1, 2, 3, 4, 5, 6]

square_list = list(map(lambda x: x * x, numbers))
even_list = list(filter(lambda x: x % 2 == 0, numbers))
sum_all = reduce(lambda a, b: a + b, numbers)

print("Original list =", numbers)
print("Square list =", square_list)
print("Even list =", even_list)
print("Total sum =", sum_all)