#!/bin/bash
reading lines from a file we using IFS (Internal Field Seperator)

filename="om.txt"
echo "contents of a file"
while IFS= read -r line
do
  echo "$line"
done < "$filename"

echo "Processing user input until Exit"

while:
do
   read -p "Name:" name
   if ["$name" = "exit" ]; then
      break
   fi
   echo "Hello ---> $name!"
done
echo "you are exited"
