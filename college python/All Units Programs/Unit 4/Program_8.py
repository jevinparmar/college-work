# Program to display course wise students using pie chart

import matplotlib.pyplot as plt

courses = []
students = []

for i in range(4):
    course_name = input("Enter course name: ")
    total_students = int(input("Enter number of students: "))
    courses.append(course_name)
    students.append(total_students)

max_value = max(students)
explode_values = []

for value in students:
    if value == max_value:
        explode_values.append(0.1)
    else:
        explode_values.append(0)

plt.pie(students, labels=courses, autopct="%1.1f%%", explode=explode_values)
plt.title("Students in Each Course")
plt.show()