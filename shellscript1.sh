#!/bin/bash
#############
# AUTHOR: DHANUSH K S
# DATE: 11TH JULY 2023
# This file is for hand-on practice in shell scripting DAY 1
################

set -x
# Greetings
echo "Hello, world!"
echo "What is your name?"
read name
echo "Nice to meet you, $name!"
# to check even or odd
echo "enter a number"
read number
if (( $number % 2 == 0));
then
        echo "number $number is even"
else
        echo "number $number is odd"
fi
# to check input is number or not
# =~ this is pattern matching operatot
# ^ starting of line or string and $ end of line or string
echo "enter number1"
read number1
if [[ $number1 =~ ^[0-9]+$ ]];
then
        echo "this is a valid number $number1"
        echo $number1
        while (( $number1 > 0 ));
        do
                (( number1-- ))
        echo $number1
        sleep 1
done echo "this is not a valod number $number1"
fi
# to ckeck particular file is present or not
# -f is file test operator
echo "file name please"
read file
if [[ -f $file ]];
then
        echo "file is present"
        echo "file contents :"
        cat $file
else
        echo "No file present"
fi
# $1 for 1st command line argument and $2 foe 2nd argument--(./<filename>.sh "john" "knan")
# john is placed inside GuestName and khan in WaitName
# -z is used to check if the variable is empty or not, if empty 'if' condition is executed
GuestName=$1
WaitName=$2
if [ -z "$GuestName" ] && [ -z "$WaitName" ];
then
    echo "Please provide a name as a command line argument."
else
    echo "Nice to meet you, $GuestName"
    echo "please wait $WaitName"
fi           