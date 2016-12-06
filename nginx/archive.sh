#!/bin/sh
cur=`date +%Y%m%d%H%M -d "10 minutes ago"`
f=/var/log/nginx/last_archive
if [ ! -f "$f" ];then
        echo "$cur" > $f
fi
last=`cat $f`
if [ "$last" \< "$cur" ];then
        echo "clean old process"
        ps -ef |grep "/usr/share/nginx/www/console core:archive" |grep -v grep | awk '{print "kill -9", $2}' | sh
        sleep 5
fi
act=$1
if [ "$act" != "check" ];then
	echo "$cur" > $f
	/usr/share/nginx/www/console core:archive $@
fi
