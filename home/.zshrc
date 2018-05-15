. ~/.antigen/antigen.zsh

# Add local completions. compinit is called by antigen already
fpath+=~/.local/zsh

# Install plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search

# Ensure all dependencies are installed
antigen apply

# Load my theme
. ~/.local/zsh/cqql.zsh

# Use emacs bindings on the command line
bindkey -e

# Do not get in my way, when I type
unsetopt correct

# Do not block on Ctrl-S
stty -ixon

# Uniquify history
setopt HIST_IGNORE_ALL_DUPS

# Use substring search
bindkey -M emacs "^P" history-substring-search-up
bindkey -M emacs "^N" history-substring-search-down

. ~/.zsh/aliases.zsh
