#!/bin/bash
# logical operators used to logic between 2 operands use expression keywords like &&(and), ||(or) , !(NOT)

a=10
b=20

# AND (&&)
#================

# A   B     A&&B
# T   F     F
# F   T     F
# T   T     T
# F   F     T


# OR (||)
#==============

# A  B  A||B
# T  F   T
# F  T   T
# T  T   T
# F  F   F


# NOT (!)
#=============
# A   !A
# T    F
# F    T


echo "Logical Operators"

a=10
b=20

# AND (&&)
if [ $a -eq 10 ] && [ $b -eq 20 ]; then
  echo "Both conditions are true"
fi

# OR (||)
if [ $a -eq 20 ] || [ $b -eq 20 ]; then
  echo "At least one condition is true"
fi

# NOT (!)
if ! [ $a -eq 0 ]; then
  echo "a is not equal to zero"
fi

