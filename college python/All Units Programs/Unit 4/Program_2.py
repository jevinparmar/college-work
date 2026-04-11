# Program to display filtered student information from excel file

import pandas as pd

data = pd.read_excel("students.xlsx")

print("Students from Rajkot City:")
print(data[data["City"] == "Rajkot"])

print("\nMale Students:")
print(data[data["Gender"] == "Male"])

print("\nMale Students from Rajkot City:")
print(data[(data["Gender"] == "Male") & (data["City"] == "Rajkot")])

print("\nStudents whose age >= 20:")
print(data[data["Age"] >= 20])