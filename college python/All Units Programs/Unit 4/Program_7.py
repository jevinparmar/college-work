# Program to display male and female student count using bar graph

import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_excel("students.xlsx")

gender_count = data["Gender"].value_counts()

plt.bar(gender_count.index, gender_count.values)
plt.title("Male and Female Students")
plt.xlabel("Gender")
plt.ylabel("Count")
plt.show()