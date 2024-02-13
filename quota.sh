sudo dnf install quota
sudo vim /etc/fstab
# /dev/vdb1 /mybackup xfs defaults,usrquota,grpquota 0 2
systemctl reboot
sudo quotacheck --create-files --user --group /dev/vdb2
sudo quotaon /mnt/
sudo mkdir /mybackup/aaron
sudo chown aaron:aaron /mybackups/aaron
fallocate --length 100M /mybackups/aaron/100Mfile
sudo edquota --user aaron
