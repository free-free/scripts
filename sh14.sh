#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:~bin
export PATH

for animal in cat dog elephant
do 
	echo "There are ${animal}s..."	
done 

exit 0
