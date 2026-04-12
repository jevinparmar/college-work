# Program to search a student and display details

import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="college_Python"
)

cursor = con.cursor()

rollno = int(input("Enter roll number to search: "))
query = "select * from student where rollno = %s"
cursor.execute(query, (rollno,))

row = cursor.fetchone()

if row:
    print("Student found:", row)
else:
    print("Student not found")

con.close()