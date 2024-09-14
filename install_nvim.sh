#!/bin/sh

install_nvim() {
    if [ "$(uname)" = "Darwin" ]; then
        # macOS
        echo "Detected macOS, using Homebrew"
        brew install neovim
    elif [ "$(uname -s)" = "Linux" ]; then
        echo "Detected Linux using apt"
        sudo apt update
        sudo apt install -y neovim
    fi
}

install_nvim
cp nvim ~/.config
