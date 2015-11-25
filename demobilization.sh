#!/bin/bash
#Program:
#	input demobilization date,output how many days before you demobilize
#History:
#	2015/11/22	HUANGBIAO	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

read -p  'input your demobilization date(YYYYMMDD ex>20090101) : '  date2
date_d=$(echo $date2|grep '[0-9]\{8\}')	
if [ "$date_d" == "" ];then
	echo "your input is the wrong date format"
	exit 1
fi

declare -i date_dem=`date --date=$date2 +%s`
declare -i date_now=$(date +%s)
declare -i date_total_s=$(($date_dem-$date_now))
declare -i date_d=$(($date_total_s/60/60/24))

if [ "$date_total_s" -lt 0 ];then
	echo "you had been demobilization before "$((-1*$date_d)) " day ago"
else
	declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
	echo "You will demobilize after $date_d days and $date_h hours"
fi
exit 0
