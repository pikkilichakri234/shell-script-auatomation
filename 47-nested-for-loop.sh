#!/bin/bash
# nested loop generate a multiple tables
echo "Multiplication table (1 to 10)"

for (( i=1; i<=5; i++ ))
do
   echo "multplication table for(1 to 10):: $i"    # j++ , i++ = post increment , j--,i-- = post decrement , --i,--j = pre decrement , ++i,++j=pre increment
   for (( j=1; j<=5; j++ ))
   do
    echo "$i * $j = $(( i * j ))"
   done
   echo "--------------"  
done