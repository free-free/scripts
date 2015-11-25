#/bin/bash
#Program:
#	This program detect your machine opened port
#History:
#	2015/11/20   	HUANGBIAO	First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:~bin
export PATH

echo 'detecting your opened port..............'

if [ "$#" -eq 0 ];then
	netstat -tuln|awk 'NR>2{print $4}'|awk -F ":" '{print $2}'|sort|uniq|awk '{printf "%s: %s \n","opened port"NR,$1}'	
fi
