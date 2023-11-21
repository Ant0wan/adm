sudo dnf install httpd
sudo firewall-cmd --add-service=http
sudo firewall-cmd --add-service=https
sudo firewall-cmd --runtime-to-permanent
sudo dnf install mod_ssl
sudo systemctl enable --now httpd
man httpd.conf

ls /etc/httpd/
cat /etc/httpd/conf/httpd.conf
# Listen 10.11.12.8:8080
# ServerAdmin webserver@example.com
# ServerName www.example.com:80
DocumentRoot "/var/www/html"

ls /etc/httpd/conf.d/
cat /etc/httpd/conf.d/two-websites.conf
# <VirtualHost *:80>    # first declared is the default
#	ServerName store.example.com
#	DocumentRoot /var/www/store/
# </VirtualHost>
# <VirtualHost *:80>
#	ServerName blog.example.com
#	DOcumentRoot /var/www/blog/
# </VirtualHost>
# <VirtualHost 10.11.12.9:80> ...
# <VirtualHost 203.0.223.5:80> ...
apachectl conftest
sudo mkdir -p /var/www/{store,blog}
sudo tee --append /var/wwww/store/index.html <<< "Hello world !"
sudo tee --append /var/wwww/blog/index.html <<< "Hello world !"
sudo systemctl reload httpd.service

sudo cat /etc/httpd/conf.d/ssl.conf
# Listen 443 https
sudo cat /etc/httpd/conf.d/ssl.conf
#<VirtualHost *:443>
#	ServerName www.example.com
#	SSLEngine on
#	SSLCertificate "/path/to/file.cert"
#	SSLCertificateKeyFile "/path/to/file.key"
#</VirtualHost>
sudo systemctl reload httpd.service

ls /etc/httpd/conf.modules.d/
sudo cat /etc/httpd/conf.modules.d/00-mpm.conf
#LoadModule mpm_prefork_module modules/mod_mpm_prefork.so
#LoadModule mpm_event_module modules/mod_mpm_event.so
sudo systemctl reload httpd.service
sudo cat /etc/httpd/conf.modules.d/00-optional.conf
#LoadModules ...
sudo cat /etc/httpd/conf.modules.d/00-base.conf

sudo mv /etc/httpd/conf.d/two-websites.conf /etc/httpd/conf.d/two-websites.conf.disabled
sudo systemctl reload httpd.service
sudo cat /etc/httpd/conf/httpd.conf
#<Directory "/var/www/html">
#	Options Indexes FollowSymLinks
#	Options FollowSymLinks
#	AllowOveride All
#	Require all granted
#</Directory>
#<Directory "/var/www/html/website1">
#	Require all denied
#</Directory>
#<Directory "/var/www/html/website2">
#	Require ip 192.168.1.79 203.0.1.113
#	Require ip 192.168.0.1/8
#	Require ip 192.168.1
#	Require ip 10.
#</Directory>
#<Files ".ht*">
#	Require all denied
#</Files>
sudo htpasswd -c /etc/httpd/passwords aaron
sudo htpasswd /etc/httpd/passwords john
sudo cat /etc/httpd/passwords
sudo htpasswd -D /etc/httpd/passwords john
#<Directory .../admin >
#	AuthType Basic
# 	AuthBasicProvider file
#	AuthName "Secret admin page"
#	AuthUserFile /etc/httpd/passwords
#	Require valid-user
sudo systemctl reload httpd.service
# .../admin will prompt login panel
