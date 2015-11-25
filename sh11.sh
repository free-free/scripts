#!/bin/bash
#Program:
#	Use function to repease information
#History:
#	2015/11/23	HUANGBIAO	First Release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH
function print1(){
	echo -n "Your choice is"
}

echo "This program will print you selection!"
case $1 in 
	"one")	
	print1 ;echo $1|tr 'a-z' 'A-Z'
	;;
	"two")
	print1 ;echo $1|tr 'a-z' 'A-Z'
	;;
	"three")
	print1 ;echo $1|tr 'a-z' 'A-Z'
	;;
	*)
	echo "Usage $0 {one|two|three}"
	;;
esac

