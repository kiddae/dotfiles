
""Custom binds
let mapleader = " "
set timeout timeoutlen=1000 ttimeoutlen=10
inoremap jk <Esc>
""inoremap <C-c> <Esc>
inoremap <C-c> <Nop>
nnoremap <leader>o :Files<CR>
nnoremap <leader>O :Files $HOME<CR>
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>w :wincmd w<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>> :vertical resize >5<CR>
nnoremap <leader>< :vertical resize <5<CR>
nnoremap <leader>= :winc =<CR>

nnoremap <S-tab> :bprev<CR>
nnoremap <tab> :bnext<CR>
nnoremap <leader>q :bdelete<CR>
nnoremap <leader>n :enew<CR>

nnoremap Y y$

tnoremap <Esc> <C-\><C-N>

autocmd FileType tex nnoremap <buffer> <F4> :w<CR>:!pdflatex % -output-directory %:p:h<CR>
autocmd FileType {markdown,pandoc} nnoremap <buffer> <F4> :w<CR>:!pandoc % -o %:p:r.pdf<CR>
autocmd FileType rmd nnoremap <buffer> <F4> :w<CR>:!R -e "rmarkdown::render('%',output_dir='%:p:h')"<CR>
autocmd FileType cpp nnoremap <buffer> <F4> :w<CR>:!make<CR>
autocmd FileType java nnoremap <buffer> <F4> :w<CR>:!javac %<CR>

autocmd FileType {rmd,tex,markdown,pandoc} nnoremap <buffer> <F5> :w<CR>:!setsid -f zathura '%:p:r.pdf'<CR>
autocmd FileType python nnoremap <buffer> <F5> :w<CR>:!urxvt -hold -e python3 % & disown<CR>
autocmd FileType java nnoremap <buffer> <F5> :w<CR>:!urxvt -hold -e java % & disown<CR>
autocmd FileType cpp nnoremap <buffer> <F5> :w<CR>:!urxvt -hold -e make run & disown<CR>

autocmd FileType python nnoremap <buffer> <F6> :w<CR>:!urxvt -hold -e python3 -i % & disown<CR>
