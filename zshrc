# Set up environment
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Enable autocomplete and suggestions
autoload -Uz compinit
compinit

# Color settings 
~/.config/color_theme.sh

# History settings (save history in a file and share across sessions)
HISTFILE=$HOME/.zsh_history
HISTSIZE=1024
SAVEHIST=1024
setopt append_history  # Append to history file instead of overwriting

# Key bindings
bindkey "^R" history-incremential-search-backward

# Aliases
alias ll='ls -lh'
alias la='ls -lA'
alias grep='grep --color=auto'
alias vi='vim'

# Editor
export EDITOR='vim'

# Enable auto-correction
setopt correct

# Auto-load custom scripts (if any)
# for script in $HOME/.zsh/*.sh; do
#  source $script
# done
clear
