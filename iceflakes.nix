{ config, pkgs, ... }:
{
	imports = [
		<nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-graphical-calamares-plasma5.nix>
		<nixpkgs/nixos/modules/installer/cd-dvd/channel.nix>
	];
	environment.systemPackages = [
		pkgs.doas
		pkgs.nftables
	];
	environment.defaultPackages = with pkgs; [
		# CLI utilities
		netcat
		openssh
		psmisc
		pv
		socat
		zsh
		# Compression and decompression
		brotli
		bzip2
		lbzip2
		lzip
		pigz
		plzip
		unzip
		zip
		zopfli
		# Network debugging
		dig
		stuntman
		tcptraceroute
		# Fonts
		manrope
		# Graphical app installation
		flatpak
		# Media entertainment
		#lollypop
		vlc
		# Media manipulation
		audacity
		easytag
		ffmpeg
		imagemagick
		sonic-visualiser
		# Security utilities
		keepassxc
		macchanger
		veracrypt
		# Instant messaging
		cinny-desktop
		dino
		# Screen capturing
		flameshot
		peek
		simplescreenrecorder
		# Download
		qbittorrent
		uget
		# IME
		ibus-engines.mozc
		ibus-engines.rime
	];
}