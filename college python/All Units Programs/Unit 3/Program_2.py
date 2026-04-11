# Program to create student class with add and display methods

class Student:
    def AddStudent(self):
        self.rollno = input("Enter roll number: ")
        self.name = input("Enter name: ")
        self.age = input("Enter age: ")
        self.gender = input("Enter gender: ")

    def DisplayStudent(self):
        print("Roll No:", self.rollno)
        print("Name:", self.name)
        print("Age:", self.age)
        print("Gender:", self.gender)

s1 = Student()
s1.AddStudent()
s1.DisplayStudent()