# comment placeholder :P
#

Vagrant.configure("2") do |config|
    config.vm.box = "nixos"

    #added because sometimes the guest can't reach the outside
    config.vm.provider "virtualbox" do |v| 
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    #uncomment and edit if you want port forwarding instead of a private network
    #config.vm.network :forwarded_port, guest: 80, host: 10000

    #uncomment for provisioning
    #config.vm.provision :shell, :path => "bootstrap.sh"

    #host only network ("private_network", type: :dhcp)
    config.vm.network "private_network", ip: "192.168.50.101"

    #sync configuration folder, comment if you don't want it:
    config.vm.synced_folder "nixos/", "/etc/nixos"
end
