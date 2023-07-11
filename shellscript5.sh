#!/bin/bash
#############
# AUTHOR: DHANUSH K S
# DATE: 11TH JULY 2023
# This file is for hand-on practice in shell scripting DAY 1
################
# Command substitution with backticks
current_date=`date`
echo "The current date is: $current_date"
# Command substitution within a string
echo "I am in `pwd` directory."
# Command substitution with $()
current_date=$(date)
echo "The current date is: $current_date"
# Command substitution within a string
echo "I am in $(pwd) directory."
# you can use either $() or `` to perform command substitution
# comand capture means the output of the command is stored in a variable
#to access the variable we use $variable_name here you cant use backticks ``
files=$(ls)
echo "Files in the current directory: $files"

# Command substitution to capture the current working directory
current_dir=$(pwd)
echo "The current directory is: $current_dir"
# let say there are folder -4  inside it folder -3 inside it folder -2 inside it folder -1  inside it folder 0  
#inside it folder 1  inside it folder 2  inside it folder 3  inside it folder 4,
# now i am in folder 0. if i put maxdepth 2, the search goes from folder0 and folder1 (2 folder search in forward direction) 
#and mindepth 3 means folder search in folder 0, folder -1 and folder -2 (backward search)    
#maxdepth 1 means search in current directory only and mindepth 1 means search in current directory only
# command substitution to capture how many files and directories are there in the current directory
directories=$(find . -maxdepth 1 -type d -not -name '.' | wc -l)
files=$(find . -maxdepth 1 -type f -not -name '.*' | wc -l)
echo "Directories = $directories"
echo "Files = $files"
