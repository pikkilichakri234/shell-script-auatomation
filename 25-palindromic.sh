#!/bin/bash
# Find all palindromic words in a file

file=$1

if [[ ! -f $file ]]; then
  echo "File not found!"
  exit 1
fi

tr -c '[:alnum:]' '[\n*]' < "$file" | grep -iE '^(.)(.?)(.?)\3\2\1$' | sort -u
