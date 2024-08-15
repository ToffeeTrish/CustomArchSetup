#!/usr/bin/env bash

echo "Installing i3, bar utils, and dmenu..."
pacman -Syu --noconfirm i3-wm i3status i3blocks dmenu
#TODO config files


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

#enable ly
systemctl disable sddm.service
systemctl enable ly.service
