# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "nixos"
    config.vm.provider "virtualbox" do |v| 
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    #config.vm.network :forwarded_port, guest: 80, host: 10000
    #config.vm.provision :shell, :path => "bootstrap.sh"
    config.vm.network "private_network", ip: "192.168.50.101"
end
