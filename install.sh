#!/bin/bash

# Check if .zshrc exists and create symlink if not
if ! [[ -f ~/.zshrc ]]; then
        ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
        source ~/.zshrc > /dev/null 2>&1
    echo '.zshrc installed.'
else
        echo '.zshrc already installed.'
fi

# Check if ~/.zsh directory exists and create it if not
if ! [[ -d ~/.zsh ]]; then
        mkdir ~/.zsh
        ln -s ./git/git_prompt.sh ~/.zsh/git_prompt.sh
        chmod +x ~/.zsh/git_prompt.sh
        source ~/.zshrc
    echo '.zsh directory created.'
else
        echo '.zsh directory already exists.'
fi

# Check if .vimrc exists and create symlink if not
if ! [[ -f ~/.vimrc ]]; then
        ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
    echo '.vimrc installed.'
else
        echo '.vimrc already installed.'
fi

# Check if .gitconfig exists and create symlink if not
if ! [[ -f ~/.gitconfig ]]; then
    ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
    echo '.gitconfig installed.'
else
    echo '.gitconfig already installed.'
fi

# Check if ~/.vim/autoload directory exists, create it if not
if ! [[ -d ~/.vim/autoload ]]; then
    mkdir -p ~/.vim/autoload
    echo '.vim/autoload directory created.'
else
    echo '.vim/autoload directory already exists.'
fi

# Create symlink for plug.vim in the autoload directory
if ! [[ -f ~/.vim/autoload/plug.vim ]]; then
    ln -s ~/.dotfiles/vim/plug.vim ~/.vim/autoload/plug.vim
    echo 'plug.vim symlink created in ~/.vim/autoload.'
else
    echo 'plug.vim symlink already exists in ~/.vim/autoload.'
fi

# Ensure vim-plug is installed
VIM_PLUG_PATH="$HOME/.vim/autoload/plug.vim"
if [ ! -f "$VIM_PLUG_PATH" ]; then
  echo "Installing vim-plug..."
  curl -fLo "$VIM_PLUG_PATH" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
  echo "vim-plug is already installed."
fi

# Define the plugins
VIMRC="$HOME/.vimrc"

# Add plugins to .vimrc
echo "Configuring Vim with plugins..."

cat <<EOL >> "$VIMRC"

" vim-plug section
call plug#begin('~/.vim/plugged')

" Fuzzy Finder for efficient file searching
Plug 'junegunn/fzf.vim'

" File tree explorer
Plug 'preservim/nerdtree'

" Lightweight status line
Plug 'vim-airline/vim-airline'

" Additional airline themes
Plug 'vim-airline/vim-airline-themes'

" Git integration
Plug 'tpope/vim-fugitive'

" Autocomplete engine (like VS Code)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Commenting support
Plug 'scrooloose/nerdcommenter'

" Lightweight alternative to vim-airline
Plug 'itchyny/lightline.vim'

" Automatically closes pairs (braces, quotes)
Plug 'jiangmiao/auto-pairs'

" Go language support
Plug 'fatih/vim-go'

" Polyglot support for multiple languages
Plug 'sheerun/vim-polyglot'

call plug#end()
EOL

# Install the plugins
echo "Running PlugInstall to install plugins..."
vim +PlugInstall +qall

echo "Vim plugins installed successfully."
