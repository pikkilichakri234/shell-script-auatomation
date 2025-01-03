#!/bin/bash
# Find duplicate lines

file=$1

if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
fi

sort "$file" | uniq -d
