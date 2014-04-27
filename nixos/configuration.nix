{ config, pkgs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./guest.nix
        ./users.nix
        ./vagrant.nix
        ];


    environment.systemPackages = with pkgs; [
        git
        vim
        python2.7
        ];

    services = {
        httpd = {
            enable = true;
            hostName = "localhost";
            adminAddr = "vrabec.matej@gmail.com";
            documentRoot = "/home/vagrant/www/";
            enableUserDir = true;
        };
    };

    networking.firewall.enable = false;

}

