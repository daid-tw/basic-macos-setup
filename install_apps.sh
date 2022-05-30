#!/bin/bash

replace=""
file="install_apps.sh"
cd ${0/$file/$replace}

echo "----------"
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
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.vscode-node-azure-pack
code --install-extension formulahendry.docker-explorer
code --install-extension adashen.vscode-tomcat
code --install-extension ahmadawais.shades-of-purple
code --install-extension alefragnani.Bookmarks
code --install-extension alphabotsec.vscode-eclipse-keybindings
code --install-extension ChakrounAnas.turbo-console-log
code --install-extension chrmarti.regex
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension danielpinto8zz6.c-cpp-compile-run
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.githistory
code --install-extension dracula-theme.theme-dracula
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension Equinusocio.vsc-community-material-theme
code --install-extension Equinusocio.vsc-material-theme
code --install-extension equinusocio.vsc-material-theme-icons
code --install-extension esbenp.prettier-vscode
code --install-extension firsttris.vscode-jest-runner
code --install-extension formulahendry.auto-rename-tag
code --install-extension formulahendry.code-runner
code --install-extension GabrielBB.vscode-lombok
code --install-extension gep13.chocolatey-vscode
code --install-extension getgauge.gauge
code --install-extension golang.go
code --install-extension GraphQL.vscode-graphql
code --install-extension hars.CppSnippets
code --install-extension HookyQR.beautify
code --install-extension icrawl.discord-vscode
code --install-extension jkchao.vs-md-upload-image
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension kamikillerto.vscode-colorize
code --install-extension KuanHulio.discord
code --install-extension mechatroner.rainbow-csv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-dotnettools.csharp
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.js-debug-nightly
code --install-extension ms-vscode.powershell
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension Pivotal.vscode-boot-dev-pack
code --install-extension Pivotal.vscode-concourse
code --install-extension Pivotal.vscode-manifest-yaml
code --install-extension Pivotal.vscode-spring-boot
code --install-extension PKief.material-icon-theme
code --install-extension redhat.java
code --install-extension redhat.vscode-commons
code --install-extension redhat.vscode-xml
code --install-extension redhat.vscode-yaml
code --install-extension RobbOwen.synthwave-vscode
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension shengchen.vscode-checkstyle
code --install-extension slevesque.vscode-zipexplorer
code --install-extension sohibe.java-generate-setters-getters
code --install-extension SonarSource.sonarlint-vscode
code --install-extension teabyii.ayu
code --install-extension tukumo.md-filter
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscjava.vscode-gradle
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test
code --install-extension vscjava.vscode-maven
code --install-extension vscjava.vscode-spring-boot-dashboard
code --install-extension vscjava.vscode-spring-initializr
code --install-extension vscode-icons-team.vscode-icons
code --install-extension wayou.vscode-todo-highlight
code --install-extension whizkydee.material-palenight-theme
code --install-extension wk-j.vscode-httpie
