#!/bin/bash

# This program tests if the edit.sh script is working properly.

# Navigate to the scripts folder
cd ../scripts/

# Check if edit script exists
if [ -f "edit.sh" ]; then
    echo "File exists, test will start now"
else
    echo "File record.sh does not exist. Test failed"
    exit
fi

#######
# Creates a new test car
bash create.sh WDC456 bmw 2009 6

# Check that the .txt file was created
cd ../dataBase/

# Saves the last line of WDC456.txt into the variable lastline
lastline=$( tail -n 1 mainCarFile.txt )

if [ "$lastline" == "WDC456 bmw 2009 6" ]; then
    echo "Test one: car created successfully. Passed"
else
    echo "Test one: car not found: Failing"
    exit
fi

#######
# Edits the information of the car
cd ../scripts/
bash edit.sh WDC456 audi 2010 7

# Check that the .txt file was created
cd ../dataBase

# Saves the last line of WDC456.txt into the variable lastline
lastline=$( tail -n 1 mainCarFile.txt )

if [ "$lastline" == "WDC456 audi 2010 7" ]; then
    echo "Test two: car created successfully. Passed"
else
    echo "Test two: car not found: Failing"
    exit
fi

# Test finished
cd ../scripts/
bash frame.sh "Test complete. Success. Press enter to delete test car."
read a
# Deletes the car
bash delete.sh WDC456
