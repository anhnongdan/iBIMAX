#!/bin/sh
#install geo
console=/usr/share/nginx/www/console
geo(){
	cd /usr/share/nginx/www/misc
	curl http://113.171.23.19/bimax/analytics/geo.tar.gz -o geo.tar.gz
	tar xvzf geo.tar.gz
}
pm2(){
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash 
	nvm install v4.5.0
	npm install -g pm2
}
job_mon(){
	$console queuedtracking:monitor	
}
process(){
	pm2 start /usr/share/nginx/www/process.sh -xf -i 16 --restart-delay 1000
}
cron(){
	cp -f /usr/share/nginx/www/archive_hourly.sh /etc/cron.hourly/
}
$@
