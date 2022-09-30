#!/bin/bash
#----------------------------------------------------------------------------------------------------
# commanderBash.sh
#----------------------------------------------------------------------------------------------------
# This script calls led-hw5.sh
# On first invocation it turns the LED on
# On second invocation it turns the LED off
# On third invocation it reads status
# On fourth invocation it flashes the LED
# On fifth invocation it blinks the LED 3 times
#----------------------------------------------------------------------------------------------------
# Arguments: None
# Invocation: ./commanderBash.sh
#---------------------------------------------------------------------------------------------------

iterationFile="commanderBashIteration.txt"

if [ ! -f "$iterationFile" ]; then
  iteration=0
else
  iteration=$(cat "$iterationFile")
fi

if [ "$iteration" -eq 0 ]; then
  ./led-hw5.sh on
elif [ "$iteration" -eq 1 ]; then
  ./led-hw5.sh off
elif [ "$iteration" -eq 2 ]; then
  ./led-hw5.sh status
elif [ "$iteration" -eq 3 ]; then
  ./led-hw5.sh flash
elif [ "$iteration" -eq 4 ]; then
  ./led-hw5.sh blink 3
else
  echo "Something has gone wrong"
fi

iteration=$((iteration + 1))
if [ "$iteration" -eq 5 ]; then
  iteration=0
fi

sudo echo "${iteration}" > "$iterationFile"
