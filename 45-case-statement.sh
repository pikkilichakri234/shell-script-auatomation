#!/bin/bash
#  one or more conditions to perform actions in different cases
fruit="apple"
case $fruit in
   apple)
       echo "it's a fruit: apple"
       ;;
   banana)
       echo "it is a fruit: banana"
       ;;
   orange)
       echo "it is a fruit: orange"
       ;;
   *) 
       echo "unknown fruit"
       ;;
esac

     
