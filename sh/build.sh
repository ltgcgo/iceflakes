#!/bin/bash
NIXPKGS_ALLOW_UNFREE=1
nix-build '<nixpkgs/nixos>' -A config.system.build.isoImage -I nixos-config=iceflakes.nix
exit