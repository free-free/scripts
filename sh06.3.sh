#!/bin/bash
#Program:
#	This Program shows user's choice
#History:
#	2015/11/20	HUANGBIAO	First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:~bin
export PATH
read -p 'input your choice (y/n): ' c
if [ $c == 'y' ]||[ $c == 'Y' ];then
	echo 'OK,continue'
	exit 0
elif [ $c == 'n' ] || [ $c == 'N' ];then
	echo 'Oh!interrupt'
	exit 0
else
	echo "I dont't your know whar your choice is "
fi

