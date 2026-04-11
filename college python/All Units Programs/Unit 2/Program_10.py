# Program to zip and unzip files

import zipfile

with zipfile.ZipFile("myfiles.zip", "w") as zip_file:
    zip_file.write("source.txt")
    zip_file.write("sample.txt")

print("Files zipped successfully")

with zipfile.ZipFile("myfiles.zip", "r") as zip_file:
    zip_file.extractall("unzipped_files")

print("Files unzipped successfully")