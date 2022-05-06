#!/bin/bash

#Install Paru AUR Helper
sudo pacman --noconfirm -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# Update and install base Packages
sudo pacman --noconfirm -Syu 
sudo pacman --noconfirm -S neofetch
sudo pacman --noconfirm -S htop
sudo pacman --noconfirm -S awesome
sudo pacman --noconfirm -S git
sudo pacman --noconfirm -S kitty
sudo pacman --noconfirm -S thunar
sudo pacman --noconfirm -S nitrogen
sudo pacman --noconfirm -S variety
sudo pacman --noconfirm -S lxappearance
sudo pacman --noconfirm -S pulseaudio
sudo pacman --noconfirm -S pavucontrol
sudo pacman --noconfirm -S sddm
sudo pacman --noconfirm -S rofi

#Theming & Fonts
paru --noconfirm -S xfce-theme-greybird
mv ~/koenos-arch/fonts/* ~/.fonts
mv ~/koenos-arch/dotconfig/* ~/.config
rm ~/.bashrc
mv ~/koenos-arch/.bashrc ~/

#Setup SDDM
systemctl enable sddm
