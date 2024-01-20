# Ecrypted Storage
#  Plain
sudo cryptsetup --verify-passphrase open --type plain /dev/vde mysecuredisk
sudo mkfs.xfs /dev/mapper/mysecuredisk
sudo mount /dev/mapper/mysecuredisk /mnt   # Security issue, as mapper/mysecuredisk is accessible for read
sudo umount /mnt
sudo cryptsetup close mysecuredisk
#  LUKS
sudo cryptsetup luksFormat /dev/vde
sudo cyptsetup luksChangeKey /dev/vde
sudo cyptsetup open /dev/vde mysecuredisk
sudo mkfs.xfs /dev/mapper/mysecuredisk
sudo cryptsetup close mysecuredisk
# Use case
# +------------+-----------------+-----------------+
# | partition  |   /dev/vde1     |   /dev/vde2     |
# +------------+-----------------+-----------------+
# | mount      |   /os           |   /home         |
# +------------+-----------------+-----------------+
# | type       |   unencrypted   |   encrypted     |
# +------------+-----------------+-----------------+
sudo cryptsetup luksFormat /dev/vde2
sudo cyptsetup open /dev/vde2 mysecuredisk
sudo cryptsetup --verify-passphrase open --type plain /dev/vd2 mysecuredisk
