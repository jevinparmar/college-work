# Program to display all records of student table using fetchall

import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="college_Python"
)

cursor = con.cursor()
cursor.execute("select * from student")

rows = cursor.fetchall()

for row in rows:
    print(row)

con.close()