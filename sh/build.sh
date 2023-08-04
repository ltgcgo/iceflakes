#!/bin/bash
export NIXPKGS_ALLOW_UNFREE=1
export NIXPKGS_ALLOW_INSECURE=1
nix-build '<nixpkgs/nixos>' -A config.system.build.isoImage -I nixos-config=iceflakes.nix
exit