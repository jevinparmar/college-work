# Program to perform student operations using menu

students = {}

while True:
    print("\n1. Add Student")
    print("2. Search Student")
    print("3. List All Students")
    print("4. Update Student")
    print("5. Delete Student")
    print("6. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        rollno = input("Enter roll number: ")
        name = input("Enter name: ")
        students[rollno] = name
        print("Student added")
    elif choice == "2":
        rollno = input("Enter roll number to search: ")
        if rollno in students:
            print("Student Name =", students[rollno])
        else:
            print("Student not found")
    elif choice == "3":
        if students:
            for rollno, name in students.items():
                print(rollno, name)
        else:
            print("No student records available")
    elif choice == "4":
        rollno = input("Enter roll number to update: ")
        if rollno in students:
            name = input("Enter new name: ")
            students[rollno] = name
            print("Student updated")
        else:
            print("Student not found")
    elif choice == "5":
        rollno = input("Enter roll number to delete: ")
        if rollno in students:
            del students[rollno]
            print("Student deleted")
        else:
            print("Student not found")
    elif choice == "6":
        print("Program ended")
        break
    else:
        print("Invalid choice")