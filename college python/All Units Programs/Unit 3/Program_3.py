# Program to display class method and instance method

class College:
    college_name = "ABC College"

    def __init__(self, student_name):
        self.student_name = student_name

    def show_student(self):
        print("Student Name:", self.student_name)

    @classmethod
    def show_college(cls):
        print("College Name:", cls.college_name)

obj = College("Rahul")
obj.show_student()
College.show_college()