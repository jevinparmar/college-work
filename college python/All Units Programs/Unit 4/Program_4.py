# Program to display profit of 5 years using line graph

import matplotlib.pyplot as plt

years = [2020, 2021, 2022, 2023, 2024]
profit = []

for i in range(5):
    value = int(input("Enter profit: "))
    profit.append(value)

plt.plot(years, profit, marker="o")
plt.title("Profit of 5 Years")
plt.xlabel("Year")
plt.ylabel("Profit")
plt.show()