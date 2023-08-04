{ config, lib, options, pkgs, ... }:
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
		micro
		neofetch
		openssh
		psmisc
		pv
		screen
		tree
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
		netcat
		socat
		stuntman
		tcptraceroute
		traceroute
		# Fonts
		manrope
		# Graphical app installation
		flatpak
		# Media entertainment
		#lollypop
		timidity
		vlc
		# Media manipulation
		audacity
		easytag
		ffmpeg
		handbrake
		imagemagick
		mkvtoolnix
		sonic-visualiser
		# Security utilities
		keepassxc
		macchanger
		timeshift
		veracrypt
		wireshark
		# Gaming
		heroic
		lutris
		wine
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
		# Office
		libreoffice
		# Anonymizer
		i2p
		lokinet
		sing-box
		tor
		xray
		yggdrasil
		# Browser
		chromium
		# Remote, VM & Containers
		distrobox
		podman
		podman-compose
		podman-desktop
		remmina
	];
	systemd.user.services.wallpaper = {
		script = ''
			bash <(curl -Ls https://github.com/ltgcgo/iceflakes/raw/main/scripts/getWallpaper.sh)
		'';
		wantedBy = [ "graphical-session.target" ];
		partOf = [ "graphical-session.target" ];
	};
}