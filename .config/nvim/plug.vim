
""Plug
call plug#begin(stdpath('data') . '/plugged')
"color
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'arcticicestudio/nord-vim'
Plug 'Jorengarenar/vim-darkness'
Plug 'sainnhe/forest-night'

"status lines
Plug 'bling/vim-bufferline'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
""Plug 'itchyny/lightline.vim'

"completion
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"misc
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'lilydjwg/colorizer'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
"Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
"Plug 'skywind3000/asyncrun.vim'
call plug#end()

"Misc options
let g:limelight_paragraph_span = 1
