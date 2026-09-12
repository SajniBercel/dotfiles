#!/bin/bash
echo "[INSTALL] This instalation is arch linux (pacman) only"
read -p "[INSTALL] Do u want to update the system (Y/n): " confirm

if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
    yes | sudo pacman -Syu
fi

read -p "[INSTALL] Do u want to install basic programs (required most of them required for the configs)? (Y/n): " confirm
if [[ "$confirm" =~ ^([Yy][Ee][Ss]|[Yy])$ || -z "$confirm" ]]; then
    yes | sudo pacman --needed -S xorg i3 rofi alacritty xwallpaper \
        stow mpv git ttf-iosevka-nerd neovim maim xclip \
        zip unzip make gcc firefox fastfetch htop btop  \
        man-db man-pages ripgrep xorg-xinit npm tree copyq \ 
        polybar wget
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
            ~/.xinitrc \
            ~/.config/picom \
            ~/.config/polybar
    fi
    stow bash i3 polybar alacritty nvim rofi xinit picom mc-tokyonight
    mkdir ~/Files
    mkdir ~/Files/Pictures
    mkdir ~/Files/Videos
    mkdir ~/Files/Documents
    wget https://repository-images.githubusercontent.com/356367080/35485400-99f2-11eb-90ad-0dbd618410db -o ~/User/Pictures/ArchWallpaper.png
fi
