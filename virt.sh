sudo apt install virt-manager -yq
wget https://cloud-images.ubuntu.com/jammy/20231027/jammy-server-cloudimg-amd64.img
qemu-img info jammy-server-cloudimg-amd64.img
qemu-img resize jammy-server-cloudimg-amd64.img 10G
# Default storage pool
ls /var/lib/libvirt/
sudo cp jammy-server-cloudimg-amd64.img /var/lib/libvirt/images/
virt-install --osinfo list
sudo virt-install --name myvm --osinfo ubuntu22.04 --import --memory 1024 --vcpus 1 --disk /var/lib/libvirt/images/jammy-server-cloudimg-amd64.img --graphics none
# Ctrl + ]
virsh list --all
sudo virsh shutdown myvm
sudo virsh undefine myvm
# Refresh img
sudo cp jammy-server-cloudimg-amd64.img /var/lib/libvirt/images/
# Cloudinit use
sudo virt-install --name myvm --osinfo ubuntu22.04 --import --memory 1024 --vcpus 1 --disk /var/lib/libvirt/images/jammy-server-cloudimg-amd64.img --graphics none --cloud-init root-password-generate=on
# df -h
# apt update
# logout
# Ctrl + ]
sudo virsh console myvm   # attach console
sudo virt-install --name myvm2 --osinfo detect=on --import --memory 1024 --vcpus 1 --disk /var/lib/libvirt/images/jammy-server-cloudimg-amd64.img --graphics none --cloud-init root-password-generate=on
sudo virt-install --name myvm3 --osinfo linux2022 --import --memory 1024 --vcpus 1 --disk /var/lib/libvirt/images/jammy-server-cloudimg-amd64.img --graphics none --cloud-init root-password-generate=on
