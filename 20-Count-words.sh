#!/bin/bash
# Count words and show top 5

file=$1

if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
fi

cat "$file" | tr -s ' ' '\n' | sort | uniq -c | sort -rn | head -5
