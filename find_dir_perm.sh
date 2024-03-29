#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:~bin
export PATH

read -p 'Please input a directory: ' dir
if [ "$dir" == "" -o ! -d "$dir" ];then
	echo "The $dir is not exist in your system"
	exit 1
fi

filelist=$(ls $dir)
if [ "$dir" == "/" ];then
	dir=""
fi
for filename in $filelist
do
	perm=""
	test -r "$dir/$filename"&&perm="$perm readable"
	test -w "$dir/$filename"&&perm="$perm writable"
	test -x "$dir/$filename"&&perm="$perm executable"
	echo "The file $dir/$filename's permission is $perm"
done
exit 0

