#!/bin/bash

if [[ -n ~/.zshrc ]]; then
	rm -rf ~/.zshrc
	echo '.zshrc removed.'
else
	echo ".zshrc file  doesn't exist."
fi

if  [[ -d ~/.zsh ]]; then
	rm -rf ~/.zsh
	echo '.zsh directory removed.'
else
	echo ".zsh directory doesn't exist."
fi

if [[ -n ~/.vimrc ]]; then
	rm -rf ~/.vimrc
	echo '.vimrc removed.'
else
	echo ".virmc file doesn't exist."
fi

if [[ -n ~/.gitconfig ]]; then
    rm -rf ~/.gitconfig
    echo '.gitconfig removed.'
else
    echo ".gitconfig file doesn't exist."
fi
