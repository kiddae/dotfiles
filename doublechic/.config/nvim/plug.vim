
""Plug
call plug#begin(stdpath('data') . '/plugged')
"color
Plug 'rose-pine/neovim'
Plug 'morhetz/gruvbox'
Plug 'rayes0/blossom.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'chriskempson/base16-vim'
Plug 'noahfrederick/vim-noctu'
Plug 'ulwlu/elly.vim'
Plug 'joshdick/onedark.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'cocopon/iceberg.vim'
Plug 'sickill/vim-monokai'
Plug 'tomasr/molokai'
Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'arcticicestudio/nord-vim'
Plug 'Jorengarenar/vim-darkness'
Plug 'sainnhe/forest-night'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

"status lines
"Plug 'bling/vim-bufferline'
"Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'romgrk/barbar.nvim'
"Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons' "dependency of barbar
Plug 'itchyny/lightline.vim'
"Plug 'mengelbrecht/lightline-bufferline'

"completion
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"misc
Plug 'ryanoasis/vim-devicons'
Plug 'thaerkh/vim-indentguides'
Plug 'jiangmiao/auto-pairs'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'tpope/vim-fugitive'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'lilydjwg/colorizer'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
"Plug 'mhinz/vim-startify'
Plug 'glepnir/dashboard-nvim'
"Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'skywind3000/asyncrun.vim'
call plug#end()

"Misc options
let g:limelight_paragraph_span = 1
let g:colorizer_nomap = 1
let bufferline = {}
let bufferline.auto_hide = v:false
"let bufferline.icons = v:false
let g:rose_pine_disable_background = v:false
let g:rose_pine_variant = 'base'
