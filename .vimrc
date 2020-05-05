set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap
set nu

syntax enable 
set laststatus=2
set noshowmode
set so=7
""set ruler
set cmdheight=1
set hid
set foldcolumn=1

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2

set noerrorbells
set visualbell

set background=dark
set encoding=utf8



call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dylanaraps/wal'
call plug#end()

colorscheme nord

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
