#!/bin/sh
log=/home/tony/bimax_docker/pw1/www/bimax_analytics/tmp/archive.log
console=/home/tony/bimax_docker/pw1/www/console
mysql="mysql -N -u tony -h localhost  -ptatthang piwik"
help(){
	echo "Please use the below fucntions: ";
	echo "archive_today";
	echo "archive";
	echo "pw_del_logs";
	echo "db_c";
	echo "pw_site_ls";
	echo "pw_site_reset";
	echo "pw_site_del";
	echo "pw_site_delall";
	echo "re_clean";
	echo "db_clean";
	echo "db_archive_clean";
	echo "clean";
	echo "queue";
	echo "pw_rotate_tracker";
	echo "pw_copy_tracker";
}
archive_today(){
       if [ -n "$1" ];then
       	opt="--force-idsites=$1"
       else 
	opt="--force-all-websites"
       fi
       idd=`echo "archive_today$@" | shasum | cut -d' ' -f1`  
       flock=/Users/ThangNguyen/www/piwikDev/log_importing/tmp/${idd}.lock
       
       log=/Users/ThangNguyen/www/piwikDev/log_importing/tmp/archive${1}.log
       if [ -f $flock ];then
		exit 0
       fi
       touch $flock	
       $console core:archive $opt --disable-scheduled-tasks --force-periods=day --concurrent-requests-per-website=32 --url=http://localhost/  >> $log
       rm -f $flock
}
archive(){
       if [ -n "$1" ];then
       	opt="--force-idsites=$1"
       else 
	opt="--force-all-websites"
       fi
       idd=`echo "archive_today$@" | shasum | cut -d' ' -f1`  
       flock=/Users/ThangNguyen/www/piwikDev/log_importing/tmp/${idd}.lock
       log=/Users/ThangNguyen/www/piwikDev/log_importing/tmp/archive${1}.log
       #flock=/tmp/53370bf320a8cce14925ebc7f7191b0daf6d6c1a.lock
       if [ -f $flock ];then
		exit 0
       fi
       touch $flock	
       $console core:archive  $opt  --force-all-periods=315576000 --force-date-last-n=1000  --concurrent-requests-per-website=32 --url=http://localhost/ >> $log
       rm -f $flock
}
pw_del_logs(){
        $console help core:delete-logs-data
}
db_c(){
	echo "SHOW STATUS WHERE variable_name = 'Threads_connected';" | $mysql
}
pw_site_ls(){
        echo "select idsite,main_url from piwik_site;" | $mysql
}
pw_site_reset(){
	echo "truncate piwik_site;" | $mysql
}
pw_site_del(){
        id=$1
        tmp=`mktemp`
        echo "DELETE FROM piwik_log_visit WHERE idsite = $id;" >> $tmp
        echo "DELETE FROM piwik_log_link_visit_action WHERE idsite = $id;" >> $tmp
        echo "DELETE FROM piwik_log_conversion WHERE idsite = $id; " >> $tmp
        echo "DELETE FROM piwik_log_conversion_item WHERE idsite = $id;" >> $tmp
   #     echo "DELETE FROM piwik_site WHERE idsite = $id;" >> $tmp
        $mysql < $tmp
        rm -f $tmp
}
pw_site_delall(){
        pw_site_ls | while read site url;do
                pw_site_del $site
        done
}
re_clean(){
        rd="redis-cli -s /tmp/redis.sock -n 0"
        echo 'keys *' | $rd | while read k;do echo "del $k" | $rd ;done
}
db_clean(){
        echo 'show tables;' | $mysql | grep piwik_archive_ | while read tb;do echo "drop table $tb;" | $mysql ;done
        echo 'show tables;' | $mysql | grep piwik_log_ | while read tb;do echo "truncate table $tb;" | $mysql ;done
}
db_archive_clean(){
        echo 'show tables;' | $mysql | grep piwik_archive_ | while read tb;do echo "drop table $tb;" | $mysql ;done
}
clean(){
        db_clean
	pw_site_delall
 	pw_site_reset
        re_clean
	mysql piwik < /Users/ThangNguyen/www/piwikDev/log_importing/piwik_site.sql
}
queue(){
        $console queuedtracking:$@
}
sp(){
	process=/Users/ThangNguyen/www/piwikDev/log_importing/process.sh
        n=$1
        if [ -z $n ];then
                n=16
        fi
         pm2 start $process -x -f -i $n --restart-delay 1000
}
so(){
         pm2 start /root/check_jobs.sh -x -f  --restart-delay 1000
         pm2 start /root/tool_archive.sh -x -f  --restart-delay 1000
}
pw_rotate_tracker(){
	maxid=$(echo 'select max(idlink_va) from piwik_log_link_visit_action_tracker;' | $mysql)
	maxid=`expr $maxid + 1`
	echo 'truncate table piwik_log_link_visit_action_tracker;' | $mysql
	echo "alter table piwik_log_link_visit_action_tracker AUTO_INCREMENT=$maxid;" | $mysql 
}
pw_copy_tracker(){
	echo "insert piwik_log_link_visit_action select * from piwik_log_link_visit_action_tracker;" | $mysql
}

$@

