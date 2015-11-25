#!/bin/bash
#Program:
#    User input 2 integer numbers;program will cross these two numbers
#History:
#   2015/11/19 HUNAGBIAO   First release


PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH
echo -e " You SHOULD input 2 integer numbers ,I will cross them!\n"
read -p "Please input first number:"  number1
read -p "Please input second number:"  number2
result=$(($number1*$number2))
echo -e "calculated resulted is :$result"
exit 0

