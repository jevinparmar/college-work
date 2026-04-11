# Program to use dropna and fillna on excel file

import pandas as pd

data = pd.read_excel("students.xlsx")

print("Original Data:")
print(data)

print("\nAfter dropna():")
print(data.dropna())

print("\nAfter fillna():")
print(data.fillna("Not Available"))