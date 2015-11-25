#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

until [ "$yn" == "yes" -o "$yn" == "YES" ]
	do 
		read -p "please input yes/YES to stop this program: " yn
	done
echo "OK! you input the correct anwser!"

exit 0;
