#!/bin/bash
#Program:
#	This program shows user's choice
#History:
#	2015/11/20 	HUANGBIAO	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:~bin
export PATH

read -p "input your choice (y/n);" choice
if [ $choice == "Y" ] || [ $choice == "y" ];then
	echo "OK,continue"
	exit 0
fi

if [ $choice == "N" ]||[ $choice == "n" ];then
	echo "Oh!interrupt"
	exit 0
fi

echo "I don't know what your chioce is" &&exit 0 
