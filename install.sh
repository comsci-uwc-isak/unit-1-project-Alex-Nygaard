#!/bin/bash

# This program creates the folder structure for the minimal rental app

bash frame.sh 100 "Welcome. Starting installation"

#echo "Starting installation"
echo "Installing in the desktop (default). Press enter"
read 

cd ~/desktop

#Create app folder
mkdir RentalCarApp
cd RentalCarApp
mkdir dataBase
mkdir scripts

#Confirm?
echo "Installation complete"

