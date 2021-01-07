
""Plug
call plug#begin(stdpath('data') . '/plugged')
"color
Plug 'morhetz/gruvbox'
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
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

"status lines
"Plug 'bling/vim-bufferline'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

"completion
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"misc
Plug 'thaerkh/vim-indentguides'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
"Plug 'wfxr/minimap.vim'
Plug 'sheerun/vim-polyglot'
"Plug 'Xuyuanp/scrollbar.nvim'
Plug 'lilydjwg/colorizer'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'glepnir/dashboard-nvim'
"Plug 'mhinz/vim-startify'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
"Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
"Plug 'skywind3000/asyncrun.vim'
call plug#end()

"Misc options
let g:limelight_paragraph_span = 1
"augroup ScrollbarInit
"  autocmd!
"  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
"  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"  autocmd WinLeave,BufLeave,FocusLost    * silent! lua require('scrollbar').clear()
"augroup end
let g:minimap_auto_start = 1
let g:colorizer_nomap = 1
