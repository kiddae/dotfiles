set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap
set nu
set rnu
set cursorline
set showcmd

syntax enable 
set noshowmode
set so=7
set cmdheight=1
set ruler
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
set autochdir

set noerrorbells
set visualbell

set encoding=utf8
set termguicolors



call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:gruvbox_italic=1
colorscheme gruvbox

let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'

""Custom binds
set timeout timeoutlen=1000 ttimeoutlen=10
inoremap jk <Esc>

""Autocmd
autocmd BufWritePost *.tex !pdflatex %
