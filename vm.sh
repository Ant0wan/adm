sudo dnf install libvirt qemu-kvm -y
virsh define testmachine.xml
virsh help
virsh list --all
virsh start TestMachine
virsh reboot TestMachine
virsh reset TestMachine
virsh shutdown TestMachine
virsh destroy TestMachine   # poweroff
virsh undefine TestMachine  # remove the machine not data
virsh help undefine
virsh undefine --remove-all-storage TestMachine
virsh autostart TestMachine  # boot vm every machine boot
virsh autostart --disable TestMachine
virsh help setvcpus
virsh setvcpus TestMachine 2 --config --maximum
virsh dominfo TestMachine
virsh setvcpus TestMachine 2 --config  # need restart to apply
virsh setmaxmem TestMachine 2048M --config
