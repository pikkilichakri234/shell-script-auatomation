#!/bin/bash   (processing file names)

# declare an array to store file names
declare -a files=()

# populate the array with file names ending .txt in current directory
files=(*.sh)

# iterate over each file and perform an action

for file in ${#files}
do
   line_count=$(wc -l < "$file")
   echo "File is :: $file has $line_count lines..."
done

# processing command line arguments

args=("$@")

# print all argumrnts
echo "all arguments"
for arg in "${args[@]}"
do 
    echo "$arg"
done

echo "length of an array is :: ${#args[@]}"

# Access individual element
echo "First argument is :: ${args[0]}"

