#!/bin/bash

# now runs in-place:
# no need to copy .vimrc or script to ~

# copy local .vimrc to home
cp .vimrc ~
# Clone Vundle repo into user's .vim directory, creating if necessary
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install plugins listed in .vimrc
vim +PluginInstall +qall
