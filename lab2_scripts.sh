#!/bin/bash
# Authors : Huaiqian Yan, Victoria Orta
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter the regex: "
read varOne
echo "Enter the file name: "
read varTwo
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' $varTwo
grep -E -c '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' $varTwo
grep -E '(303)-[0-9]{3}-[0-9]{4}' $varTwo > phone_results.txt
grep "@geocities.com" $varTwo > email_results.txt
grep $varOne $varTwo > command_results.txt
git add .
git commit -m "My Lab 2"
