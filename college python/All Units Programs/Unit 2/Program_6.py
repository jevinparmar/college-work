# Program to read numbers from file and display total, maximum and minimum

file = open("numbers.txt", "r")
data = file.read()
file.close()

number_list = data.split()
numbers = []

for item in number_list:
    numbers.append(int(item))

print("Total =", sum(numbers))
print("Maximum =", max(numbers))
print("Minimum =", min(numbers))