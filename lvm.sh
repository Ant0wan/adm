# Logical Volume Manager
sudo dnf install lvm2
sudo lvmdiskscan
sudo pvcreate /dev/sdc /dev/sdd
sudo pvs
sudo vgcreate my_volume /dev/sdc /dev/sdd
sudo pvcreate /dev/sde
sudo vgextend my_volume /dev/sde
sudo vgs
sudo vgreduce my_volume /dev/sde
sudo pvremove /dev/sde
sudo lvcreate --size 2G --name partition1 my_volume
sudo vgs
sudo lvcreate --size 6G --name partition2 my_volume
sudo lvs
sudo vgs
sudo lvresize --extents 100%VG my_volume/partition1
sudo lvresize --size 2G my_volume/partition1
sudo lvdisplay
sudo mkfs.xfs /dev/my_volume/partition1
sudo lvresize --resizefs --size 3G my_volume/partition1   # Not all file system can shrink in size
