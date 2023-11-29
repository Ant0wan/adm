# NTP
# systemd-timesyncd
timedatectl list-timezones
sudo timedatectl set-timezone America/Guadeloupe
timedatectl
sudo apt install systemd-timesyncd
timedatectl set-ntp true
sudo systemctl status systemd-timesync.service
cat /etc/systemd/timesyncd.conf
#NTP=0.us.pool.ntp.org 1.us.pool.ntp.org 2.us.pool.ntp.org 3.us.pool.ntp.org
sudo systemctl restart systemd-timesyncd
timedatectl show-timesync
timedatectl timesync-status
