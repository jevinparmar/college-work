balance = 0

def deposit(amount):
    global balance
    balance += amount

def withdraw(amount):
    global balance
    if amount <= balance:
        balance -= amount
    else:
        print("Insufficient balance")

def check():
    print("Current balance:", balance)

while True:
    print("1.Deposit 2.Withdraw 3.Check 4.Exit")
    ch = input("Select option: ")

    if ch == "1":
        deposit(float(input("Amount: ")))
    elif ch == "2":
        withdraw(float(input("Amount: ")))
    elif ch == "3":
        check()
    elif ch == "4":
        break
    else:
        print("Invalid option")
