# Program to load all records and display only students from a particular city

import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="college_Python"
)

cursor = con.cursor()

city_name = input("Enter city name: ")

query = "select * from student where city = %s"
cursor.execute(query, (city_name,))

rows = cursor.fetchall()

for row in rows:
    print(row)

con.close()