#!/bin/bash
#------------------------------------------------------------------------------------
# subtractMachine.sh
#------------------------------------------------------------------------------------
# This script takes 2 arguments and
# subtracts the smaller from the larger and then prints out the difference to stdout
# and then counts down from the difference to 1 while printing each count to stdout.
#------------------------------------------------------------------------------------
# Arguments: value1, value2
# Invocation: ./subtractMachine.sh1. value1 value2
#------------------------------------------------------------------------------------


if [ $1 -gt $2 ]
    then
        diff=$(( $1 - $2 ))
        echo $1 is larger than $2
    else
        diff=$(( $2 - $1 ))
        echo $2 is larger than $1
fi
echo Difference "=" $diff
for (( i=diff; i>=1; i-- ))
    do
        echo Count Down = $i
    done
