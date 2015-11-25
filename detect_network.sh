#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH
if [ "$1" == "" ];then
	while [ "$network" == "" ]
	do
		read -p 'please input ip (ex 192.168.0.0-192.168.0.10),you want to detect: ' network
		if [ -z $(echo $network|grep '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}-[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}') ];then
			echo "ip is not right!"
			network=""
		fi
	done
else
   if [ -z $(echo $1|grep '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}-[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}') ];then
		echo "ip is not right!"
		exit 1
   fi
fi
net=$(echo $network|cut -d '-' -f 1 |cut -d '.' -f 1-3)
minseq=$(echo $network |cut -d '-' -f 1|cut -d '.' -f 4)
maxseq=$(echo $network |cut -d '-' -f 2|cut -d '.' -f 4)
	
echo "detecting ${net}.${minseq} to ${net}.${maxseq} ......... "
for sitenu in $(seq $minseq $maxseq)
do
	ping -c 1 -w 1 ${net}.${sitenu} &>/dev/null&&result=0||result=1
	if [ "$result" == 0 ];then
		echo "server ${net}.${sitenu} is UP"
	else
		echo "server ${net}.${sitenu} is DOWN"
	fi
done

