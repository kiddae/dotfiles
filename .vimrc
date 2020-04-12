set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap

syntax enable 
set laststatus=2
set noshowmode
set so=7
set wildmenu
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

colorscheme desert
set background=dark
set encoding=utf8



call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


