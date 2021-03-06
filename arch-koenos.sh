#!/bin/bash

#Welcome
echo -ne "

██████╗ ███████╗██╗   ██╗████████╗
██╔══██╗██╔════╝╚██╗ ██╔╝╚══██╔══╝
██████╔╝███████╗ ╚████╔╝    ██║
██╔═══╝ ╚════██║  ╚██╔╝     ██║
██║     ███████║   ██║      ██║
╚═╝     ╚══════╝   ╚═╝      ╚═╝

██╗  ██╗ ██████╗ ███████╗███╗   ██╗ ██████╗ ███████╗
██║ ██╔╝██╔═══██╗██╔════╝████╗  ██║██╔═══██╗██╔════╝
█████╔╝ ██║   ██║█████╗  ██╔██╗ ██║██║   ██║███████╗
██╔═██╗ ██║   ██║██╔══╝  ██║╚██╗██║██║   ██║╚════██║
██║  ██╗╚██████╔╝███████╗██║ ╚████║╚██████╔╝███████║
╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝
"

#Paru AUR Helper
sudo pacman --noconfirm -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

#Update and install base Packages
sudo pacman --noconfirm -Syu 
sudo pacman --noconfirm -S neofetch
sudo pacman --noconfirm -S htop
sudo pacman --noconfirm -S awesome
sudo pacman --noconfirm -S git
sudo pacman --noconfirm -S kitty

#Install Desktop apps
sudo pacman --noconfirm -S thunar
sudo pacman --noconfirm -S nitrogen
sudo pacman --noconfirm -S variety
sudo pacman --noconfirm -S lxappearance
sudo pacman --noconfirm -S pulseaudio
sudo pacman --noconfirm -S pavucontrol
sudo pacman --noconfirm -S sddm
sudo pacman --noconfirm -S rofi

#Setup SDDM
systemctl enable sddm

#Theming & Fonts
paru --noconfirm -S xfce-theme-greybird
mkdir /.fonts
mkdir /.config
mv ~/koenos-arch/fonts/* ~/.fonts
mv ~/koenos-arch/dotconfig/* ~/.config
mv ~/koenos-arch/.bashrc
