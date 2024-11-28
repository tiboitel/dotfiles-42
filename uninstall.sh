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

# Check if ~/.vim/autoload directory exists and delete it
if [[ -d ~/.vim/autoload ]]; then
    rm -rf ~/.vim/autoload
    echo '.vim/autoload directory deleted.'
else
    echo ".vim/autoload directory doesn't exist."
fi

# Check if ~/.vim/plugged directory exists and delete it
if [[ -d ~/.vim/plugged ]]; then
    rm -rf ~/.vim/plugged
    echo '.vim/plugged directory deleted.'
else
    echo ".vim/plugged directory doesn't exist."
fi
