#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

users=$(cut -d ':' -f 1 /etc/passwd)
for user in $users
do 
	id $user
done

exit 0

