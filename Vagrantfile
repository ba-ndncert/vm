# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "ba-ndncert-vm"
    vb.memory = 4096
    vb.cpus = 4
  end
  config.vm.provision "shell", path: "setup.sh", privileged: false
end
