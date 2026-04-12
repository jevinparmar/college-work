# Program to delete student details from table

import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="college_Python"
)

cursor = con.cursor()

rollno = int(input("Enter roll number to delete: "))

query = "delete from student where rollno = %s"
cursor.execute(query, (rollno,))
con.commit()

print("Student deleted successfully")

con.close()