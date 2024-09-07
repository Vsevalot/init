sudo apt update
sudo apt install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Set ZSH_THEME in .zshrc
sed -i 's/^ZSH_THEME=.*$/ZSH_THEME="avit"/' ~/.zshrc || echo 'ZSH_THEME="avit"' >> ~/.zshrc
# Add plugins to .zshrc
sed -i 's/^plugins=(.*)$/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc || echo 'plugins=(git zsh-syntax-highlighting zsh-autosuggestions)' >> ~/.zshrc
# Source .zshrc to apply the changes
source ~/.zshrc
