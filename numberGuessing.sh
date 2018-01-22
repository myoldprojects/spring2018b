#!/bin/bash

# generate a random number
# $RANDOM is a bash function that returns a random signed 16 bit integer (from 0 through 32767).
# This is not evenly distributed, but for this example it will work
# use modulo, % 100 to set the upper bound
mynumber=$((RANDOM % 100))

#echo: ask for player's name
echo -n "Enter your name: "
#echo -n "${mynumber} Enter your name: "

#read: the entered value from the player and set that to a variable, playername
read playername
echo "${playername}, can you guess a number that I have chosen (between 0-100)?"
read number

#if: make sure the value of the number is within range
if (( number < 0  || number > 100 ))
then
    echo "Sorry the number (${number}) you entered is out of range"
else
    # simple if block, this only allow the player to try once
    if (( number == mynumber ))
    then
        echo "You got it"
    else
        echo "Sorry, try again. The number is ${mynumber}"
    fi

#    # Improve the above code using a loop to all the
#    # player keep trying until the player find the right number
#    #while: using a loop to allow player keep trying
#    while (( number != mynumber ))
#    do
#        read number
#    done
fi