# Program to create a simple class with 2 methods

class Demo:
    def show_message(self):
        print("Hello from first method")

    def show_number(self):
        print("This is second method")

obj = Demo()
obj.show_message()
obj.show_number()