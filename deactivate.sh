enable="Bandwidth Provider UsersManager Actions Referrers UserLanguage DevicesDetection UserCountry VisitTime VisitorInterest"
disable="ScheduledReports SEO ExampleAPI ExampleRssWidget \
	Feedback MobileMessaging Heartbeat ProfessionalServices \
	UserId ExamplePlugin Goals Ecommerce Events CustomVariables Resolution Contents"
console=/usr/share/nginx/www/console
for p in $disable;do $console plugin:deactivate $p ;done
for p in $enable;do $console plugin:activate $p ;done
