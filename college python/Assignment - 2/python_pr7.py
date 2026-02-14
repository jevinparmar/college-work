marks = []

def enter_marks():
    global marks
    marks = []
    n = int(input("How many subjects: "))
    for i in range(n):
        marks.append(float(input("Enter mark: ")))

def percentage():
    if len(marks) == 0:
        return 0
    return sum(marks) / len(marks)

def grade(p):
    if p >= 90:
        return "A"
    if p >= 75:
        return "B"
    if p >= 50:
        return "C"
    return "Fail"

while True:
    print("1.Enter Marks 2.Percentage 3.Grade 4.Exit")
    opt = input("Choose: ")

    if opt == "1":
        enter_marks()
    elif opt == "2":
        print("Percentage:", percentage())
    elif opt == "3":
        print("Grade:", grade(percentage()))
    elif opt == "4":
        break
    else:
        print("Invalid choice")
