# Program to create abstract class with one method

from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

class Square(Shape):
    def __init__(self, side):
        self.side = side

    def area(self):
        print("Area =", self.side * self.side)

obj = Square(4)
obj.area()