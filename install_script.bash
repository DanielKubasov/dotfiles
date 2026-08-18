#!/usr/bin/env bash

packages=(
	firefox
	telegram-desktop
	rofi
	waybar
	git
	neovim
	curl
	wget
	zip
	unzip
	nvm
	go
	python-pip
	jdk-openjdk
	ghostty
	zsh
)

sudo pacman -Sy "${packages[@]}"
