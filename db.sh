# MariaDB
sudo dnf install mariadb-server
sudo systemctl enable --now mariadb
sudo firewall-cmd --add-service=mysql
sudo firewall-cmd --add-service=mysql --permanent
#mysql -u root
#exit
mysql_secure_installation
cat /etc/my.cnf
sudo cat /etc/my.cnf.d/mariadb-server.conf
#datadir=/var/lib/mysql    # path db is stored
#datadir=/mnt/HugeStorage
#bind-address=0.0.0.0      # listen from any ip
#bind-address=10.0.0.5     # only accept from internal network

# MySQL
sudo cat /etc/my.cnf.d/mysql-server.cnf
