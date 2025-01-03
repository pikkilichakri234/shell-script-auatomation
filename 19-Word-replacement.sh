#!/bin/bash
# Replace a word in the file

file=$1
old=$2
new=$3

if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
fi

sed -i "s/$old/$new/g" "$file"
