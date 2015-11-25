#!/bin/bash
#Program:
#	This script only accepts the following parameters:one,two,three
#History:
#	2015/11/23	HUANGBIAO	Frist release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:~bin
export PATH
echo "This program will print your selection !"
read -p "Input your choice: " choice
case $choice in 
	"one")
	echo "your choice is ONE"
	;;
	"two")
	echo "your choice is TWO"
	;;
	"three")
	echo "your choice is three"
	;;
	*)
	echo "Usage $0 {one|two|three}"
	;;
esac

