# Program to update student details in table

import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="college_Python"
)

cursor = con.cursor()

rollno = int(input("Enter roll number to update: "))
new_city = input("Enter new city: ")

query = "update student set city = %s where rollno = %s"
cursor.execute(query, (new_city, rollno))
con.commit()

print("Student updated successfully")

con.close()