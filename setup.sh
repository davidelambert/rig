#!/bin/bash

# ====================================
# setup.sh
# 
# Sets up preferred Linux command line environment
# with .bashrc, .bash_profile, .vimrc + vim plugins,
# .tmux.conf & tmux plugins

# after cloning dotfiles, copy this script into home & run

# ====================================

# bash stuff
cp dotfiles/.bash_profile ~/.bash_profile
cat dotfiles/.bashrc_additions >> ~/.bashrc


# vim stuff
cp dotfiles/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


# tmux stuff
cp dotfiles/.tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

