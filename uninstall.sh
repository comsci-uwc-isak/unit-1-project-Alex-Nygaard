#!/bin/bash

# This program deletes the folder for the minimal rental app

echo "Starting uninstall"
echo "Press enter to continue"
read 

cd ~/desktop

#Create app folder
rm -R RentalCarApp/

#Confirm?
echo "Deletion complete"
