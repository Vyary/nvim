# WSL Ubuntu-22.04 Commands
## Install Windows Terminal && Ubuntu
## Install https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
## Windows Terminal Colorscheme:
```
{
  "name": "Catppuccin Macchiato",
  "black": "#494d64",
  "red": "#ed8796",
  "green": "#a6da95",
  "yellow": "#eed49f",
  "blue": "#8aadf4",
  "purple": "#f5bde6",
  "cyan": "#8bd5ca",
  "white": "#b8c0e0",
  "brightBlack": "#5b6078",
  "brightRed": "#ed8796",
  "brightGreen": "#a6da95",
  "brightYellow": "#eed49f",
  "brightBlue": "#8aadf4",
  "brightPurple": "#f5bde6",
  "brightCyan": "#8bd5ca",
  "brightWhite": "#b8c0e0",
  "background": "#24273a",
  "foreground": "#cad3f5",
  "selectionBackground": "#5b6078",
  "cursorColor": "#f4dbd6"
}
```

## Install zsh
```
sudo apt update && sudo apt upgrade -y
sudo apt install build-essential -y
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
## Add autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
```
plugins=( 
    git
    zsh-autosuggestions
    z
)
```
## Add powerlevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
## Commands
```
sudo apt install git
sudo apt install curl
sudo apt install unzip
sudo apt install gzip
sudo apt install make
sudo apt install gcc
sudo apt install xclip
sudo apt install ripgrep
sudo apt install python3.10-venv -y
sudo apt install npm
sudo snap install go --classic
sudo snap install nvim --classic
```
## Rest of commands
```
echo 'export PATH="$PATH:/snap/bin"' >> ~/.zshrc

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
