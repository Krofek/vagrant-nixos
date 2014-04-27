Vagrant-nixos
============

The scripts are based on [oxdi/nixos](https://github.com/oxdi/nixos):

Still a work in progress...

As it stands at the moment, the configuration is set to use a private network, so that the Host can reach the Guest and NAT for the Guest to reach the outside and to SSH to it with Vagrant (the default vagrant method):

There are some options commented in the Vagrantfile, check them out.

Also, the VM is set to sync the "nixos/" folder in the vagrant-nixos location with the Guest's "/etc/nixos/" so that you can edit the configuration.nix and other conf files from the Host machine. Comment it out in Vagrantfile if you don't want that.

The nixos configuration file is set to install a few basic things (vim, git, python, more to be added...) and an example for running a basic apache httpd service.


Setting up the box:
------------------


```bash
vagrant plugin install vagrant-nixos
```

```bash
packer build nixos.json
```

```bash
vagrant box add nixos nixos-virtualbox.box
```

```bash
vagrant up
```
