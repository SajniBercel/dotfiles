#!/bin/bash
echo "[INSTALL] This instalation is arch linux (pacman) only"
read -p "[INSTALL] Do u want to update the system (Y/n): " confirm

if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
    sudo pacman -Syu
fi

read -p "[INSTALL] Do u want to install basic programs (required most of them required for the configs)? (Y/n): " confirm
if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
    sudo pacman --needed -S xorg i3 i3status rofi alacritty \
        stow mpv openssh git ttf-iosevka-nerd nvim \
        zip unzip make gcc firefox fastfetch htop  \
        btop man mc ripgrep xorg-xinit ffmpeg npm tree
fi

read -p "[INSTALL] Do u want to make the symlinks with stow? (Y/n): " confirm
if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
    read -p "[INSTALL] Do u want to remove the current configs (gnu stow will fail if the file already exists)? (Y/n): " confirm
    if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
        rm -f ~/.bashrc \
            ~/.config/i3 \
            ~/.config/i3status \
            ~/.config/alacritty \
            ~/.config/nvim \
            ~/.config/rofi \
            ~/.xinitrc
    fi
    stow alacritty
    stow bash
    stow i3
    stow i3status
    stow nvim
    stow rofi
    stow xinit
fi
