lsblk       # part
sudo fdisk --list /dev/sda
sudo fdisk --list /dev/nvme0n1
sudo cfdisk /dev/nvme0n1       # interactive
# GUID Partition Tables   GPT vs MBR(old)==DOS

# Swap
swapon --show
lsblk
sudo mkswap /dev/vdb3
sudo swapon --verbose /dev/sdb3
sudo swapoff /dev/vdb3
sudo dd if=/dev/zero of=/swap bs=1M count=128 ststus=progress
sudo chmod 600 /swap
sudo mkswap /swap
sudo swapon --verbose /swap
swapon --show
