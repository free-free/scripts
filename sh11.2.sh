#!/bin/bash
#Program:
#	use function to repeat information!
#History:
#	2015/11/23	HUANGBIAO	First release
	
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

echo 'this program will print your selection!'

function print2(){
	echo "Your choice is $1"
}

case $1 in 
	"one")
	 print2 1 
	;;
	"two")
	 print2 2
	;;
	"three")
	 print2 3
	;;
	*)
	echo "usage $0 {one|two|three}"
	;;
esac

