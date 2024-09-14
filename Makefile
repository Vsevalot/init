# Define variables for the script file paths
ZSH_INSTALL = ./install_zsh.sh
NVIM_INSTALL = ./install_nvim.sh
TMUX_INSTALL = ./install_tmux.sh

# Default target: runs all three install scripts
.PHONY: all zsh nvim tmux

all: zsh nvim tmux

# Targets for individual installations
zsh:
	@echo "Installing zsh with plugins..."
	@bash $(ZSH_INSTALL)

nvim:
	@echo "Installing nvim with plugins..."
	@bash $(NVIM_INSTALL)

tmux:
	@echo "Installing tmux with plugins..."
	@bash $(TMUX_INSTALL)
