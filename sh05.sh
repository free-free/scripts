#!/bin/bash
#Program:
# User input a file name,proram will check the following:
# 1.)exist? 2.)file/directory? 3.) file permissions
#History:
# 2015/11/19    HUANGBIAO      First release
read -p 'input your file name:' filename
test ! -e $filename && echo "file name is not exist" && exit
test -f $filename && echo "File is regular file"||echo "File is directory"
permission='perssion:'

test -r $filename &&  permission=${permission}'r'
test -w $filename &&  permission=${permission}'w'
test -x $filename &&  permission=${permission}'x'
test -u $filename && permission=${permission}'u'
test -g $filename && permission=${permission}'g'
test -k $filename && permission=${permission}'k'
echo $permission
exit 0
