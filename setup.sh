sudo apt update
sudo apt upgrade

# -------- ZSH --------------------------

# Install zsh
sudo apt install git wget curl xclip -y
sudo apt install zsh -y

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy settings

# -------- GNOME Settings ---------------

# Install tweaks and gnome extensions
sudo apt install gnome-tweaks -y
sudo apt install gnome-shell-extensions -y

# Go to gnome extensions in browser
: ' 
blur my shell
openweather
AppIndicator and KStatusNotifierItem Support 
Vitals
[QSTweak] Quick Setting Tweaker 
'

# Load gnome settings
dconf load / < dconf-settings.ini

# -------- Flatpack -------------


# Install flatpack --> See also https://flatpak.org/setup/Ubuntu
sudo apt install flatpak -y
# Install gnome software plugin
sudo apt install gnome-software-plugin-flatpak
# Add flatpak repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install firefox as flatpak .deb package
# https://linuxiac.com/install-firefox-from-deb-on-ubuntu-22-04-lts/
# https://www.omgubuntu.co.uk/2022/04/how-to-install-firefox-deb-apt-ubuntu-22-04

# ----------- TOOLS / SOFTWARE ----------------

# Firewall
sudo systemctl enable ufw
# Graphical client for firewall
sudo apt install gufw

# Utilities
sudo apt install vscode neofetch htop rocketchat notepadqq thunderbird wireguard resolvconf virtualbox -y

# vscode with deb
# Rocketchat with deb
# OnlyOffice with deb

# Software Store
:'
chrome
edge
'

# Wireguard Client GUI
wget https://github.com/UnnoTed/wireguird/releases/download/v1.0.0/wireguird_amd64.deb
sudo dpkg -i ./wireguird_amd64.deb

# Open with vscode in nautilus context menu
wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh | bash

# ---------- SDKs ----------

# Install pyenv 
# Install nvm


# Remove default links from nautilus: https://duckduckgo.com/?t=ffab&q=ubuntu+open+nautilus+from+terminal&ia=webhome

# New vscode / Firefox link for different profiles
nano ~/.local/share/applications/firefox-NAME.desktop
: ' 
[Desktop Entry]
Encoding=UTF-8
Name=Firefox Privat
Exec=firefox -P Privat --name PrivatFirefox %u
Icon=/home/avogel/Pictures/Icons/Firefox_Nightly_logo,_2019.svg.png
Type=Application
StartupNotify=True
StartupWMClass=PrivatFirefox
'


