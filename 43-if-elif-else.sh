#!/bin/bash

# synatx:
# ==========
# if [ condition ]; then
#   # Logic to execute if the condition is true
# elif [ condition ]; then
#   # Logic to execute if the first condition is false and this condition is true
# else
#   # Logic to execute if none of the conditions are true
# fi

a=20

if [ $a -eq 10 ]; then
   echo "value of a is 10"
elif [ $a -eq 20 ]; then
  echo "value of a is 20"
else 
  echo "value of a is neither 1o nor 20"
fi