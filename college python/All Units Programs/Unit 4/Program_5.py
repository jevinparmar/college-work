# Program to display company employee size using bar graph

import matplotlib.pyplot as plt

companies = []
employees = []

for i in range(5):
    company = input("Enter company name: ")
    size = int(input("Enter employee size: "))
    companies.append(company)
    employees.append(size)

plt.bar(companies, employees)
plt.title("Company Employee Size")
plt.xlabel("Company Name")
plt.ylabel("Employees")
plt.show()