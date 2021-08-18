#!/bin/bash

# ====================================
# setup.sh
# 
# Sets up preferred Linux command line environment:
# .bashrc & .profile
# .vimrc & vim plugins
# .tmux.conf & tmux plugins

# after cloning dotfiles, copy this script into home & run

# ====================================

# bash stuff
cp dotfiles/.profile ~/.profile
cat dotfiles/.bashrc_additions >> ~/.bashrc
source ~/.bash_profile
source ~/.bashrc


# vim stuff
cp dotfiles/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


# tmux stuff
cp dotfiles/.tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


