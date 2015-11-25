#!/bin/bash
#Program:
#	This program shows the script name,parameters....
#History:
#	2015/11/20	HUANGBIAO	First release
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH
echo "file name is $0 "
echo "The total of parameters:$# "
[ "$#" -lt 2 ] && echo 'The parameters is less than 2' &&exit 
echo "all parameters: $@ "
echo "First parameter is $1 "
echo "Second parameter is $2 "
exit 0

