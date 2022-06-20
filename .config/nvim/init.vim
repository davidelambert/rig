" vim-plug stuff
" =================
call plug#begin('.local/share/nvim/site/autoload/')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Look & Feel
" ============
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
" shiftwidth & softtabstop inherit tabstop
set shiftwidth=0
set softtabstop=-1
" tab to spaces
set expandtab
set showmatch
set linespace=2
set breakindent
colorscheme elflord

" Enable python
" =============
let g:python3_host_prog = '$PYENV_ROOT/shims/python3'
