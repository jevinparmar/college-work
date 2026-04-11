# Program to calculate total, percentage and grade

English = float(input("Enter marks of English: "))
Maths = float(input("Enter marks of Maths: "))
Science = float(input("Enter marks of Science: "))
Social_Science = float(input("Enter marks of Social Science: "))

total = English + Maths + Science + Social_Science
percentage = total / 4

if percentage >= 75:
    grade = "A"
elif percentage >= 60:
    grade = "B"
elif percentage >= 50:
    grade = "C"
elif percentage >= 35:
    grade = "D"
else:
    grade = "Fail"

print("Total =", total)
print("Percentage =", percentage)
print("Grade =", grade)