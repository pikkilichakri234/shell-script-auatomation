#!/bin/bash
# Rename .txt files with timestamp

dir=$1

if [ ! -d "$dir" ]; then
  echo "Directory not found!"
  exit 1
fi

for file in "$dir"/*.txt; do
  mv "$file" "$dir/$(date +%Y%m%d)_$(basename "$file")"
done
