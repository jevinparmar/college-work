# Program to read file and count words

file = open("sample.txt", "r")
data = file.read()
file.close()

print("File contents:")
print(data)

words = data.split()
print("Number of words =", len(words))