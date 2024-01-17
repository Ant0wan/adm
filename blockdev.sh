# Network Block Devices
# # /dev/nbd0 server_1 -> /dev/vdb server_2
# NBD Server -> NBD Client
sudo apt install nbd-server
lsblk
cat /etc/nbd-server/config
# [generic]
#    #user = nbd
#    #group = nbd
#    includedir = /etc/nbd-server/conf.d
#    allowlist = true
# [partition1]
#   exportname = /dev/vda1
sudo systemctl restart nbd-server.service
man 5 nbd-server

sudo apt install nbd-client
sudo modprobe nbd
sudo tee --append /etc/modules-load.d/modules.conf <<< "
nbd
"
sudo nbd-client 161.35.112.8 -N partition1
# or sudo nbd-client "remoteserverhostname" -N partition1
sudo mount /dev/nbd0 /mnt
ls /mnt  # see all remote files from nbd-server

# Disconnect nbd
sudo umount /mnt
sudo nbd-client -d /dev/nbd0
lsblk

# Lis nbd
sudo nbd-client 161.35.112.8 -L
