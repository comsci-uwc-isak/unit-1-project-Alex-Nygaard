#!/bin/bash

# This program gives a summary of a car, including total distance and average distance per trip

totalKM=0
numberOfTrips=0

FILE="../dataBase/$1.txt"
while read line
do
  # Bash splits a line by spaces
  for word in $line
  do
    # Add all the km
    ((totalKM+=$word))
    ((numOfTrips++))
    break
  done

done < $FILE

((average=$totalKM/$numOfTrips))

# Show very nicely the total km traveled

bash frame.sh "Total km for $1: $totalKM km. Average km: $average km."
