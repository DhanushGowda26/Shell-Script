#!/bin/bash
#############
# AUTHOR: DHANUSH K S
# DATE: 11TH JULY 2023
# This file is for hand-on practice in shell scripting DAY 1
################

# Function to greet a person
greet() {
    local name=$1 #$1 is "john"
    echo "Hello, $name!"
}

# Function to add two numbers
add() {
    local num1=$1  #$1 is 5 and $2 is 7
    local num2=$2
    local sum=$((num1 + num2))
    echo "The sum of $num1 and $num2 is: $sum"
}

# Function to display a message
display_message() {
    echo "This is a custom message."
}
# To pass argument from command line
exit(){
        echo "bye $1"
}
# Calling the functions
greet "John" #"John" is an argument
add 5 7 
display_message
exit $1