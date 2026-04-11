# Program to display histogram of age groups

import matplotlib.pyplot as plt

ages = []

for i in range(50):
    age = int(input("Enter age: "))
    ages.append(age)

groups = [0, 10, 20, 30, 40, 50, 60, 120]

plt.hist(ages, bins=groups, edgecolor="black")
plt.title("Age Group Histogram")
plt.xlabel("Age Group")
plt.ylabel("Number of Students")
plt.show()