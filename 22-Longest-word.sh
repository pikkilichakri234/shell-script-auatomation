#!/bin/bash
# Find longest word in the file

file=$1

if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
fi

tr -s ' ' '\n' < "$file" | awk '{ if (length > max) { max = length; word = $0 } } END { print word }'
