#!/bin/bash
#Program:
#	User inputs his first name and last name.Program shows his full name
#History:
#	2015/11/19    HUANGBIAO     First release

PATH=/bin:/sbin:/usr/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:~bin
export PATH
read -p 'input your first name:'  firstname
read -p 'input your last name:'   lastname
echo -e "your name is :${firstname} ${lastname} \n"
exit 0
