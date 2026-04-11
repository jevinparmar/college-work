# Program to perform insert, update, search, delete and list using menu

import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="college_Python"
)

cursor = con.cursor()

while True:
    print("\n1. Insert Student")
    print("2. Update Student")
    print("3. Search Student")
    print("4. Delete Student")
    print("5. List Students")
    print("6. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
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

    elif choice == "2":
        rollno = int(input("Enter roll number to update: "))
        city = input("Enter new city: ")

        query = "update student set city = %s where rollno = %s"
        cursor.execute(query, (city, rollno))
        con.commit()
        print("Student updated successfully")

    elif choice == "3":
        rollno = int(input("Enter roll number to search: "))
        query = "select * from student where rollno = %s"
        cursor.execute(query, (rollno,))
        row = cursor.fetchone()

        if row:
            print(row)
        else:
            print("Student not found")

    elif choice == "4":
        rollno = int(input("Enter roll number to delete: "))
        query = "delete from student where rollno = %s"
        cursor.execute(query, (rollno,))
        con.commit()
        print("Student deleted successfully")

    elif choice == "5":
        cursor.execute("select * from student")
        rows = cursor.fetchall()

        for row in rows:
            print(row)

    elif choice == "6":
        print("Program ended")
        break

    else:
        print("Invalid choice")

con.close()