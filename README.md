Vagrant-nixos
============

The scripts are based on [oxdi/nixos](https://github.com/oxdi/nixos) scripts:

Still work in progress...

As it stands at the moment, the configuration is set to use a private network, so that the Host can reach the Guest and NAT for the Guest to reach the outside and to SSH with Vagrant (the default vagrant method):

There are some options commented in the Vagrantfile, check them out.

Also the VM is set to sync the "nixos/" relative folder path in the vagrant-nixos location with the Guest's "/etc/nixos/" so that you can edit the configuration.nix and other conf files from the Host machine.


Setting up the box:
____________


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
