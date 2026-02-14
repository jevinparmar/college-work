list1 = ['physics', 'chemistry', 1997, 2000]
list2 = [1, 2, 3, 4, 5, 6, 7]

print(list1 + list2)

list1.remove(2000)

list1.append("Java")

list2[3] = 11

del list2[2]

for i in range(4):
    print("Welcome to Marwadi University")

print(list1[-2])
print(list2[1:3])
print(list1[-1:-3])

print(len(list2))

nums = [1997]
print(max(nums))

print(min(list2))

list2.append(100)

list2.extend([8, 9])

temp = list2.copy()
print(temp.pop())
temp2 = list2.copy()
temp2.remove(2)
print(temp2)

list1.reverse()
print(list1)

list2.sort(reverse=True)
print(list2)
