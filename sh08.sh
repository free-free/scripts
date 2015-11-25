#!/bin/bash
#Program:
#	check $s is equal to 'hello'
#History:
#	2015/11/20	HUANGBIAO	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:~bin
export PATH
if [ "$#" -eq 0 ];then
	echo 'you must input a value'
elif [ ! "$1" == 'hello' ] ;then
	echo 'the value must be hello'
else
	echo 'Hello,how are you?'
fi

	
	
	
