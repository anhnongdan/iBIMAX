#!/bin/sh
redis=/usr/bin/redis-cli -p $REDIS_PORT
console=/usr/share/nginx/www/console
get_step() {
	val=`echo -e 'select 1\nget STEP' | $redis`
	if [ -z "$val" ];then echo 0;fi
	
}
set_step() {
	val=$1
	if [ -n "$val" ];then
		echo -e "select 1\nset STEP $val" | $redis
	fi
}
run_each(){
	old=$1
	new=$2
	shift 2
	while true;do
		val=`get_step`
		if [ $val -eq $old ];then
			$@
			set_step $new
			break
		else
			sleep 10
		fi
	done
}
unlock(){
	run_each 0 1 $console config:set --section=QueuedTracking --key=processDuringTrackingRequest --value=1
}
lock(){
	run_each 1 1 $console config:set --section=QueuedTracking --key=processDuringTrackingRequest --value=0
}
main(){
	lock
	
}
if [ $# -eq 0 ];then
	main
else
	$@
fi
