export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="kphoen"

CASE_SENSITIVE="true"

zstyle ':omz:update' mode auto # update automatically without asking

plugins=(git tmux virtualenv zsh-navigation-tools podman uv)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

alias l='ls -alh'

. "$HOME/.cargo/env"

# for NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
