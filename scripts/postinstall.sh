#!/bin/sh

set -e
nix-channel --remove nixos
nix-channel --add http://nixos.org/channels/nixos-unstable nixos
nixos-rebuild switch --upgrade
nix-collect-garbage -d

