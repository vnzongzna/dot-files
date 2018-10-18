source /home/homuncculus/.antigen.zsh
source /home/homuncculus/.local/bin/virtualenvwrapper.sh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh)
# antigen bundle Tarrasch/zsh-autoenv
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Fish-like auto suggestions
# antigen bundle zsh-users/zsh-autosuggestions

# Extra zsh completions
antigen bundle zsh-users/zsh-completions

# Load the theme
antigen theme oxide 

# Tell antigen that you're done
antigen apply

# if [[ -n $SSH_CONNECTION ]]; then
#    export EDITOR='vi'
#  else
#    export EDITOR='nvim'
#  fi

# COMPLETION_WAITING_DOTS="true"

zstyle ':completion:*' rehash true
autoload -U compinit && compinit
set -o noclobber

#Aliases
source ~/.aliases

#Exports
source ~/.exports

#Functions
source ~/.functions
