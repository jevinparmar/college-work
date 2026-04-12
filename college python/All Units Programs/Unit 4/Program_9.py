# Program to display valid emails from excel file using regular expression

import pandas as pd
import re

data = pd.read_excel("students.xlsx")

pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'

for index, row in data.iterrows():
    email = str(row["E-Mail"])
    if re.match(pattern, email):
        print(row)