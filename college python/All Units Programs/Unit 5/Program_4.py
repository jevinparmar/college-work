# Program to insert student details into table

import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="college_Python"
)

cursor = con.cursor()

rollno = int(input("Enter roll number: "))
name = input("Enter name: ")
gender = input("Enter gender: ")
age = int(input("Enter age: "))
email = input("Enter email: ")
mobile = input("Enter mobile: ")
city = input("Enter city: ")

query = "insert into student values (%s, %s, %s, %s, %s, %s, %s)"
values = (rollno, name, gender, age, email, mobile, city)

cursor.execute(query, values)
con.commit()

print("Student inserted successfully")

con.close()