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
set undodir=~/.vim/undodir
set undofile
set incsearch
set encoding=utf8
set mouse=a
set showcmd
set lazyredraw
set exrc
set secure
set wildmenu
set so=12
set termguicolors
set cursorline

set cmdheight=1
set updatetime=300

""Plug
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'Jorengarenar/vim-darkness'
Plug 'sainnhe/forest-night'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ycm-core/YouCompleteMe'
""Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
""Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()


""colorscheme
set background=dark
let g:gruvbox_italic=1
""let g:gruvbox_termcolors=16
colorscheme gruvbox

""lightline
set noshowmode
set laststatus=2
let g:lightline = {}
let g:lightline.colorscheme = 'Nord'

""airline config
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = "unique_tail"
""let g:airline_left_sep = ''
""let g:airline_left_alt_sep = ''
""let g:airline_right_sep = ''
""let g:airline_right_alt_sep = ''

""netrw config
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 0
let g:netrw_winsize = 25

""Misc
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0

""Custom binds
let mapleader = " "
set timeout timeoutlen=1000 ttimeoutlen=10
""inoremap jk <Esc>
inoremap <C-c> <Esc>
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gf :YcmCompleter FixIt<CR>
nnoremap <leader>o :Files<CR>
nnoremap <leader>O :Files<space>
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader><C-h> :wincmd h<CR>
nnoremap <leader><C-j> :wincmd j<CR>
nnoremap <leader><C-k> :wincmd k<CR>
nnoremap <leader><C-l> :wincmd l<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>= :winc =<CR>
nnoremap <leader>h :bprev<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>bq :bdelete<CR>
nnoremap <leader>n :enew<CR>

nnoremap Y y$

autocmd FileType tex nnoremap <F4> :!pdflatex % -output-directory %:p:h<CR>
autocmd FileType {rmd,tex} nnoremap <F5> :!zathura '%:p:r.pdf' & disown<CR>
autocmd FileType rmd nnoremap <F4> :!R -e "rmarkdown::render('%',output_dir='%:p:h')"<CR>
autocmd FileType cpp nnoremap <F4> :!make<CR>
autocmd FileType python nnoremap <F5> :!python3 %<CR>

""Templates
if has("autocmd")
    augroup templates
        autocmd BufNewFile *.tex 0r ~/.vim/templates/skeleton.tex
        autocmd BufNewFile main.cpp 0r ~/.vim/templates/main.cpp
        autocmd BufNewFile *.h 0r ~/.vim/templates/skeleton.h
    augroup END
endif
