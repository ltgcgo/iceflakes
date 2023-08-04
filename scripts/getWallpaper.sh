#!/bin/bash
# Create directory structure
cd ~nixos/.local/share
mkdir -p wallpapers
cd wallpapers
# Download Boo!
mkdir -p Boo
cd Boo
mkdir -p contents/images
curl -Lo metadata.json https://github.com/ltgcgo/iceflakes/raw/main/blob/ponyWallpaper/boo.json
curl -Lo contents/screenshot.png https://derpicdn.net/img/download/2019/4/18/2016135.png
cp -v contents/screenshot.png contents/images/6000x4758.png
cd ..
# Configure default wallpaper
cd ~nixos
mkdir -p .background-image
cd .background-image
ln -s ~nixos/.local/share/wallpapers/Boo
exit