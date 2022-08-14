#!/bin/bash

# ====================================
# cli_setup.sh
#
# run from ~/rig/
# ====================================

cp .profile ~/
cp .bash_aliases ~/
cat .bashrc_additions >> ~/.bashrc
cp .tmux.conf ~/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
