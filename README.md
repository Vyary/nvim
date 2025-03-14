# Ultimate WSL Setup Guide

## 1. Install Zsh

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install build-essential -y
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 2. Add Autosuggestions

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):

```bash
plugins=( 
    git
    zsh-autosuggestions
    z
)
```

## 3. Add Powerlevel10k Theme

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`.

## 4. Install Essential Packages

```bash
sudo apt install curl -y
sudo apt install make -y
sudo apt install npm -y 
sudo apt install unzip -y
sudo apt install xclip -y
sudo apt install ripgrep -y
sudo apt install wrk -y
```

## 5. Install Go

Download and install Go manually:

- [Go Installation Guide](https://go.dev/doc/install)

Run the following commands:

```bash
wget https://go.dev/dl/go1.24.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.24.1.linux-amd64.tar.gz
```

Add Go to your `PATH`:

```bash
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

## 6. Install Neovim

Download and install Neovim:

- [Neovim Installation Guide](https://github.com/neovim/neovim/blob/master/INSTALL.md)

Run the following commands:

```bash
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar xzvf nvim-linux-x86_64.tar.gz
./nvim-linux-x86_64/bin/nvim
```

Add Nvim to your `PATH`:

```bash
echo 'export PATH="$HOME/nvim-linux-x86_64/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

## 7. Configure Neovim

```bash
mkdir -p ~/.config
cd ~/.config
git clone https://github.com/Vyary/nvim.git
nvim .
```
