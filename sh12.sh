#!/bin/bash
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

while [ "$fn" != "yes" -a "$fn" != "YES" ]
	do
	read -p "Please input yes/YES to stop this program: " fn
	done

echo "OK!.you input the correct answer"
exit 0

