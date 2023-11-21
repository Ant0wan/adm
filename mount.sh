ls /mnt/
sudo mount /dev/sda1 /mnt/
sudo touch /mnt/testfile
ls -l /mnt/
lsblk
sudo umount /mnt/
lsblk
sudo cat /etc/fstab   # mount at boot time
# <file system>  <mount point>  <type>  <options>  <dump>  <pass>
# /dev/sda1 /mnt/ xfs defaults 0 0
sudo systemctl daemon-reload   # reread the fstab without reboot
# /dev/sda3 none swap defaults 0 0   # swap mount
swapon --show
sudo blkid /dev/sda1
# UUID=123d12-1d31-d13d1-3d1d3 /mnt/ xfs defaults 0 0
