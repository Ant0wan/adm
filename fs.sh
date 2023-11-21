man mkfs
man mkfs.xfs
mkfs.xfs
sudo mkfs.xfs /dev/sda1
sudo mkfs.xfs -i size=512 /dev/sda1 -L "ArchiveVolume"
# xfs_*
sudo xfs_admin -l /dev/sda1
sudo xfs_admin -L "FirstFS" /dev/sda1

# mkfs.ext4 == mke2fs
man mkfs.ext4
sudo mkfs.ext4 /dev/sda2 -L "BackupVolume"
sudo mkfs.ext4 -L "BackupVolume" -N 500000 /dev/sda2
sudo tune2fs -l /dev/sda2
sudo tune2fs -L "SecondFS" /dev/sda2

findmnt
findmnt --type xfs,ext4
sudo mount --options ro /dev/sda1 /mnt
sudo umount /mnt
sudo mount --options ro,noexec,nosuid /dev/sda1 /mnt
sudo mount --options remount,rw,noexec,nosuid /dev/sda1 /mnt
sudo umount /mnt
sudo mount --options allocasize=32K /dev/sda2 /mybackups  # xfs specific option: allocsize
sudo cat /etc/fstab
# /dev/sda2 /mybackups xfs ro,noexec 0 2
