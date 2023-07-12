#!/bin/bash
#############
# AUTHOR: DHANUSH K S
# DATE: 12TH JULY 2023
# This file is for hand-on practice in shell scripting DAY 2
################
set -x

# grep command to search for a specific string:
grep "error" app.log
#grep command with the -i option for case-insensitive search:
grep -i "error" app.log
# grep command to count the number of occurrences of a pattern:
grep -c "pattern" app.log
# line numbers of a file that contain the text "error"
grep -n "error" app.log
# grep command with the -r option to recursively search in directories
grep -r "error" home/ubuntu/app2.log
# grep command to exclude lines matching a pattern
grep -v "debug" app.log
# This command will search for lines containing the word "error" in the "app.log" file and display
#the matching lines along with the three lines that follow
grep -A 3 "error" app.log
# awk command to extract a specific column, -F is a firls seperator
awk -F " " '{print $3}' app.log
# awk command to filter lines based on a condition
awk '$3 > 200' app.log
# This command will print the lines where the length of the third column is greater than 26 characters.
awk 'length($3) > 20' app.log
# awk command to perform calculations and generate a summary
echo "sum of years"
awk '{sum += $1} END {print sum}' app.log
# The substr($1, 6) function extracts the substring of the first column ($1) starting from the 6th character position until the end.
echo "sum of months"
awk '{ sum += substr($1, 6) } END { print sum }' app.log
# awk command to format and rearrange fields in a log file
awk '{print $3, $1, $4}' app.log
# awk command to perform string concatenation and generate customized output
awk '{print $1 "--->" $3}' app.log
# prints the occurence of a values in coloumn 2
awk '{count[$2]++} END {for (val in count) print val, count[val]}' app.log
#awk command to find the maximum value in a column
awk 'max < $2 {max = $2} END {print "Maximum value:", max}' app.log
# awk command to calculate the average of a column:
awk '{sum += $2} END {avg = sum / NR; print avg}' app.log