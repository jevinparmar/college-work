# Program to calculate simple interest

Principal_Amount = float(input("Enter principal amount: "))
Rate_of_Interest = float(input("Enter rate of interest: "))
Number_of_Years = float(input("Enter number of years: "))

interest = (Principal_Amount * Rate_of_Interest * Number_of_Years) / 100

print("Simple Interest =", interest)