# Program to generate arithmetic exception and log it in file

import logging

logging.basicConfig(filename="error_log.txt", level=logging.ERROR)

try:
    a = int(input("Enter first number: "))
    b = int(input("Enter second number: "))
    print("Answer =", a / b)

except Exception as e:
    
    logging.error("Arithmetic error occurred: %s", e)
    print("Exception occurred and logged in error_log.txt")