# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2010"

  # Specify the provider as libvirt (KVM/QEMU)
  config.vm.provider "libvirt" do |libvirt|
    libvirt.memory = 1024
    libvirt.cpus = 2
  end

  config.vm.network "private_network", type: "dhcp"

  # Optional provisioning steps
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    # Additional provisioning steps can be added here
  SHELL
end

