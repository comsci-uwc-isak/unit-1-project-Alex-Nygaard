#!/bin/bash

# This program tests if the create.sh script is working properly.

# Navigate to the scripts folder
cd ../scripts/

# Check if creation script exists
if [ -f "create.sh" ]; then
    echo "File exists, test will start now"
else
    echo "File create.sh does not exist. Test failed"
    exit
fi

# Create a test car
bash create.sh TXM901 nissan red 9

# Check that the .txt file was created
cd ../dataBase
if [ -f "TXM901.txt" ]; then
    echo "Test one: file with the license plate created successfully. Passed"
else
    echo "Test one: file with license number not found: Failing"
    exit
fi

# Saves the last line of mainCarFile.txt into the variable lastline
lastline=$( tail -n 1 mainCarFile.txt )

# Checks if the last line is equal to the test case
if [ "$lastline" == "TXM901 nissan red 9" ]; then
    echo "Test completed successfully. File created, and information added to mainCarFile.txt"
else
    echo "Test failed. No TXM901 in mainCarFile.txt"
fi

cd ../scripts/

bash frame.sh "Test complete. Passed. Press enter to delete test car."
read b

# Delete test car
bash delete.sh TXM901

