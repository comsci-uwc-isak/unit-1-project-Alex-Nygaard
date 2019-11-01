#!/bin/bash

# This program serves as a manual for the user, and gives useful information about all the commands available.

# Checks if there are more than one argument
if [ $# -ne 1 ]; then
    echo "Error with the number of arguments"
    echo "Enter Command"
    exit
fi

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "--------------------------"

# Executes individual code for each command, based on the input
if [ $1 == "create" ]; then
    echo "** NAME **"
    echo "  create - Creates a new car"
    echo ""

    echo "** SYNOPSIS **"
    echo "  bash create.sh [license] [maker] [model] [passengers]"
    echo ""

    echo "** DESCRIPTION **"
    echo "  Create is a bash program that allows to create a new car in the database"
    echo ""

    echo "** AUTHOR **"
    echo "  Programmer: Alexander Nygaard"
elif [ $1 == "record" ]; then
    echo "** NAME **"
    echo "  record - Records a new trip"
    echo ""

    echo "** SYNOPSIS **"
    echo "  bash record.sh [license] [distance]"
    echo ""

    echo "** DESCRIPTION **"
    echo "  Record is a bash program that logs the distance a single car has traveled during one trip"
    echo "  The information is added to the individual cars files"
    echo ""

    echo "** AUTHOR **"
    echo "  Programmer: Alexander Nygaard"
elif [ $1 == "summary" ]; then
    echo "** NAME **"
    echo "  summary - Gives a summary of a car"
    echo ""

    echo "** SYNOPSIS **"
    echo "  bash summary.sh [license]"
    echo ""

    echo "** DESCRIPTION **"
    echo "  Summary shows the total KM driven and the average KM per trip for an individual car."
    echo ""

    echo "** AUTHOR **"
    echo "  Programmer: Alexander Nygaard"
elif [ $1 == "delete" ]; then
    echo "** NAME **"
    echo "  delete - Deletes the info of a car"
    echo ""

    echo "** SYNOPSIS **"
    echo "  bash delete.sh [license]"
    echo ""

    echo "** DESCRIPTION **"
    echo "  Delete removes both the information about the car in the mainCarFile.txt."
    echo "  In addition to the individual text file of that car."
    echo ""

    echo "** AUTHOR **"
    echo "  Programmer: Alexander Nygaard"
elif [ $1 == "edit" ]; then
    echo "** NAME **"
    echo "  edit - Edits the info of a car"
    echo ""

    echo "** SYNOPSIS **"
    echo "  bash edit.sh [license] [maker] [model] [passengers]"
    echo ""

    echo "** DESCRIPTION **"
    echo "  Edit replaces the information about a car in the mainCarFile.txt with the information provided by the user."
    echo ""

    echo "** AUTHOR **"
    echo "  Programmer: Alexander Nygaard"
elif [ $1 == "install" ]; then
    echo "** NAME **"
    echo "  install - Installs the folder and file structure"
    echo ""

    echo "** SYNOPSIS **"
    echo "  source install.sh"
    echo ""

    echo "** DESCRIPTION **"
    echo "  Install creates the folder structure of the system (including the subfolders /dataBase and /scripts)"
    echo "  Also moves the scripts from the parent folder into the /scripts folder"
    echo ""

    echo "** AUTHOR **"
    echo "  Programmer: Alexander Nygaard"
elif [ $1 == "uninstall" ]; then
    echo "** NAME **"
    echo "  uninstall - Uninstalls all files"
    echo ""

    echo "** SYNOPSIS **"
    echo "  bash uninstall.sh"
    echo ""

    echo "** DESCRIPTION **"
    echo "  Deletes the main folder (/RentalCarApp/) from the desktop, thus removing all files related to this software package."
    echo ""

    echo "** AUTHOR **"
    echo "  Programmer: Alexander Nygaard"
else
    echo "Invalid command. Please check spelling."
    echo ""
    echo "Valid commands include (case sensitive):"
    echo "  install"
    echo "  create"
    echo "  record"
    echo "  summary"
    echo "  edit"
    echo "  backup"
    echo "  delete"
    echo "  uninstall"
fi

echo "--------------------------"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
