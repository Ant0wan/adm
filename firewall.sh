# Packet filtering
# UFW
sudo ufw status
sudo ufw allow 22
sudo ufw allow 22/tcp
sudo ufw enable
sudo ufw status verbose

ss --tcp --numeric
sudo ufw allow from '192.168.1.60' to any port 22

sudo ufw status numbered   # applied top down
sudo ufw delete 1

sudo ufw allow 22
sudo ufw delete allow 22

sudo ufw allow from '10.11.12.0/24' to any port 22
sudo ufw allow from '10.11.12.0/24'
sudo ufw deny from '10.11.12.100'
sudo ufw insert 3 deny from '10.11.100'

ping -c 4 '8.8.8.8'
sudo ufw deny out on enp0s3 '8.8.8.8'   # outbound to ip

sudo ufw allow in on enp0s3 from '192.168.1.60' to '192.168.1.81' port 80 proto tcp
sudo ufw allow out on enp0s3 from '192.168.1.81' to '192.168.1.60' port 80 proto tcp

# Firewalld
# Zones: drop, trusted, public
# Default: public
firewall-cmd --get-default-zone
firewall-cmd --set-default-zone=public
firewall-cmd --list-all
firewall-cmd --info-service=cockpit

sudo firewall-cmd --add-service=http # or sudo firewall-cnd --add-port=80/tcp
sudo firewall-cmd --remove-service=http # or sudo firewall-cnd --remove-port=80/tcp
sudo firewall-cmd --add-source='10.11.12.0/24' --zone=trusted
firewall-cmd --get-active-zone
sudo firewall-cmd --remove-source='10.11.12.0/24' --zone=trusted
sudo firewall-cmd --runtime-to-permanent   # make rules permanent
sudo firewall-cmd --add-port=1234/tcp --permanent   # does not make it active in current session
