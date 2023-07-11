#!/bin/bash
#############
# AUTHOR: DHANUSH K S
# DATE: 11TH JULY 2023
# This file is for hand-on practice in shell scripting DAY 1
################
# EXAMPLE 1
echo "Enter a number:"
read number

if (( number > 0 )); then
    echo "$number is a positive number."
elif (( number == 0 )); then
        echo "number is zero ($number)."
else
    echo "$number is a negative number."
fi
#EXAMPLE 2
Grade=75
if (( Grade >= 90 )); then
        echo " Grade A"
elif (( Grade >=80 )); then
        echo "Grade B"
elif (( Grade >=70 )); then
        echo "Grade C"
else
        echo "D Grade"
fi