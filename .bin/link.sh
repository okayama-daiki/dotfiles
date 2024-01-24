#!/bin/sh

# dotfiles
for it in ".zshrc" ".vimrc" ".gitconfig"; do
  ln -sf ~/dotfiles/$it ~/$it
done

# dotdirectories
for it in ".config"; do
  if [ ! -L ~/$it ]; then
    ln -sf ~/dotfiles/$it ~/$it
  fi
done

# VSCode files
for it in "settings.json" "keybindings.json"; do
  ln -sf ~/dotfiles/.vscode/$it ~/Library/Application\ Support/Code/User/$it
done

# VSCode directories
for it in "snippets"; do
  if [ ! -L ~/Library/Application\ Support/Code/User/$it ]; then
    ln -sf ~/dotfiles/.vscode/$it ~/Library/Application\ Support/Code/User/$it
  fi
done
