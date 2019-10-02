![CarRental](logo.png)

Car Rental Minimal App
===========================

A car rental management minimal app in Bash.

Contents
-----
  1. [Planning](#planning)
  1. [Design](#design)
  1. [Development](#development)
  1. [Evalution](#evaluation)

Planning
----------
### Definition of the problem
The context of the installation is as follows:

While being provided close to no context regarding the previous system used by the car rental company, it is possible to assume that it was heavily paper-based, meaning low efficiency and difficult structures and processes for the basic procedures required by the company. The goal of this system installation is to completely replace this unsuitable system to address its many flaws, resulting in better usability, efficiency and overall performance. 

The new system will be an easy-to-use, terminal based software package that will digitize the flow and storage of information within the company. Using this system will greatly increase administrative efficiency, with its new capabilities including being able to create cars, log trips, query the trip history of a car, edit and delete cars, retrieve a summary from a car or all cars and safely backing up the data.

### Solution

### How to measure success

# WORK ON THIS, UNFINISHED


Design
---------
![SystemDiagram](systemDiagram.jpg)
**Fig. 1** This diagram shows the main components of the minimal rental app. It includes the input/outputs and main actions.

### Flow diagram from creating a frame in bash


Development
--------
### 1. Script for installation
The script below creates the folder structure for the application.
```.sh
#!/bin/bash

# This program creates the folder structure for the minimal rental app

echo "Starting installation"
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
```
This script meets the requirement of the client for a simple installation. However, it could be simplified so that the user does not need to execute the program by typing `bash install.sh`

### 2. Making a frame for the text
This flowchart shows the process behind the script that creates a frame around a string.
![FrameFlowchart](frameFlowchart.jpg)


### Problem solving
1. How to detect a word's length is odd or even
To detect if the number of characters in a string is odd or even, we must use module (%).
```.sh
(( isEven=$word%2 ))

if [ $isEven -eq 0 ]; then
    echo "This word has an even amount of characters"
fi

```
2. How to create an uninstall program
To uninstall a folder with contents in bash, you must not only use the `rm` command, but also add the argument `-r`.
Full command is `rm -r Folder`

### Developing the action Create new car
This process involves the inputs _,_,_,_, and the outputs:
The following steps describe the algorithm
1. Get the inputs as arguments '$1 $2 $3 $4'
2. Check number of arguments with `if [ $# -eq 4 ]`
3. Store new car inside mainCarFile.txt using `echo "$1 $2 $3 $4 >> mainCarFile.txt`
4. Create file for recording trips as plate.txt with `echo "$1" > plate.txt`

### Developing the action Record a trip
This process involves the inputs _,_, and the outputs:
The following steps describe the algorithm
1. Get the arguments (2) and check
2. Check that the car exist (check if a file exists in bash)
  - `test license.txt`
  - `-f "license.txt"`
3. Add a new line to the file license.txt

### Developing the action Backup you data
HOMEWORK

Evaluation
-----------



