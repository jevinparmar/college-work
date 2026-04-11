# Program to create a table using column details stored in list

import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="college_Python"
)

cursor = con.cursor()

table_name = input("Enter table name: ")
column_count = int(input("Enter number of columns: "))

column_list = []

for i in range(column_count):
    col_name = input("Enter column name: ")
    data_type = input("Enter data type: ")
    size = input("Enter size: ")
    column_list.append((col_name, data_type, size))

fields = []
for item in column_list:
    fields.append(f"{item[0]} {item[1]}({item[2]})")

query = f"create table {table_name} (" + ", ".join(fields) + ")"

cursor.execute(query)
print("Table created successfully")

con.close()