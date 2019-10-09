#!/bin/bash

# This is an example script that solves the smaller problems for the action summary
# 1. Read a .txt file line by line
# 2. Splir a line by spaces
# 3. Add the first number in a line

totalKM=0

FILE="../dataBase/$1.txt"
while read line
do
  # Bash splits a line by spaces
  for word in $line
  do
    # Add all the km
    ((totalKM+=$word))
    break
  done

done < $FILE

# Show very nicely the total km traveled

bash frame.sh "Total km for $1: $totalKM km"
