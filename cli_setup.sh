#!/bin/bash

# ====================================
# setup.sh
# 
# Sets up preferred Linux command line environment:
# .bashrc & .profile
# .vimrc & vim plugins
# .tmux.conf & tmux plugins

# after cloning configs, copy this script into home & run

# ====================================

# bash stuff
cp configs/.profile ~/.profile
cat configs/.bashrc_additions >> ~/.bashrc
source ~/.profile
source ~/.bashrc


# vim stuff
cp configs/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


# tmux stuff
cp configs/.tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


