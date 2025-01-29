#!/bin/bash
# array it is list of elements under a single  variable name
MOVIES=("omnamahashivaya","shivakesava","trimurthulu")
 #index starts with 0, 1,2,..... 
echo "first movies is: ${MOVIES[0]}"
echo "second movies is: ${MOVIES[1]}"
echo "third movies is: ${MOVIES[2]}"
echo "all elemenets is: ${MOVIES[@]}"



