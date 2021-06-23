:: vundlescript.bat
:: windows version - run from home dir

:: copy vimrc
cp .\dotfiles\.vimrc .\_vimrc

:: clone Vundle 
git clone https://github.com/VundleVim/Vundle.vim.git .\.vim\bundle\Vundle.vim

:: install Vundle packages
vim +PluginInstall +qall
