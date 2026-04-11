# Program to perform list operations using menu

my_list = []

while True:
    print("\n1. Add item")
    print("2. Remove item")
    print("3. Display list")
    print("4. Sort list")
    print("5. Reverse list")
    print("6. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        item = input("Enter item to add: ")
        my_list.append(item)
        print("Item added")
    elif choice == "2":
        item = input("Enter item to remove: ")
        if item in my_list:
            my_list.remove(item)
            print("Item removed")
        else:
            print("Item not found")
    elif choice == "3":
        print("List =", my_list)
    elif choice == "4":
        my_list.sort()
        print("List sorted")
    elif choice == "5":
        my_list.reverse()
        print("List reversed")
    elif choice == "6":
        print("Program ended")
        break
    else:
        print("Invalid choice")