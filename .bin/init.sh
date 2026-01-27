#!/bin/sh

if [ "$(uname)" != "Darwin" ]; then
  echo "Not macOS!"
  exit 1
fi

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
