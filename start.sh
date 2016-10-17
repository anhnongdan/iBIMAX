#!/bin/sh
enable="Actions Referrers UserLanguage DevicesDetection UserCountry VisitTime VisitorInterest Provider Bandwidth"
disable="MobileMessaging Heartbeat DBStats ExampleAPI ExampleRssWidget Feedback ScheduledReports ProfessionalServices UserId ExamplePlugin Goals Ecommerce Events CustomVariables Resolution Contents SEO"
console=/usr/share/nginx/www/console
for p in $disable;do $console plugin:deactivate $p ;done
for p in $enable;do $console plugin:activate $p ;done
/usr/share/nginx/www/console core:update --yes
