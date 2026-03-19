# Program to print prime numbers between 1 to 50

for num in range(2, 51):
    prime = True
    for i in range(2, num):
        if num % i == 0:
            prime = False
            break
    if prime:
        print(num, end=" ")
