# Program to create interface and use it in another class

from abc import ABC, abstractmethod

class Printer(ABC):
    @abstractmethod
    def print_data(self):
        pass

class Report(Printer):
    def print_data(self):
        print("Printing report data")

obj = Report()
obj.print_data()