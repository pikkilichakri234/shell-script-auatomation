#!/bin/bash
# Transpose rows and columns of a file

file=$1

if [[ ! -f $file ]]; then
  echo "File not found!"
  exit 1
fi

awk '
{
  for (i = 1; i <= NF; i++) {
    transposed[i] = transposed[i] ? transposed[i] " " $i : $i
  }
}
END {
  for (i = 1; i <= length(transposed); i++) {
    print transposed[i]
  }
}' "$file"
