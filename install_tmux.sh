#!/bin/sh

install_tmux() {
    if [ "$(uname)" = "Darwin" ]; then
        # macOS
        echo "Detected macOS, using Homebrew."
        brew install tmux
    elif [ "$(uname -s)" = "Linux" ]; then
        echo "Detected Linux using apt"
        sudo apt update
        sudo apt install -y tmux
    fi
}

install_tmux
cp /tmux/.tmux.conf ~/.tmux.conf
