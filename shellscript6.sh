#!/bin/bash
#############
# AUTHOR: DHANUSH K S
# DATE: 11TH JULY 2023
# This file is for hand-on practice in shell scripting DAY 1
################
# this is a menu driven program which will ask user to enter a number and then it will perform the operation according to the number entered by the user
while true; do
    echo "Welcome to the Menu"
    echo "  1. Say hello"
    echo "  2. Say good-bye"

    read -p "-> " response
    case $response in
        1) echo 'Hello there!' ;;
        2) echo 'See you later!'; break ;;
        *) echo 'What was that?' ;;
    esac
done
#The -p option with the prompt string allows you to provide a more descriptive message or symbol to guide the user in entering the desired input.
#When this line of code is executed, the user will see the prompt -> displayed on the terminal, indicating that they should enter their input after the prompt.
