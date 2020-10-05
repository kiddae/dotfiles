
syntax on

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set nu
set rnu
set smartcase

set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

set incsearch
set encoding=utf8
set mouse=a
set lazyredraw
set updatetime=300

set exrc
set secure

set wildmenu
set so=12
set showcmd
set noshowmode
set cmdheight=1
set termguicolors
"set cursorline
set showtabline=2
autocmd BufEnter * silent! lcd %:p:h

set foldmethod=indent
set foldlevel=99


""colorscheme
set background=dark
let g:gruvbox_italic=1
""let g:gruvbox_termcolors=16
colorscheme mountaineer_light

"set terminal automatically in insert mode
autocmd TermOpen * startinsert

"reset the terminal cursor when leaving
autocmd VimLeave * call set guicursor=a:ver100-blinkon

"spell
autocmd FileType {tex,rmd,md} setlocal spell spelllang=fr,en_us
