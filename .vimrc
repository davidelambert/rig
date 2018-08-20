" Vundle stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugins
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax' 
Plugin 'townk/vim-autoclose'
Plugin 'Markdown'
Plugin 'Markdown-syntax'
Plugin 'MarkdownFootnotes'

" All plugins go before this line
filetype plugin indent on
" End of Vundle

" Look & Feel
syntax on
set autoread
set number
set ruler
set visualbell
set modelines=0
set encoding=utf-8
set ttyfast
set laststatus=2
set showmode
set tabstop=4
set expandtab
set showmatch
set linespace=2
set breakindent
colorscheme elflord
