# Program to convert temperature into Fahrenheit and Celsius

class Temperature:
    def convertFarenheit(self, celsius):
        return (celsius * 9/5) + 32

    def convertCelsius(self, fahrenheit):
        return (fahrenheit - 32) * 5/9

obj = Temperature()

c = float(input("Enter temperature in Celsius: "))
print("Fahrenheit =", obj.convertFarenheit(c))

f = float(input("Enter temperature in Fahrenheit: "))
print("Celsius =", obj.convertCelsius(f))