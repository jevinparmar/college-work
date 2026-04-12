# Program to load excel file and display columns and data types

import pandas as pd

data = pd.read_excel("students.xlsx")

print("Columns:")
print(data.columns)

print("\nData Types:")
print(data.dtypes)