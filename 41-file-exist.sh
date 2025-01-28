#!/bin/bash

# conditions:- if we make to decision ( if or else) depends on perform specific action

# Conditional statements in a shell script allow decision-making based on conditions


# syntax:-
# ===========

# if [condition]; then
#   #logic ---->  code block to exectute if condition is true

# else
#   # logic ---> code block to execute if condition is false
# fi


# if file checking exist or not 

file="om.sh"
if [ -f $file ]; then   #-f operator checks if the specified file exists and is a regular file (not a directory).
   echo "file existing is $file"
else
  echo "file not existing is $file"
fi