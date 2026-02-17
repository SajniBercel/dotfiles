#!/bin/bash
sudo pacman -Syu
sudo pacman --needed -S xorg i3 rofi alacritty \
    stow mpv openssh git ttf-iosevka-nerd nvim \
    zip unzip make gcc firefox fastfetch htop  \
    btop man mc ripgrep xorg-xinit ffmpeg
