# WSL Ubuntu-22.04 Commands
## Start Commands
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
sudo apt install zsh -y
sudo snap install go --classic
sudo snap install nvim --classic
```

## Install zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
## Add autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
```
plugins=( 
    # other plugins...
    zsh-autosuggestions
)
```
## Add powerlevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.

## Rest of commands
```
echo 'export PATH="/snap/bin:$PATH"' >> ~/.zshrc

sudo apt install exa
echo "alias ls='exa --icons -F'" >> .zshrc

git clone git://github.com/wting/autojump
cd autojump
./install.py
cd
echo "[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh" >> .zshrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
nvm install 20.11.0
nvm use 20.11.0

mkdir .config
cd .config
git clone https://github.com/Vyary/nvim.git
nvim .
```
