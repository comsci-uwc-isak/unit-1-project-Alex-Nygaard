#!/bin/bash

# This program creates a car given four arguments
# License Maker Model Passengers

if [ $# -ne 4 ]; then
    echo "Error with the number of arguments"
    echo "Enter License Maker Model Passengers"
    exit
fi

# Number of arguments are correct, continue
license=$1
maker=$2
model=$3
passengers=$4

# This creates a new line in the file mainCarFile.txt inside CarRentalApp
echo "$license $maker $model $passengers" >> ~/desktop/RentalCarApp/dataBase/mainCarFile.txt
echo "" > ~/desktop/RentalCarApp/dataBase/$license.txt

bash frame.sh "Creation complete"

