#!/usr/bin/env bash

# TODO
# 1. Install yay
# 2. Install VSCode

packages=(
	# Applications
	
	firefox
	telegram-desktop

	# Utilities

	blueman
	btop
	pavucontrol
	brightnessctl
	curl
	wget
	zip
	unzip
	debugedit
	fakeroot
	make
	gcc

	# UI
	
	rofi
	waybar
	hyprpaper
	hyprlock

	# Programming
	
	git
	neovim
	nvm
	go
	python-pip
	jdk-openjdk

	# Terminal
	
	ghostty
	zsh
	fzf

	# Fonts
	
	ttf-nerd-fonts-symbols-common
	otf-font-awesome
	ttf-jetbrains-mono
)

sudo pacman -Syu "${packages[@]}"
