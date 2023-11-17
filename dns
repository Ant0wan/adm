sudo dnf install bind bind-utils
man named.conf
ip address
cat /etc/named.conf
# listen-on port 53 { 127.0.0.1 };
# listen-on port 53 { 127.0.0.1; 192.168.0.17 };
# listen-on port 53 { any };
# allow-query { localhost; };
# allow-query { localhost; 192.168.0.0/24 };
# allow-query { any; };
# recursion yes;
sudo systemctl enable --now named.service
sudo firewall-cmd --add-service=dns
sudo firewall-cmd --add-service=dns --permanent
dig @127.0.0.1 google.com   # dig @localhost google.com

# Add zone
sudo tee --append /etc/named.conf <<< "
zone "example.com" IN {
	type master;
	file "example.com.zone";
};
"
sudo ls /var/named/
sudo cp --preserve=ownership /var/named/named.localhost /var/named/example.com.zone
#$TTL 1H
#example.com.	A	203.0.113.30
#@	IN SOA	@ administrateur.example.com. (
