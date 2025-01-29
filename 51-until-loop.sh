#!/bin/bash

# example of an until loop counting up from 1 to 5

echo "until loop"

count=1

until [ $count -gt 5 ]
do 
    echo "$count"
    $((count++))
done
echo "counting done!"


