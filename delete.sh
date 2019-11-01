#!/bin/bash

# This program deletes a car from the mainCarFile.txt and from the dataBase

# Check num of arguments is correct
if [ $# -ne 1 ]; then
  echo "Error with the number of arguments"
  echo "Enter License Maker Model Passengers"
  exit
fi

license=$1

cd ../dataBase

# Exits if file does not exist
if [ ! -f "$license.txt" ]; then
    echo "File not found!"
    exit
fi

# Find the line with the given car plate and delete it
sed -i '' "/^$license/d" mainCarFile.txt
# Delete the car text file
rm -r "$license.txt"

# Finish
cd ../scripts/
bash frame.sh "Car deleted successfully"
