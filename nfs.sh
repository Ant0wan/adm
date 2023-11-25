# On Demand Mounting
sudo dnf install autofs
sudo systemctl enable --now autofs.service
sudo dnf install nfs-utils
sudo systemctl enable --now nfs-server.service
sudo cat /etc/exports
# /etc 127.0.0.1(ro)
sudo systemctl reload nfs-server.service
sudo cat /etc/auto.master
# /shares/ /etc/auto.shares --timeout=400
sudo cat /etc/auto.shares
# mynetworkshare -fstype=auto,ro 127.0.0.1:/etc
# mynetworkshare -fstype=auto,ro nfs1.example.com:/etc
# myext4files -fstype=auto :/dev/sda2
sudo systemctl reload autofs
ls /shares/
ls /shares/mynetworkshare/

sudo cat /etc/auto.master
#/ /etc/auto.shares --timeout=400
sudo cat /etc/auto.shares
#/mynetworkshare -fstype=auto 127.0.0.1:/etc
#/localfiles/myext4files -fstype=auto :/dev/sda2
sudo systemctl reload autofs
ls /mynetworkshare/
ls /localfiles/myext4files/

# Ubuntu NFS
sudo apt install nfs-kernel-server
sudo cat /etc/exports
sudo exportfs -r  #re-export
sudo exportfs -v  #show active shares
