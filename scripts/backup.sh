#!/bin/bash

# This program creates a backup of the database folder either on the desktop or on a USB stick

# Starting
echo "Backup starting"

# Checks what method the user wants to use
echo "There are two options for backing up:"
echo "1. Back up to a folder on the desktop"
echo "2. Back up to a folder on a USB stick"
echo -n "Which would you like to chose? (type '1' or '2'): "
read choice

if [ $choice == 1 ]; then

    # Navigate to the desktop to create a new folder (backup/)
    cd ~/desktop/
    # If theres already a folder called "backup", it is removed
    rm -r backup
    mkdir backup
    # Creats subfolder (backup/dataBase/)
    cd backup
    mkdir dataBase

    # Copies all (*) the files from the dataBase folder
    # to the new folder (backup/) and subfolder (backup/dataBase/)
    cp ~/desktop/RentalCarApp/dataBase/* ~/desktop/backup/dataBase/

    ### NOT NECESSARY, ONLY FOR AESTHETIC PURPOSES
    # Prints the frame
    # Navigates to the folder of the frame.sh script
    cd ~/Desktop/RentalCarApp/scripts/
    bash frame.sh "Installation complete"

elif [ $choice == 2 ]; then # Save to a usb stick
    
    echo -n "What is your USB stick called? "
    read usbName

    cd /Volumes/$usbName/
    # If theres already a folder called "backup", it is removed
    rm -r backup
    mkdir backup
    # Creats subfolder (backup/dataBase/)
    cd backup
    mkdir dataBase

    # Copy files to USB stick
    cp ~/desktop/RentalCarApp/dataBase/* /Volumes/$usbName/backup/dataBase/

else
    echo "Error in choice. Please choose 1 or 2."
    exit
fi

