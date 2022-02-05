#!/bin/bash

# ====================================
# cli_setup.sh
# 
# Sets up preferred Linux command line environment:
# .bashrc & .profile
# .vimrc & vim plugins
# .tmux.conf & tmux plugins

# copy this script into home & run

# ====================================

# bash stuff
cp rig/.profile ~/
cat rig/.bashrc_additions >> ~/.bashrc
cp rig/.bash_aliases ~/
source ~/.profile


# vim stuff
cp rig/.vimrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


# tmux stuff
cp rig/.tmux.conf ~/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

