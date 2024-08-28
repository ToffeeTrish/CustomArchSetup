#!/usr/bin/env bash

echo "Installing i3, bar utils, and dmenu..."
pacman -Syu --noconfirm i3-wm i3status i3blocks dmenu

echo "Installing Terminal"
pacman -Syu --noconfirm kitty

#backlight dependencies
pacman -Syu --noconfirm xorg-xbacklight xorg-xset acpilight 

#cpu_usage dependencies
pacman -Syu --noconfirm mpstat

#battery2 dependencies
pacman -Syu --noconfirm ttf-font-awesome acpi python

#time
pacman -Syu --noconfirm perl

echo "Installing Dunst..."
pacman -Syu --noconfirm dunst

echo "Installing Nautilus"
pacman -Syu --noconfirm nautilus

echo "Installing Gestures"
pacman -Syu --noconfirm libinput-gestures

echo "Installing Ly"
pacman -Syu --noconfirm ly

echo "Installing Hyfetch"
pacman -Syu --noconfirm hyfetch fastfetch

pacman -syu --noconfirm rofi

#enable ly
systemctl enable ly.service --now
