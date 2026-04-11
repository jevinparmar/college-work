# Program to display students having valid email addresses

import mysql.connector
import re

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="college_Python"
)

cursor = con.cursor()
cursor.execute("select * from student")

rows = cursor.fetchall()

pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'

for row in rows:
    email = str(row[4])
    if re.match(pattern, email):
        print(row)

con.close()