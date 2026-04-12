# Program to display records with mobile number having country code using regular expression

import pandas as pd
import re

data = pd.read_excel("students.xlsx")

pattern = r'^\d{2}-\d{10}$'

for index, row in data.iterrows():
    mobile = str(row["Mobile"])
    if re.match(pattern, mobile):
        print(row)