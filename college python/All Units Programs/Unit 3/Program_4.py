# Program to make use of inner class

class Student:
    def __init__(self, name):
        self.name = name
        self.address = self.Address("Rajkot", "Gujarat")

    def show(self):
        print("Name:", self.name)
        self.address.show_address()

    class Address:
        def __init__(self, city, state):
            self.city = city
            self.state = state

        def show_address(self):
            print("City:", self.city)
            print("State:", self.state)

obj = Student("Amit")
obj.show()