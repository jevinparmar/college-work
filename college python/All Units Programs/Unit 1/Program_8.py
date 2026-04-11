# Program to perform different string operations

from email.mime import text


String = input("Enter a string: ")

vowels = "aeiouAEIOU"
vowel_count = 0
for ch in String:
    if ch in vowels:
        vowel_count += 1
print("Number of vowels =", vowel_count)

count = 0
for ch in String:
    count += 1
print("Length of string =", count)

reverse_text = ""
for ch in String:
    reverse_text = ch + reverse_text
print("Reverse string =", reverse_text)

old_word = input("Enter word to find: ")
new_word = input("Enter word to replace with: ")
changed_text = String.replace(old_word, new_word)
print("New string =", changed_text)

if String == reverse_text:
    print("String is palindrome")
else:
    print("String is not palindrome")