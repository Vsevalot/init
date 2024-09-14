install_zsh() {
    if [ "$(uname)" = "Darwin" ]; then
        # macOS
        echo "Detected macOS, using Homebrew"
        brew install zsh 
    elif [ "$(uname -s)" = "Linux" ]; then
        echo "Detected Linux using apt"
        sudo apt update
        sudo apt install -y zsh 
    fi
}


install_zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Set ZSH_THEME in .zshrc
sed -i 's/^ZSH_THEME=.*$/ZSH_THEME="avit"/' ~/.zshrc || echo 'ZSH_THEME="avit"' >> ~/.zshrc
# Add plugins to .zshrc
curl https://github.com/zsh-users/zsh-syntax-highlighting/archive/master.zip \
    -L -o "zsh-syntax-highlighting.zip" \
    && unzip "zsh-syntax-highlighting.zip" \
    && rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
    && mv "zsh-syntax-highlighting-master" ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
    && rm "zsh-syntax-highlighting.zip"

curl https://github.com/zsh-users/zsh-autosuggestions/archive/master.zip \
    -L -o "zsh-autosuggestions.zip" \
    && unzip "zsh-autosuggestions.zip" \
    && rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
    && mv "zsh-autosuggestions-master" ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
    && rm "zsh-autosuggestions.zip"

sed -i 's/^plugins=(.*)$/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc || echo 'plugins=(git zsh-syntax-highlighting zsh-autosuggestions)' >> ~/.zshrc
