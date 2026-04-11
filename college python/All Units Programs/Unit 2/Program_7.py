# Program to copy one text file into another

source = open("source.txt", "r")
data = source.read()
source.close()

target = open("target.txt", "w")
target.write(data)
target.close()

print("File copied successfully")