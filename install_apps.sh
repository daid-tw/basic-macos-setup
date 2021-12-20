#!/bin/bash

replace=""
file="install_apps.sh"
cd ${0/$file/$replace}

echo "----------"
#Install proxy on terminal. (bash or zsh)
sh ./install_proxy.sh
clear

#Reopen terminal on same instance.
source ~/.zshrc
source ~/.bashrc
source ~/.bash_profile

#Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#Install bundle
brew tap Homebrew/bundle
#Install all apps in Brewfile
brew bundle

#Installing code command on path
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

#Refresh terminal
source ~/.zshrc
source ~/.bashrc
source ~/.bash_profile

#Install vscode extensions
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.vscode-node-azure-pack
code --install-extension formulahendry.docker-explorer
code --install-extension ms-vscode-remote.remote-containers
code --install-extension eamodio.gitlens
