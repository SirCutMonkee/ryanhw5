#!/bin/bash
#----------------------------------------------------------------------------------------------------
# threeAmigos.sh
#----------------------------------------------------------------------------------------------------
# This script takes 4 command line arguments and sums the first three numbers and
# executes subtractMachine.sh where the first argument is the sum and the second argument is
# the fourth argument from the first sript
#----------------------------------------------------------------------------------------------------
# Arguments: value 1, value 2, value 3, value 4
# Invocation: ./threeAmigos.sh val1 val2 val3 val4
#----------------------------------------------------------------------------------------------------

sum=$(( $1 + $2 + $3 ))
echo Sum "=" $sum
./subtractMachine.sh $sum $4
