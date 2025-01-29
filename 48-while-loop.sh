#!/bin/bash
counting down from 5 to 1
counter=5
echo "Counting down"
while [ $counter -ge 0 ];
do
   echo "counter is $counter"
   (( counter -- ))
done

# while
i=10
while [ $i -gt 0 ]; do
  echo Hello
  i=$(($i-1))
  sleep 2
done