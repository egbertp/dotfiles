# Enable persistent history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

# Configure the push directory stack (most people don't need this)
# setopt AUTO_PUSHD
# setopt PUSHD_IGNORE_DUPS
# setopt PUSHD_SILENT

# # Emacs keybindings
# bindkey -e
# # Use the up and down keys to navigate the history
# bindkey "\e[A" history-beginning-search-backward
# bindkey "\e[B" history-beginning-search-forward

# Move to directories without cd
setopt autocd

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/egbert/.docker/completions $fpath)

# Case-insensitive completion
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# Case-insensitive (all), partial-word and substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Initialize completion
# autoload -Uz compinit
autoload -U compinit; compinit

# The most important aliases ever (the only thing I borrowed from OMZ)
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'

export ASDF_DATA_DIR="/Users/egbert/.asdf"
export PATH="$ASDF_DATA_DIR/shims:$PATH"

export PATH="/opt/homebrew/opt/libpq/bin:/usr/local/bin:$PATH"
export TERM=xterm-256color
export GPG_TTY=$(tty)

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up zoxide to move between folders efficiently
eval "$(zoxide init zsh)"

# Set up the Starship prompt
eval "$(starship init zsh)"
