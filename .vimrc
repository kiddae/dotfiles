syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set encoding=utf8
set mouse=a
set showcmd
set autochdir
set lazyredraw

set cmdheight=2
set updatetime=300

""Plug
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
Plug 'ryanoasis/vim-devicons'
Plug 'Jorengarenar/vim-darkness'
""Plug 'itchyny/lightline.vim'
call plug#end()


""colorscheme
set background=dark
let g:gruvbox_italic=1
colorscheme darkness

""lightline
set noshowmode
set laststatus=2
let g:lightline = {}
let g:lightline.colorscheme = 'Nord'

""airline config
let g:airline_powerline_fonts = 1
let g:airline_theme = 'monochrome'
let g:airline_base16_monotone = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

""netrw config
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_winsize = 25
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+'
autocmd FileType netrw set nolist


""Custom binds
let mapleader = " "
set timeout timeoutlen=1000 ttimeoutlen=10
inoremap jk <Esc>
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gf :YcmCompleter FixIt<CR>
nnoremap <leader>o :Lex<CR>
nnoremap <leader>t :tabnew<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>= :winc =<CR>

""Autocmd
autocmd BufWritePost *.tex !pdflatex %

""Templates
if has("autocmd")
    augroup templates
        autocmd BufNewFile *.tex 0r ~/.vim/templates/skeleton.tex
        autocmd BufNewFile main.cpp 0r ~/.vim/templates/main.cpp
        autocmd BufNewFile *.h 0r ~/.vim/templates/skeleton.h
    augroup END
endif
