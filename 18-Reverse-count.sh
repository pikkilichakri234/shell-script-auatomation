#!/bin/bash
# Reverse file content line by line

input=$1
output=$2

if [ ! -f "$input" ]; then
  echo "Input file not found!"
  exit 1
fi

tac "$input" > "$output"
