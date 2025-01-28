#!/bin/bash
 calculate the whileloop use factorail of number
 read num
 factoriall=1
 counter=$num
 while [$counter -gt 0]
 do
    factorial=$(( factorial * counter ))
    (( counter -- ))
 done

 echo "Factorial of $num is :: $factorial