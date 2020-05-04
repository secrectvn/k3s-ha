#!/bin/bash
# Basic Application
sudo apt install git curl unzip htop flameshot curl -y 

### Install Brave
sudo apt install apt-transport-https -y && \
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - && \
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list && \
sudo apt update && \
sudo apt install brave-browser -y 

### Install Ibus-Bamboo
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo -y && \
sudo apt-get update && \
sudo apt-get install ibus-bamboo && \
ibus restart

### Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
sudo dpkg -i google-chrome-stable_current_amd64.deb && \
rm google-chrome-stable_current_amd64.deb

### Install Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - && \
sudo apt-get install apt-transport-https -y && \
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list && \
sudo apt-get update && \
sudo apt-get install sublime-text -y

### Install Typora's repository
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add - && \
sudo add-apt-repository 'deb https://typora.io/linux ./' && \
sudo apt-get update && \
sudo apt-get install typora -y


### Install Helm
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

### Install Kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl && \
chmod +x ./kubectl && \
sudo mv ./kubectl /usr/local/bin/kubectl


### Install Atom IDE
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom
