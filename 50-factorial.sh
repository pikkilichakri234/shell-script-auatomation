#!/bin/bash

# Read input from the user
read -p "Enter a number: " num

# Check if the input is a valid positive integer
if [ "$num" -gt 0 ] 2>/dev/null; then     # to handle non-numeric inputs
    factorial=1
    counter=$num
    
    while [ $counter -gt 0 ]
    do
        factorial=$(( factorial * counter ))
        (( counter-- ))
    done

    echo "Factorial of $num is :: $factorial"
else
    echo "Invalid input. Please enter a positive integer."
fi
