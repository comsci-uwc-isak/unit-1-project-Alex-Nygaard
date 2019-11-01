#!/bin/bash

# This program creates the folder structure for the minimal rental app

bash frame.sh "Welcome. Starting installation"

echo "Installing in the desktop (default). Press enter"
read

# Create app folder

mkdir scripts
mv ~/desktop/RentalCarApp/*.sh ~/desktop/RentalCarApp/scripts/
mkdir dataBase
cd scripts

# Confirm
echo "Installation complete"
