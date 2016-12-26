#!/bin/sh
sed "s/__PORT__/$PORT/g" /usr/share/nginx/www/nginx/nginx-site.conf > /etc/nginx/conf.d/bimax.conf
sed -i "s/__HHVM_PORT__/$HHVM_PORT/g" /etc/nginx/conf.d/bimax.conf
sed  "s/__DB_HOST__/$DB_HOST/g" /usr/share/nginx/www/phpMyAdmin/config.inc.php.orig > /usr/share/nginx/www/phpMyAdmin/config.inc.php
sed -i "s/__DB_PORT__/$DB_PORT/g" /usr/share/nginx/www/phpMyAdmin/config.inc.php
sed  "s/__DB_HOST__/$DB_HOST/g" /usr/share/nginx/www/config/config.ini.php.orig > /usr/share/nginx/www/config/config.ini.php
sed -i "s/__DB_USER__/$DB_USER/g" /usr/share/nginx/www/config/config.ini.php
sed -i "s/__DB_DATABASE__/$DB_DATABASE/g" /usr/share/nginx/www/config/config.ini.php
sed -i "s/__DB_PASS__/$DB_PASS/g" /usr/share/nginx/www/config/config.ini.php
sed -i "s/__DB_PORT__/$DB_PORT/g" /usr/share/nginx/www/config/config.ini.php
sed -i "s/__REDIS_PORT__/$REDIS_PORT/g" /usr/share/nginx/www/config/config.ini.php
( 
(sleep 3;ps -ef |grep -v grep | grep mysql > /dev/null;
while [ $? -ne 1 ];do echo "wait mysql online";sleep 1;ps -ef |grep -v grep | grep mysql > /dev/null;done ;\
/usr/share/nginx/www/deactivate.sh ; /usr/share/nginx/www/console core:update --yes )&
