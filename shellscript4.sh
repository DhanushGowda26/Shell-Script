#!/bin/bash
#############
# AUTHOR: DHANUSH K S
# DATE: 11TH JULY 2023
# This file is for hand-on practice in shell scripting DAY 1
################
# Example 1: for loop
echo "Example 1: for loop"
for i in {1..5}; do
    echo "Iteration $i"
done
# Example 2: while loop
echo "Example 2: while loop"
counter=1
while (( counter <= 5 )); do
    echo "Iteration $counter"
    (( counter++ ))
done
