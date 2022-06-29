#!/bin/bash

# ====================================
# cli_setup.sh
# 
# Sets up preferred Linux command line environment
# Run with sudo from user's $HOME (not /root/)

# ====================================

cat ./rig/.bashrc_additions >> /root/.bashrc
if ! [ -d "/root/.config/nvim" ] ; then
    mkdir -p /root/.config/nvim
fi
cp ./rig/root/.config/nvim/init.vim /root/.config/nvim/init.vim
