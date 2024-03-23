#!/bin/sh

sudo apt update && sudo apt upgrade -y

sudo apt-get install build-essential

sudo apt install zsh -y

chsh -s $(which zsh)

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

sudo apt update

sudo apt install gh

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

sudo rm -rf /opt/nvim

sudo tar -C /opt -xzf nvim-linux64.tar.gz

echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >>  ~/.zshrc

git clone --depth 1 https://github.com/lfals/nvim ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

