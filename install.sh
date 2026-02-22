#!/bin/bash
echo "This instalation is arch linux (pacman) only"
read -p "Do u want to update the system (Y/n): " confirm

if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
    sudo pacman -Syu
fi

read -p "Do u want to install same basic programs? (Y/n): " confirm
if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
sudo pacman --needed -S xorg i3 i3status rofi alacritty \
    stow mpv openssh git ttf-iosevka-nerd nvim \
    zip unzip make gcc firefox fastfetch htop  \
    btop man mc ripgrep xorg-xinit ffmpeg
fi

read -p "Do u want to make the symlinks with stow? (Y/n): " confirm
if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
    echo "TODO"
fi
