#!/bin/sh
#while true;do
lock=/var/lock/archive_hourly.lock
if [ -f $lock ];then exit 0;fi
touch $lock
/usr/share/nginx/www/console core:archive --force-periods=day
rm -f $lock
#sleep 30
#done
