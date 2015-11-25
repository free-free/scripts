#!/bin/bash
#Program:
#   This Program shwos the user's choice
#History:
# 2015/11/20   HUANGBIAO   First release
PATH=/bin:/sbin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/sbin:~bin
export PATH


read -p "Please input your choice(y/n):" choice
[ "$choice" == "y" -o "$choice" == "Y" ] &&echo 'OK,continue' &&exit 0
[ "$choice" == "n" -o "$choice" == "N" ] && echo 'Oh,interrupt'&&exit 0
echo "I don't know what you choice is" && exit 0

