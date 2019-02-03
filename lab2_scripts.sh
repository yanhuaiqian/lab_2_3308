#!/bin/bash
# Authors : Huaiqian Yan, Victoria Orta
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

# Display "Enter the regex: ".
echo "Enter the regex: "

# Get user's regex and store it in "varOne".
read varOne

# Display "Enter the file name: ".
echo "Enter the file name: "

# Get user's file name and store it in "varTwo".
read varTwo

# Count the number of phone numbers in regex_practice.txt
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' $varTwo

# Count the number of emails in regex_practice.txt
grep -E -c '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' $varTwo

# List all of the phone numbers in the "303" area code and store the results in "phone_results.txt"
grep -E '(303)-[0-9]{3}-[0-9]{4}' $varTwo > phone_results.txt

# List all of the emails from geocities.com and store the results in "email_results.txt"
grep "@geocities.com" $varTwo > email_results.txt

# List all of the lines that match a command-line regular expresion and store the results in "command_results.txt" I'm using command "cattle" here.
grep $varOne $varTwo > command_results.txt

# Update .txt files
git add .
git commit -m "My Lab 2"
