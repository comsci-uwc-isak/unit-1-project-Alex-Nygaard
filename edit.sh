#!/bin/bash

# This program edit the information of an exiting car in the mainCarFile.txt
# User input: [license] [maker] [model] [passengers]

if [ $# -ne 4 ]; then
  echo "Error with the number of arguments"
  echo "Enter License Maker Model Passengers"
  exit
fi

license=$1
maker=$2
model=$3
passengers=$4

cd ../Database

if [ ! -f "$license.txt" ]; then
  echo "File not found!"
fi

# Find the line with the given car plate and delete it
sed -i '' "/^$license/d" mainCarFile.txt
# Add the new information
echo "$license $maker $model $passengers" >> mainCarFile.txt

cd ../scripts/
bash frame.sh "Car edited successfully"
