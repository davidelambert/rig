#!/bin/bash

# neovim_setup.sh
# run with sudo

apt update
apt install curl gcc g++ make build-essential
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
apt update
apt install nodejs 
if [ ! -d "~/.config/nvim/" ] ; then
    mkdir ~/.config/nvim/
fi
cp ~/rig/.config/nvim/init.vim ~/.config/nvim/
if [ ! -d "~/.local/share/nvim/sire/pack/coc/start" ]; then
    mkdir -p ~/.local/share/nvim/site/pack/coc/start
fi
cd ~/.local/share/nvim/site/pack/coc/start
git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1
nvim -c "helptags coc.nvim/doc/ | q"
nvim +"CocInstall coc-json coc-tsserver coc-jedi coc-sh coc-css coc-html coc-texlab coc-markdownlint" +qa
