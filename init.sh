sudo apt update
sudo apt install zsh unzip -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Set ZSH_THEME in .zshrc
sed -i 's/^ZSH_THEME=.*$/ZSH_THEME="avit"/' ~/.zshrc || echo 'ZSH_THEME="avit"' >> ~/.zshrc
# Add plugins to .zshrc
wget https://github.com/zsh-users/zsh-syntax-highlighting/archive/master.zip \
    -O "zsh-syntax-highlighting.zip" \ 
    && unzip "zsh-syntax-highlighting.zip" \ 
    && mv "zsh-syntax-highlighting-master" ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
    && rm "zsh-syntax-highlighting.zip"

wget https://github.com/zsh-users/zsh-autosuggestions/archive/master.zip \
    -O "zsh-autosuggestions.zip" \ 
    && unzip "zsh-autosuggestions.zip" \ 
    && mv "zsh-autosuggestions-master" ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
    && rm "zsh-autosuggestions.zip"

sed -i 's/^plugins=(.*)$/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc || echo 'plugins=(git zsh-syntax-highlighting zsh-autosuggestions)' >> ~/.zshrc

# Source .zshrc to apply the changes
source ~/.zshrc
