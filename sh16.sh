#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~bin
export PATH

read -p "Please input a number ,I will count for 1+2+3+4...+your input: " nu
s=0
for ((i=0;i<=$nu;i=i+1))
do
	s=$(($s+$i))

done

echo "The result of '1+2+3+4....+$nu' is ===>$s"

exit 0

