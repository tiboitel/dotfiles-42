# Set up environment
export PATH=/usr/local/bin:$HOME/bin:$PATH

# Enable autocomplete and suggestions
autoload -Uz compinit
compinit -C # Use caching for faster completion

# Auto-load custom scripts (if any exist in ~/.zsh/)
for script in $HOME/.zsh/*.sh; do
  [[ -f $script ]] && source "$script"
done

# Source color theme (ensure script exists and is sourced properly)
if [[ -f ~/.dotfiles/color_theme.sh ]]; then
    source ~/.dotfiles/color_theme.sh
fi

# History settings (save history in a file and share across sessions)
setopt HIST_IGNORE_DUPS      # Don't write duplicate commands
setopt HIST_IGNORE_SPACE     # Ignore commands that start with space
setopt HIST_REDUCE_BLANKS    # Remove extra spaces
setopt HIST_SAVE_NO_DUPS     # Save history without duplicates

HISTFILE=$HOME/.zsh_history
HISTSIZE=5000                # Increase history size for modern use
SAVEHIST=5000
setopt append_history        # Append to history file instead of overwriting

# Fast path handling
setopt AUTO_CD               # Auto change directory on cd
setopt AUTO_PUSHD            # Auto push to the directory stack
setopt AUTO_LIST             # Auto list files on Tab completion

# Enable color support
autoload -U colors && colors

#Enable vcs_info for Git status
# setopt PROMPT_SUBST;
#Enable vcs_info for Git status
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '%F{blue}[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{yellow}[%b|%a]%f'
zstyle ':vcs_info:*' stagedstr ' %F{green}%f'
zstyle ':vcs_info:*' unstagedstr ' %F{red}'

# Custom prompt with vcs_info
precmd() {
    vcs_info
    PS1='%B%(!.#.$)%b %F{cyan}%~%f ${vcs_info_msg_0_-} '
}

# Key bindings
bindkey '^R' history-incremental-search-backward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

# Directory stack navigation
alias back='popd > /dev/null'

# Aesthetic tweaks
export LSCOLORS=Gxfxcxdxbxegedabagacad  # Enable nice directory colors (for ls)

# Aliases
alias ls="ls --color=auto"
alias ll='ls -lh'
alias la='ls -lA'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vi='vim'
alias ..='cd ..'
alias ...='cd ../..'

# Editor
export EDITOR='vim'

# Enable auto-correction
setopt correct

# Do not print unnecessary startup messages
unsetopt MAIL_WARNING

# Handle temporary directories for better security and performance
export TMPDIR=/tmp
