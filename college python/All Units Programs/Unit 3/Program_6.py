# Program to use inheritance with Student and Course class

class Student:
    def __init__(self, rollno, name, gender, age):
        self.rollno = rollno
        self.name = name
        self.gender = gender
        self.age = age

class Course(Student):
    def __init__(self, rollno, name, gender, age, coursename, duration, fee):
        super().__init__(rollno, name, gender, age)
        self.coursename = coursename
        self.duration = duration
        self.fee = fee

    def show_details(self):
        print("Roll No:", self.rollno)
        print("Name:", self.name)
        print("Gender:", self.gender)
        print("Age:", self.age)
        print("Course Name:", self.coursename)
        print("Duration:", self.duration)
        print("Fee:", self.fee)

obj = Course(101, "Neha", "Female", 21, "Python", "6 Months", 15000)
obj.show_details()