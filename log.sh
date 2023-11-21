# Err and Access Log for httpd
sudo cat /etc/httpd/conf/httpd.conf
#ServerRoot "/etc/httpd"
#ErrorLog "logs/error_log"   # stored in /etc/httpd/logs/error_log but symlink
#ErrorLog "/var/log/httpd/errors2.log"
#LogLevel warn
#<IfModule log_config_module>
#	LogFormat .... combined
#	LogFormat .... common     # define a log format
#</IfModule>
sudo cat /var/log/httpd/access_log

cat /etc/httpd/conf.d/two-websites.conf
# <VirtualHost *:80>    # first declared is the default
#	ServerName store.example.com
#	DocumentRoot /var/www/store/
#	CustomLog /var/log/httpd/store.example.com_access.log combined
#	ErrorLog /var/log/httpd/store.example.com_error.log
# </VirtualHost>
sudo systemctl reload httpd.service
