#!/bin/bash
echo "[INSTALL] This instalation is arch linux (pacman) only"
read -p "[INSTALL] Do u want to update the system (Y/n): " confirm

if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
    sudo pacman -Syu
fi

read -p "[INSTALL] Do u want to install basic programs (required most of them required for the configs)? (Y/n): " confirm
if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
    sudo pacman --needed -S xorg i3 i3status rofi alacritty \
        stow mpv git ttf-iosevka-nerd neovim \
        zip unzip make gcc firefox fastfetch htop btop \
        man-db man-pages ripgrep xorg-xinit npm tree copyq
fi

read -p "[INSTALL] Do u want to make the symbolic links with stow? (Y/n): " confirm
if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
    read -p "[INSTALL] Do u want to remove the current configs (gnu stow will fail if the file already exists)? (Y/n): " confirm
    if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
        rm -rf ~/.bashrc \
            ~/.config/i3 \
            ~/.config/i3status \
            ~/.config/alacritty \
            ~/.config/nvim \
            ~/.config/rofi \
            ~/.xinitrc
    fi
    stow bash i3 i3status alacritty nvim rofi xinit
fi
