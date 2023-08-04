{ pkgs, ... }:

{
	imports = [ ./iceflakes.nix ];
	isoImage.squashfsCompression = "lz4";
}