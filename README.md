# WSL Ubuntu-22.04 Commands
```
sudo apt update && sudo apt upgrade -y
sudo apt install build-essential -y
sudo apt install git
sudo apt install curl
sudo apt install unzip
sudo apt install gzip
sudo apt install make
sudo apt install python3.10-venv -y
sudo apt install npm
sudo snap install go --classic
sudo snap install nvim --classic

sudo apt install exa
echo "alias ls='exa --icons -F'" >> .bashrc

git clone git://github.com/wting/autojump
cd autojump
./install.py
cd
echo "[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh" >> .bashrc

sudo apt install bash-completion
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install 20.11.0
nvm use 20.11.0

mkdir .config
cd .config
git clone https://github.com/Vyary/nvim.git
nvim .
```
