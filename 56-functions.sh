#!/bin/bash
# function to print numbers from 1 to 5    # functions it allows reuse the code
print_numbers() {
    local n="$1"
    for ((i=1;i<=n;i++))
    do
       echo "$i"
       sleep 3
    done

}

# call the function
print_numbers 5

# define a function that print greeting
testing() {
    echo "hello , om namaha shivaya"
}

# call the function
testing # function
pwd
sleep2
testing # function
uptime
testing # function
hostname