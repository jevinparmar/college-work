# Program to read student marks file and display result

file = open("students.txt", "r")
rows = file.readlines()
file.close()

for row in rows:
    parts = row.strip().split(",")

    rollno = parts[0]
    name = parts[1]
    m1 = int(parts[2])
    m2 = int(parts[3])
    m3 = int(parts[4])
    m4 = int(parts[5])

    total = m1 + m2 + m3 + m4
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

    print("Roll No:", rollno)
    print("Name:", name)
    print("Total:", total)
    print("Percentage:", percentage)
    print("Grade:", grade)
    print()