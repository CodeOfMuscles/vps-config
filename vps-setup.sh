#!/bin/bash

#### Updating packegs 
sduo apt update -y


####tools installing section
sudo apt install curl
sudo apt install nmap
sudo apt install aircrack-ng
sudo apt install wpscan
sudo apt install dirsearch
sudo apt install nikto
sudo apt install neofetch
sudo apt install nano
sudo apt install git
sudo apt install sublist3r
sudo apt install john
sudo apt install traceroute
sudo apt install sqlmap

########################### zsh installing section
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Change default shell to Zsh (will require logout to take effect)
chsh -s $(which zsh)
# Install Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd font
./install.sh
cd ..
rm -rf fonts
# Install autocomplete and syntax highlighting plugins for Zsh
sudo apt-get install -y zsh-autosuggestions zsh-syntax-highlighting
# Customize .zshrc for Kali-like appearance and functionality
cat << 'EOF' >> ~/.zshrc
ZSH_THEME="agnoster"
# Enable Zsh Autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Enable Zsh Syntax Highlighting (must be last in the sourcing sequence)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Custom Aliases
alias ll='ls -la'
alias nmap='sudo nmap'
alias msfconsole='sudo msfconsole'
EOF
# Install additional utilities
sudo apt-get install -y htop tmux
# Apply the changes
exec zsh
rm /home/kaliofmylaptop/README-cloudshell.txt
##########################################################
