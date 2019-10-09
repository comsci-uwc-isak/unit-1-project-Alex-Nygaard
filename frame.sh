#!/bin/bash

# This program creates a estetic title frame
# Arguments received include length, padding and symbol

length=100
padding=3
symbol=x
text=$1
# Get the text from the user
#echo -n "What text would you like to display? "
#read text
textLength=${#text}

# PRINT FIRST ROW
for (( a=1; a<=$length; a++ ))
do
    echo -n $symbol
done

echo ""

# PRINT PADDING #1
for (( b=1; b<=$padding/2; b++ ))
do
    echo -n $symbol
    #Printing right number of spaces
    for (( c=1; c<=$length-2; c++ ))
    do
    echo -n " "
    done
    echo $symbol

done




#######################################
# PRINT LINE WITH TEXT

echo -n $symbol
(( sidepadding=$length-$textLength ))
#echo "First side padding: $sidepadding"

(( sidepadding=$sidepadding/2 ))
#echo "Second side padding: $sidepadding"


# Print side padding #1
for (( d=1; d<=$sidepadding; d++ ))
do
    echo -n " "
done

#Print text
echo -n $text

# Check if the the text has an even amount of characters
# If yes, one space is removed from the side padding
(( isEven=$textLength%2 ))

if [ $isEven -eq 0 ]; then
    (( sidepadding=$sidepadding-1 ))
fi


# Print side padding #2
for (( e=1; e<=$sidepadding-1; e++ ))
do
    echo -n " "
done

# End with a symbol
echo $symbol
#######################################


# PRINT PADDING #2
for (( b=1; b<=$padding/2; b++ ))
do
    echo -n $symbol
    #Printing right number of spaces
    for (( c=1; c<=$length-2; c++ ))
    do
    echo -n " "
    done
    echo $symbol

done



# PRINT LAST LINE
for (( f=1; f<=$length; f++ ))
do
    echo -n $symbol
done

echo ""

