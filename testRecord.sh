#!/bin/bash

# This program tests if the record.sh script is working properly.

# Navigate to the scripts folder
cd ../scripts/

# Check if recording script exists
if [ -f "record.sh" ]; then
    echo "File exists, test will start now"
else
    echo "File record.sh does not exist. Test failed"
    exit
fi

# Create test car
bash create.sh QWT789 porche 2010 4

# Record a test trip
bash record.sh QWT789 275

# Check that the .txt file was created
cd ../dataBase

# Saves the last line of QWT789.txt into the variable lastline
lastline=$( tail -n 1 QWT789.txt )

if [ "$lastline" == "275" ]; then
    echo "Test one: trip recorded successfully. Passed"
else
    echo "Test one: trip not found: Failing"
    exit
fi

cd ../scripts/

bash frame.sh "Test complete. Success. Press enter to delete test car."
read a

# Delete test car
bash delete.sh QWT789
