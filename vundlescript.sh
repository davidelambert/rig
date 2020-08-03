#!/bin/bash

# Run after copying dotfiles/.vimrc into ~

# Clone Vundle repo into user's .vim directory, creating if necessary
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install plugins listed in .vimrc
vim +PluginInstall +qall
