#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:~bin
export PATH

s=0
i=0
while [ "$i" -ne 101 ]
	do 
		s=$(($s+$i))
		i=$(($i+1))
	done
echo "The result of '1+2+3+4+5+.....+': $s"
exit 0
