#!/bin/bash
string1="om"
string2="namaha"
string3="shivaya"

if [ $string1 = $string2 ]; then
  echo "strings are equal"
fi

if [ $string1 != $string2 ]; then
  echo "strings are equal"
fi
string4="$string1-$string2-$string3"
echo "concatenated the string is :: $string4"

length=${#string1}
echo "length os string1 is $length"