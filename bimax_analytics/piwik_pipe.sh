#!/bin/sh
import=/home/tony/bimax_docker/pw1/www/bimax_analytics/ 
pw=/home/tony/bimax_docker/pw1/www/
ilogs=$import/import_logs.py
tk=58b4c4b1bde5d7dad865c2d8f255ef08
opt=""

#use newer double bracket to avoid parameter parsing problem
#if [ $1 -eq 1 ];then
#fi
exec python $ilogs \
 --token-auth=$tk \
 --config=$pw/config/config.ini.php \
 --url=http://localhost/ --add-sites-new-hosts \
 --recorders=32 --recorder-max-payload-size=100 --enable-http-errors --enable-http-redirects --enable-static --enable-bots \
 --log-format-name=nginx_json -
 #--debug
