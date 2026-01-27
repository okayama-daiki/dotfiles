#!/bin/sh

eval "$(mise activate zsh)"
eval "$(zoxide init zsh)"
eval "$(sheldon source)"

export PATH="$PATH:/usr/bin/"
export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:/opt/homebrew/bin/"
export PATH="$PATH:$HOME/.local/bin"

# python alias
alias py='python3'
alias python='python3'
alias pip='pip3'

# git alias
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gf='git fetch'
alias gll='git log --oneline'
alias gp='git push'
alias gpf='git push --force'
alias gr='git rebase'
alias gs='git status'

gcm() {
  git commit -m "$*"
}

alias g='gcloud'
alias tf='terraform'

autoload -U zmv

# utility functions

take() {
  mkdir -p $1 && cd $1
}

randstr() {
  local len=${1:-16}
  cat /dev/urandom | base64 | tr -dc '0-9a-zA-Z' | head -c"$len"
  echo
}

lower() {
  # Usage:
  #   echo "HELLO" | lower
  #   lower "HELLO WORLD"
  if [ -t 0 ]; then
    echo "$*" | tr '[:upper:]' '[:lower:]'
  else
    tr '[:upper:]' '[:lower:]'
  fi
}

upper() {
  # Usage:
  #   echo "hello" | upper
  #   upper "hello world"
  if [ -t 0 ]; then
    echo "$*" | tr '[:lower:]' '[:upper:]'
  else
    tr '[:lower:]' '[:upper:]'
  fi
}

alias unzip="/opt/homebrew/opt/unzip/bin/unzip"

alias gcl="golangci-lint"
