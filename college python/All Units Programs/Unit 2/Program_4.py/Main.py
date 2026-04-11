# Program to use module functions in different ways

import mymodule
from mymodule import add, sub
from mymodule import mul as multiply

print(mymodule.add(10, 5))
print(add(10, 5))
print(sub(10, 5))
print(multiply(10, 5))
print(mymodule.div(10, 5))