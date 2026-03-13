#!/bin/sh

PROMPT='%1~$ '

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

eval "$(mise activate zsh)"
eval "$(zoxide init zsh)"
eval "$(sheldon source)"

export PATH="$PATH:/usr/bin/"
export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:/opt/homebrew/bin/"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/opt/homebrew/opt/openjdk/bin"
export PATH="$PATH:/opt/homebrew/opt/openjdk@21/bin"

alias ...='../../'
alias ....='../../../'
alias .....='../../../../'

alias -g G='| grep'
alias -g F='| fzf'
alias -g X='| xargs'
alias -g L='| less'
alias -g P='| pbcopy'

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
alias grh='git reset --hard'
alias grs='git reset --soft'
alias gs='git status'

gcm() {
  git commit -m "$*"
}

cmg() {
  if git diff --cached --quiet; then
    echo "No staged changes"
    return 1
  fi

  diff=$(git diff --cached)

  # Avoid huge prompts
  if [ ${#diff} -gt 120000 ]; then
    diff=$(git diff --cached --stat)
  fi

  {
    echo "Write a concise one-line Git commit message describing this change."
    echo "Use an imperative sentence."
    echo "Do not use conventional commit style."
    echo "Return only the message."
    echo
    echo "Diff:"
    echo "$diff"
  } | codex exec - 2>/dev/null
}


alias tf='terraform'
alias unzip="/opt/homebrew/opt/unzip/bin/unzip"

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
