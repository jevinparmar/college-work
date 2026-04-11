# Program to display MRO using multiple inheritance

class A:
    pass

class B:
    pass

class C(A, B):
    pass

obj = C()

print("MRO of class C:")
for item in C.mro():
    print(item)