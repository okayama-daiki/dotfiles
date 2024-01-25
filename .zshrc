#!/bin/sh

export PATH="$PATH:/usr/bin/"
export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:/opt/homebrew/bin/"
export PATH="$PATH:~/.local/bin"

# python alias
alias py='python3'
alias python='python3'

# git alias
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias gm='git merge'
alias gp='git push'
alias gpl='git pull'
alias gr='git rebase'
alias grh='git reset --hard'
alias gri='git rebase -i'
alias gs='git status'

# npm alias
alias dev='npm run dev'

autoload -U zmv

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
