
How to create a bash script that automatically creates files and folders
==

#!/bin/bash

#This program demonstrates how to create file/folder

echo "creating teh folder test"
mkdir test

echo "creating a 100 files inside the folder"
cd test
for (( f=1; f<=100; f++ ))
do
        echo "creating file #$f"
        echo "This is file $f" > file_$f.txt
done
echo "Task completed"
