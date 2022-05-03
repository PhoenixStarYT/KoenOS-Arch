#!/bin/bash

# Update and install base Packages
sudo pacman -Syu 
sudo pacman --noconfirm -S awesome
sudo pacman --noconfirm -S git
sudo pacman --noconfirm -S kitty
sudo pacman --noconfirm -S thunar
sudo pacman --noconfirm -S nitrogen
sudo pacman --noconfirm -S variety
sudo pacman --noconfirm -S lxappearance
sudo pacman --noconfirm -S pulseaudio
sudo pacman --noconfirm -S pavucontrol

#Install Paru AUR Helper
sudo pacman --noconfirm -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

#Theming & Fonts
paru --noconfirm -S xfce-theme-greybird
#Setup all config files
