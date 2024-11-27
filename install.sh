#!/bin/bash

if ! [[ -f ~/.zshrc ]]; then
	ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
	source ~/.zshrc > /dev/null 2>&1
    echo '.zshrc installed.'
else
	echo '.zshrc already installed.'
fi

if ! [[ -d ~/.zsh ]]; then
	mkdir ~/.zsh
	cp ./git/git_prompt.sh ~/.zsh/git_prompt.sh
	chmod +x ~/.zsh/git_prompt.sh
    echo '.zsh directory created.'
else
	echo '.zsh directory already exist.'
fi

if ! [[ -f ~/.vimrc ]]; then
	ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
    echo '.vimrc installed.'
else
	echo '.virmc already installed.'
fi

if ! [[ -f ~/.gitconfig ]]; then
    ln -s ~/.dotfiles/git/gitconfig  ~/.gitconfig
    echo '.gitconfig installed.'
else
    echo '.gitconfig already installed.'
fi
